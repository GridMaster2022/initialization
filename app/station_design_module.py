from numpy import NaN
import pandas as pd
from pyecore.resources import ResourceSet, URI
import esdl
import math
import logging
import copy
import pandapower as pp
import os
import threading

if logging.getLogger().hasHandlers():
	logging.getLogger().setLevel(logging.INFO)
else:
	logging.basicConfig(level=logging.INFO,
						format="[%(asctime)s] %(levelname)s [%(name)s.%(funcName)s:%(lineno)d] %(message)s")


class DataPrep:
	"""A class to represent the evolving energy system over the scenario years. This class monitors scenario developments and applies it to the energy system per scenario year.

	...
	
	Attributes
	----------
	gasunie_asset_nodes_relations : Dataframe
		Customer-infrastructure connection relations of the gas network.
	gasunie_invest_paths : Datafame
		Investpath-networkmodel relations over the years for the gas network.
	gasunie_network_ids : Dataframe
		Networkmodel booleans that indicate presence of specific infrastructure pipelines.
	initial_e_design : Dataframe
		Initial customer-infrastructure station relation of the whole electricity network. Additional columns are capacity and trafos (solely used for stations within MV-grid)
	initial_tennet_design : Dataframe
		Initial customer-infrastructure station relation of the HV electricity network. Additional column is trafos.
	initial_stedin_design : Dataframe
		Initial customer-infrastructure station relation of the MV electricity network. Additional column is trafos.
	essim_substations : Dataframe
		Existing MV grid infrastructure stations with capacity and trafos on the columns.
	initial_tennet_stedin_design : Dataframe
		Information about MV grid stations and their connected upstream HV grid station.
	coupling_preference_order : dict
		Geographical regions represented in the keys and stations to connect respective regional customer with in order of preference represented in the values.
	investment_database : Dataframe
		Stores regional investments of the MV electricity grid over all scenario years for the categories (columns): new_station, empty_station (not used), new_line, removed_line, added_trafo and new_150kVline.
	investment_types : list
		Possible investments in the MV electricity infrastructure.
	energy_system : esdl.Instance
		Object that contains details of the energy customers/suppliers and their assets in the energy system in a specific scenario year. 
	stedin_capacities : Dataframe
		Dataframe that contains customer-infrastructure relations for a specific scenario year with clients on the index and with columns : substation, TenneT, capacity (in W) and sector. The substation indicates the connected station. The Dataframe is also stored in the class its attributes. 
		and TenneT represents the respective upstream station.
	strategy_config : dict
		Encludes all fixed parameters for a specific scenario run with parameter as keys and their respective setting in the values.
	threshold25kV : int
		Installed capacity value at which a customers connected to a 25kV station should be re-allocated to its upstream station.
	threshold66kV : int
		Installed capacity value at which a customers connected to a 66kV station should be re-allocated to its upstream station.
	tennet_mapping : dict
		Encludes mappings of MV infrastructure station nodes to HV infrastructure station nodes. These mapping are used to enable further simulation in the specific HV simulation modules.

	Methods
	----------
	initialize_gas(excel_file):
		Constructs initial variables for the gas infrastructure.
	initialize_electricity(excel_file):
		Constructs initial variables for the electricity infrastructure.
	initialize_investment_database():
		Constructs initial Dataframe structure for storage of investments per scenario.
	load_esdl(esdl_file):
		Extracts an instance from the ESDL file.
	init_stedin_tool(stedin_design_rule):
		Constructs initial variables for the electricity infrastructure (2).
	update_available_tennet_stations(network):
		Updates the coupling_preference_order based on existing stations in the network.
	get_network_databases(s3_client, network_id):
		Constructs dataframe with information about the specific network ID from a .sqlite file.
	tennet_dependency_check(network_id, s3_client, stedin_capacities):
		Re-allocates electricity customers above a certain threshold to the upstream 380kV station based on the coupling_preference_order.
	make_client_node_table(energy_system, current_e_design=None):
		Constructs a dataframe of an ESDL.Instance object that contains customer specific data including installed capacity and connected infrastructure station.
	alter_e_sites(energy_system):
		Alters installed electricity capacity, remove- and/or append- (new) clients to the current energy system based on scenario developments.
	alter_e_sites_tennet(energy_system, tennet_capacities): 
		Alters installed electricity capacity, remove- and/or append- (new) clients to the current energy system based on scenario developments. This function is specifically orchestrated in order
		to cope with dependencies from year to year in initialization.py.
	determine_thresholds(thresholds_lever):
		Specifies thresholds for 25kV and 66kV customres based on the active investment strategy.
	set_building_block_size(blocksize_lever):
		Specifies trafo building block size based on the active investment strategy. Note: this function is not used during the simulation.
	set_max_expansion(maxexpansion_lever, building_block_size):
		Specifies maximum expansion based on the active investment strategy. Note: this function is not used during the simulation.
	administrate_investment(investment_type, scenario_year, station=None, old_station=None, capacity=None, added_trafos=None, customer=None):
		Registers regional investments in the MV infrastructure based on the evolving energy system in the investment_database.
	switch_customer(current_station, new_station, customer, capacity, scenario_year):
		Re-allocates a customer to another station and administrates the investment types new_line and removed_line.
	upgrade_station(customer_capacity, current_station_capacity, current_station, scenario_year):
		Determines required expansions based on connected customers capacity, subsequently adds trafo's to station and administrates investment type added_trafo.
	client_capacity_check_stedin(scenario_year):
		Inspects customers their installed capacity and re-allocates them, expands the connected station and/or builds a new station if total value exceeds the respective threshold or station capacity respectively based
		on the active investment strategy.
	expansion_potential_check(essim_substation_next_year, stedin_capacities_next_year, station):
		Inspects station its connected capacity, determines if expansion is required and possible and subsequenlty calculates the required station expansion.
	client_allocation_optimization(station, empty_trafo_slots, remaining_clients, scenario_year, mode=None, old_station=None):
		Determines available capacity at specified station, keeps customers that fit within this capacity, (if required) expands station capacity and subsequenlty (if required) re-allocates the remaining customers to 
		the appointed station.
	station_capacity_check(essim_substations, stedin_capacities, scenario_year):
		Inspects stations their available capacity and re-allocates customers, expands station or build a new station in case installed capacity < connected (customer) capacity.
	update_stedin_network(scenario_year):
		Activates investment strategy for based on the class its active strategy, executes the customer re-allocation and station re-design methods and subsequenlty returns the relevant new energy system data."""
   
	
	def __init__(self, excel_file, esdl_file, stedin_design_rule):
		"""Constructs all required attributes for the Dataprep object.

		Parameters
		----------
			excel_file : str
				Path to the .xlsx file with all required information about the initial energy system and fixed variables.
			esdl_file : str
				Path to the .esdl file with the initial energy system description.
			stedin_design_rule : str
				Investment strategy for the simulation run."""

		self.gasunie_asset_node_relations, self.gasunie_invest_paths, self.gasunie_network_ids = self.initialize_gas(
			excel_file)

		self.initial_e_design, self.initial_tennet_design, self.initial_stedin_design, \
		self.essim_substations, self.initial_tennet_stedin_design, self.coupling_preference_order = self.initialize_electricity(
			excel_file)

		self.investment_database, self.investment_types = self.initialize_investment_database()

		self.energy_system = self.load_esdl(esdl_file)
		self.stedin_capacities, self.strategy_config, self.treshold25kV, self.treshold66kV, self.tennet_mapping = self.init_stedin_tool(
			stedin_design_rule)

	def initialize_investment_database(self):
		investment_types = ['new_station', 'empty_station', 'new_line', \
							'removed_line', 'added_trafo', 'new_150kVline']
		station_list = list(self.essim_substations.Stedin.values)
		station_list.append('CAPEX')
		iterables = [station_list, investment_types]
		multiIndex = pd.MultiIndex.from_product(iterables)

		investment_database = pd.DataFrame(columns=multiIndex, index=[2022, 2025, 2030, 2035, 2040, 2045, 2050, 2055],
										   dtype=int)

		return investment_database, investment_types

	def initialize_gas(self, excel_file):
		gasunie_asset_node_relations = pd.read_excel(excel_file, sheet_name='Gasunie_asset_node', header=0, index_col=0,
													 engine='openpyxl')
		gasunie_invest_paths = pd.read_excel(excel_file, sheet_name='Gasunie_investpaths', header=0, index_col=0,
											 engine='openpyxl')
		gasunie_network_ids = pd.read_excel(excel_file, sheet_name='Gasunie_network_ids', header=0, index_col=0,
											engine='openpyxl')
		return gasunie_asset_node_relations, gasunie_invest_paths, gasunie_network_ids

	def initialize_electricity(self, excel_file):
		initial_e_design = pd.read_excel(excel_file, sheet_name='Electricity_asset_node', header=0, index_col=0,
										 engine='openpyxl').drop(labels=['Other Connections'], axis=1)
		initial_tennet_design = initial_e_design[
			initial_e_design['substation [t-1]'].str.contains("150|380") == True].drop(
			labels=['capacity'], axis=1)
		initial_stedin_design = initial_e_design[
			initial_e_design['substation [t-1]'].str.contains("150|380") == False].drop(labels=['capacity'],
																						axis=1)
		initial_tennet_stedin_design = initial_e_design[
			initial_e_design.index.str.contains('25|MVL66|MDH50')].rename(
			{'substation [t-1]': 'TenneT Substation'}, axis=1)
		initial_tennet_stedin_design.index.name = 'Stedin'

		initial_tennet_stedin_design = initial_tennet_stedin_design[
			initial_tennet_stedin_design.index.str.contains('Baseload') == False]
		essim_substations = initial_tennet_stedin_design.drop(labels='TenneT Substation',
															  axis=1)
		essim_substations = essim_substations.reset_index(drop=False)

		coupling_preference_order = {'MV': ['xxx380'],
							 'MVB': ['xxx380'],
							 'MV1': ['xxx380'],
							 'MV2': ['xxx380'],
							 'Eur': ['xxx380', 'xxx380'],
							 'Eur1': ['xxx380', 'xxx380'],
							 'EurA': ['xxx380', 'xxx380'],
							 'Eur2': ['xxx380', 'xxx380', 'xxx380'],
							 'EurB': ['xxx380', 'xxx380', 'xxx380'],
							 'Eur3': ['xxx380', 'xxx380', 'xxx380'],
							 'EurC': ['xxx380', 'xxx380', 'xxx380'],
							 'Per': ['xxx380', 'xxx380', 'xxx380'],
							 'Bot': ['xxx380', 'xxx380'],
							 }

		return initial_e_design, initial_tennet_design, initial_stedin_design, essim_substations, \
			   initial_tennet_stedin_design, coupling_preference_order


	def update_available_tennet_stations(self, network):
		coupling_preference_order = copy.deepcopy(self.coupling_preference_order)

		for key, stations in coupling_preference_order.items():
			for index, item in enumerate(stations):
				if network.bus.sShort.str.contains(item).any() == False:
					stations[index] = None

			remove_na = [v for v in stations if v != None]

		coupling_preference_order = {k: list(filter(None, v)) for (k, v) in coupling_preference_order.items()}

		return coupling_preference_order

	def get_network_databases(self, s3_client, network_id):
		net_path = 'networks/' + network_id + '.sqlite'
		return pp.from_sqlite(net_path)

	def tennet_dependency_check(self, network_id, s3_client, stedin_capacities):
		"""Inspects if installed capacity of customer surpasses the specified threshold and re-allocates customers to upstream HV station based upon the infrastructure merit order.
		
		Parameters
		----------
		network_id : str
			Binary representation of the network ID.
		s3_client : botocore.client.s3
			Service client instance.
		stedin_capacities : Dataframe
		   Initial customer-infrastructure relations.
			
		Return
		----------
		stedin_capacities : Dataframe
			Customer-infrastructure relations with altered HV infrastructure stations.
		customers_switched : int
			Number of re-allocated customers."""

		stedin_capacities = copy.deepcopy(stedin_capacities)
		network = self.get_network_databases(s3_client, network_id)
		coupling_preference_order = self.update_available_tennet_stations(network)
		customers_switched = 0  

		for index, row in stedin_capacities.iterrows():
			if '380' not in stedin_capacities.loc[stedin_capacities.index == index, 'substation [t-1]'][
				0] and 'Baseload' not in index:
				location = index.split('_')
				location = location[-1]
				if 'Bot' in location:
					location = 'Bot'
				treshold = 'thresholdHVswitch'
				if abs(row.capacity) > (treshold * 1000000):
					for key in coupling_preference_order:
						if location == key:
							try:
								new380_station = coupling_preference_order[key][0]
								stedin_capacities.loc[
									stedin_capacities.index == index, 'substation [t-1]'] = new380_station
								customers_switched += 1  
								logging.debug(
									f'{index} had a capacity of +{treshold}MW and moved to station {new380_station}.')
							except IndexError as x:
								logging.error(x)
								logging.error('IndexError; Required station not (yet) present.')
		
		return stedin_capacities, customers_switched 

	def init_stedin_tool(self, stedin_design_rule):
		module_input = self.make_client_node_table(self.energy_system)
		stedin_capacities = module_input[module_input['substation [t-1]'].str.contains(
			"NaN") == False]
		initial_tennet_stedin_design_noindex = self.initial_tennet_stedin_design.reset_index()
		mapping = dict(initial_tennet_stedin_design_noindex[['Stedin', 'TenneT Substation']].values)
		map_table = stedin_capacities['substation [t-1]'].map(mapping)
		stedin_capacities.insert(1, 'TenneT', map_table)

		distanceClient_25kV = 'placeholderDistance25'
		distanceClient_150kV = 'placeholderDistance150'
		distanceClient_66kV = 'placeholderDistance66'

		distanceClient_25kV = 3.5
		distanceClient_150kV = 6.0
		distanceClient_66kV = 3.5

		strategy_config = {
			'blocksize_lever': (90 * 1000000),
			'maxexpansion_lever': (270 * 1000000),
			'max_trafos': 3,
			'simultaneity_factor': 0.9,
			'CAPEX_stedin': {
				'remove_25line_MW': 0.2 * distanceClient_25kV,
				'new_25line_MW': 0.4 * distanceClient_25kV,
				'remove_66line_MW': 0.3 * distanceClient_66kV,
				'new_66line_MW': 0.5 * distanceClient_66kV,
				'new_150line_MW': 0 * distanceClient_150kV
			}
		}

		treshold25kV, treshold66kV = self.determine_tresholds(tresholds_lever=strategy_config['threshold_lever'])

		return stedin_capacities, strategy_config, treshold25kV, treshold66kV, mapping

	def make_client_node_table(self, energy_system, current_e_design=None):
		if not current_e_design:
			current_e_design = self.initial_e_design
		supply_dict = {}
		demand_dict = {}
		sector_dict = {}

		for element in energy_system.eAllContents():
			if isinstance(element, (
					esdl.ElectricityDemand, esdl.GasHeater, esdl.GasConversion, esdl.GenericConversion, esdl.PowerPlant,
					esdl.CHP, esdl.ElectricityProducer,
					esdl.WindTurbine, esdl.Electrolyzer, esdl.PVPark)) \
					and element.containingBuilding not in [None, 'Networks'] \
					and (
					element.containingBuilding.name in current_e_design.index or element.name in current_e_design.index
					or 'elec' in element.containingBuilding.name): 
				element_totalpower = element.power
				if 'Onshore' in element.containingBuilding.name or 'Baseload' in element.containingBuilding.name or element.name == 'Offshore_MV' or element.name == 'Offshore_SH':
					name_client = element.name
				else:
					name_client = element.containingBuilding.name
				if name_client not in supply_dict.keys():
					supply_dict[name_client] = []
				if name_client not in demand_dict.keys():
					demand_dict[name_client] = []
				if name_client not in sector_dict.keys():
					sector_dict[name_client] = []
				sector_dict[name_client] = element.containingBuilding.sector.name
				for port in element.port:
					if port.carrier.name == 'Electricity':
						#Note, not all E_... assetTypes are included that leads to lower capacities in the customer-node relations. Mainly the MV-grid will be affected by this.
						if isinstance(element, esdl.ElectricityDemand) or element.assetType in ['E_Boiler',
																								'E_Furnace']:
							element_e_power = element_totalpower
							demand_dict[name_client].append(int(element_e_power))
						elif isinstance(element, esdl.WindTurbine) or isinstance(element, esdl.PVPark) or isinstance(
								element, esdl.ElectricityProducer):
							element_e_power = element_totalpower * -1
							supply_dict[name_client].append(int(element_e_power))
						elif isinstance(element, esdl.Electrolyzer):
							name_client = element.port[0].connectedTo[0].id
							name_client = name_client.split("_E_", 1)[0]
							if name_client not in supply_dict.keys():
								supply_dict[name_client] = []
							if name_client not in demand_dict.keys():
								demand_dict[name_client] = []
							if name_client not in sector_dict.keys():
								sector_dict[name_client] = []
							sector_dict[name_client] = element.containingBuilding.sector.name
							efficiency = element.efficiency
							element_e_power = element_totalpower 
							demand_dict[name_client].append(int(element_e_power))
						else:
							for behaviour in element.behaviour:
								for mainPortRelation in behaviour.mainPortRelation:
									if mainPortRelation.port == port:
										if isinstance(element, (esdl.GasHeater,
																esdl.GasConversion)):
											element_e_power = (1 / mainPortRelation.ratio) * element_totalpower
											demand_dict[name_client].append(int(element_e_power))
										if isinstance(element, (esdl.GenericConversion, esdl.PowerPlant, esdl.CHP)):
											element_e_power = (1 / mainPortRelation.ratio) * element_totalpower * -1
											supply_dict[name_client].append(int(element_e_power))

		supply_dict = {k: sum(v) for k, v in supply_dict.items()}
		demand_dict = {k: sum(v) for k, v in demand_dict.items()}

		capacity_dict = {
		    name_client: supply_dict[name_client] + demand_dict[name_client]
		    for name_client in supply_dict
		}
		capacities = pd.Series(capacity_dict, dtype='float64', name='capacity')
		sectors = pd.Series(sector_dict, dtype='string', name='sector')

		for name in capacities.index:
			if 'elec' in name:
				name_org = name.replace('elec', '')
				substation = copy.deepcopy(self.initial_e_design.loc[name_org, 'substation [t-1]'])
				capacity = capacities[name]
				trafos = NaN

				new_row_dict = {'substation [t-1]': substation, 'capacity': capacity, 'trafos': trafos}

				new_row = pd.Series(new_row_dict)
				new_row.name = name

				self.initial_e_design = self.initial_e_design.append(new_row)

		first_merge = pd.merge(self.initial_e_design['substation [t-1]'], capacities, left_index=True, right_index=True)
		design = pd.merge(first_merge, sectors, left_index=True, right_index=True)

		design.index.name = 'site'
		design = design[~design.index.duplicated(keep='first')]

		return design

	def alter_e_sites(self, energy_system):
		"""Alter installed electricity capacity, remove- and/or append- (new) clients to the current energy system based on scenario developments.

		Parameters
		----------
		energy_system : ESDL.Instance
			Object that contains all details of the regional energy system in one specific year.


		Return
		---------
		None """

		new_design = self.make_client_node_table(energy_system=energy_system)
		new_design = new_design[~new_design.index.duplicated(keep='first')]

		for site in self.stedin_capacities.index:
			if site not in new_design.index:
				logging.debug(f'{site} has been removed from HIC Rotterdam.')
				self.stedin_capacities.drop([site], inplace=True)

		for site in new_design.index:  
			if site not in self.stedin_capacities.index:
				capacity = new_design.loc[site, 'capacity']
				sector = new_design.loc[site, 'sector']
				substation = new_design.loc[site, 'substation [t-1]']
				if substation in self.tennet_mapping.keys():
					TenneT = self.tennet_mapping[substation]
				else:
					TenneT = '000'

				new_row_dict = {'substation [t-1]': substation, 'TenneT': TenneT, 'capacity': capacity,
								'sector': sector}

				new_row = pd.Series(new_row_dict)
				new_row.name = site
				self.stedin_capacities = self.stedin_capacities.append(new_row)
				logging.debug(f'{site} has been added to HIC Rotterdam.')

		for index, row in self.stedin_capacities.iterrows():
			new_capacity = new_design.loc[index, 'capacity']
			if new_capacity != row.capacity and pd.isna(new_capacity) != True:
				logging.debug(f'{index} has changed capacity from {row.capacity} to {new_capacity}')
				self.stedin_capacities.loc[index, 'capacity'] = new_capacity

		for index, row in self.stedin_capacities.iterrows():
			if pd.isna(row.TenneT) and '150' not in row['substation [t-1]'] and ('25' in row['substation [t-1]']
																					or '50' in row[
																						'substation [t-1]'] or '66' in row[
																						'substation [t-1]']):
				stedin_station = row['substation [t-1]']
				self.stedin_capacities.loc[index, 'TenneT'] = self.initial_tennet_stedin_design.loc[
					stedin_station, 'TenneT Substation']

	def alter_e_sites_tennet(self, energy_system, tennet_capacities):
		"""Alter installed electricity capacity, remove- and/or append- (new) clients to the current energy system based on scenario developments.

		Parameters
		----------
		energy_system : ESDL.Instance
			Object that contains all details of the regional energy system in one specific year.
		tennet_capacities : Dataframe
		   Customer-infrastructure relations in reference year - n.
		
		Return
		---------
		None """

		new_design = self.make_client_node_table(energy_system=energy_system)

		for site in tennet_capacities.index:
			if site not in new_design.index:
				logging.debug(
					f'{site} has been removed from HIC Rotterdam.')
				tennet_capacities.drop([site], inplace=True)

		for site in new_design.index:  
			if site not in tennet_capacities.index:
				capacity = new_design.loc[site, 'capacity']
				sector = new_design.loc[site, 'sector']
				substation = new_design.loc[site, 'substation [t-1]']
				if substation in self.tennet_mapping.keys():
					TenneT = self.tennet_mapping[substation]
				else:
					TenneT = '000'

				new_row_dict = {'substation [t-1]': substation, 'TenneT': TenneT, 'capacity': capacity,
								'sector': sector}

				new_row = pd.Series(new_row_dict)
				new_row.name = site
				tennet_capacities = tennet_capacities.append(new_row)

				logging.debug(f'{site} has been added to HIC Rotterdam.')

		for index, row in tennet_capacities.iterrows():
			new_capacity = new_design.loc[index, 'capacity']
			if new_capacity != row.capacity and pd.isna(new_capacity) != True:
				logging.debug(
					f'{index} has changed capacity from {row.capacity} to {new_capacity}')
				tennet_capacities.loc[index, 'capacity'] = new_capacity

		for index, row in tennet_capacities.iterrows():
			if pd.isna(row.TenneT) and '150' not in row['substation [t-1]'] and ('25' in row['substation [t-1]']
																				 or '50' in row[
																					 'substation [t-1]'] or '66' in row[
																					 'substation [t-1]']):
				stedin_station = row['substation [t-1]']
				tennet_capacities.loc[index, 'TenneT'] = self.initial_tennet_stedin_design.loc[
					stedin_station, 'TenneT Substation']

		return tennet_capacities

	def load_esdl(self, file_name):
		""" Load and convert the ESDL resource to an ESDL instance.
		
		Parameters
		-------------
		file_name : str
			The path to the ESDL file.

		Return
		-------------
		esdl_description : ESDL.Instance
			Object that contains all details of the regional energy system in one specific year. """
		rset_existing = ResourceSet()
		resource_existing = rset_existing.get_resource(URI(file_name))

		esdl_file = resource_existing.contents[0]
		carriers = {
		    "Electricity":
		    esdl_file.energySystemInformation.carriers.carrier[0],
		    "RTL H-gas ODO":
		    esdl_file.energySystemInformation.carriers.carrier[1],
		    "Green methane":
		    esdl_file.energySystemInformation.carriers.carrier[2],
		    "RTL G-gas ODO":
		    esdl_file.energySystemInformation.carriers.carrier[3],
		    "RTL H-gas Non Odorized":
		    esdl_file.energySystemInformation.carriers.carrier[4],
		    "RTL G-gas Non-Odorized":
		    esdl_file.energySystemInformation.carriers.carrier[5],
		    "Head Transport H-gas":
		    esdl_file.energySystemInformation.carriers.carrier[6],
		    "Head Transport G-gas":
		    esdl_file.energySystemInformation.carriers.carrier[7],
		    "Steam":
		    esdl_file.energySystemInformation.carriers.carrier[8],
		    "High temperature heat":
		    esdl_file.energySystemInformation.carriers.carrier[9],
		    "Low temperature heat":
		    esdl_file.energySystemInformation.carriers.carrier[10],
		    "Grey Hydrogen":
		    esdl_file.energySystemInformation.carriers.carrier[11],
		    "Blue Hydrogen [Hvision]":
		    esdl_file.energySystemInformation.carriers.carrier[12],
		    "H2_new":
		    esdl_file.energySystemInformation.carriers.carrier[13],
		    "Refgas":
		    esdl_file.energySystemInformation.carriers.carrier[14],
		    "Petcokes":
		    esdl_file.energySystemInformation.carriers.carrier[15],
		    "Heavy gasoil":
		    esdl_file.energySystemInformation.carriers.carrier[16],
		    "Coal":
		    esdl_file.energySystemInformation.carriers.carrier[17],
		    "Biomass":
		    esdl_file.energySystemInformation.carriers.carrier[18],
		    "CO2_Pure":
		    esdl_file.energySystemInformation.carriers.carrier[19],
		    "CO2_Biogenic":
		    esdl_file.energySystemInformation.carriers.carrier[20],
		    "CO2_Fossil":
		    esdl_file.energySystemInformation.carriers.carrier[21],
		    "Plastic waste":
		    esdl_file.energySystemInformation.carriers.carrier[22],
		    "Crude oil":
		    esdl_file.energySystemInformation.carriers.carrier[23],
		    "Methanol":
		    esdl_file.energySystemInformation.carriers.carrier[24],
		    "Oilrest":
		    esdl_file.energySystemInformation.carriers.carrier[25],
		    "Res fuel":
		    esdl_file.energySystemInformation.carriers.carrier[26],
		    "Waste":
		    esdl_file.energySystemInformation.carriers.carrier[27]
		}
		sectors = {
		    'Harbour Industral Complex':
		    esdl_file.energySystemInformation.sectors.sector[0],
		    'Edible oil':
		    esdl_file.energySystemInformation.sectors.sector[1],
		    'Chemical feedstock':
		    esdl_file.energySystemInformation.sectors.sector[2],
		    'Non Chloride':
		    esdl_file.energySystemInformation.sectors.sector[3],
		    'Refinery':
		    esdl_file.energySystemInformation.sectors.sector[4]
		}
		return esdl_file.instance[0]

	def determine_tresholds(self, tresholds_lever):
		if tresholds_lever == 'a':
			treshold_25kV = 70 * 1000000
			treshold_66kV = 120 * 1000000

		if tresholds_lever in ['b', 'c']:
			treshold_25kV = 50 * 1000000
			treshold_66kV = 70 * 1000000
	
		if tresholds_lever == 'd':
			treshold_25kV = 40 * 1000000
			treshold_66kV = treshold_25kV

		return treshold_25kV, treshold_66kV

	def set_buildingblock_size(self, blocksize_lever):
		if blocksize_lever == 'a':
			building_block = 'placeholderblocksize'
		elif blocksize_lever == 'b':
			building_block = 'placeholderblocksize'
		elif blocksize_lever == 'c':
			building_block = 'placeholderblocksize'

		return building_block

	def set_max_expansion(self, maxexpansion_lever, building_block_size):
		if maxexpansion_lever == 'a':
			max_expansion = 'placeholdermaxexpansion' * building_block_size
		if maxexpansion_lever == 'b':
			max_expansion = 'placeholdermaxexpansion' * building_block_size
		if maxexpansion_lever == 'c':
			max_expansion = 'placeholdermaxexpansion' * building_block_size

		return max_expansion

	def administrate_investment(self, investment_type, scenario_year, station=None, old_station=None,
								capacity=None, added_trafos=None, customer=None):

		netPresentValueCorrector = (1 + self.strategy_config['WACC']) ** (
				scenario_year - self.strategy_config['initialYear'])

		new_25 = self.strategy_config['CAPEX_stedin']['new_25kV'] / netPresentValueCorrector
		trafo_25 = self.strategy_config['CAPEX_stedin']['25kV_trafo'] / netPresentValueCorrector
		new_66 = self.strategy_config['CAPEX_stedin']['new_66kV'] / netPresentValueCorrector
		trafo_66 = self.strategy_config['CAPEX_stedin']['66kV_trafo'] / netPresentValueCorrector
		new25line_MW = self.strategy_config['CAPEX_stedin']['new_25line_MW'] / netPresentValueCorrector
		new66line_MW = (self.strategy_config['CAPEX_stedin']['new_66line_MW']) / netPresentValueCorrector
		remove25line_MW = self.strategy_config['CAPEX_stedin']['remove_25line_MW'] / netPresentValueCorrector
		remove66line_MW = (self.strategy_config['CAPEX_stedin']['remove_66line_MW']) / netPresentValueCorrector
		new150line_MW = self.strategy_config['CAPEX_stedin']['new_150line_MW'] / netPresentValueCorrector

		if station not in self.investment_database.columns:
			iterables = [[station], self.investment_types]
			multiIndex = pd.MultiIndex.from_product(iterables)

			new_station_df = pd.DataFrame(columns=multiIndex, index=range(2025, 2055, 5), dtype=int)
			self.investment_database = pd.concat([self.investment_database, new_station_df], axis=1)

		if investment_type == 'new_station':
			if math.isnan(self.investment_database.loc[scenario_year, (station, investment_type)]):
				self.investment_database.loc[scenario_year, (station, investment_type)] = 0
			self.investment_database.loc[scenario_year, (station, investment_type)] += 1

			if '25' in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new_25
			if ('66' in station or '50' in station) and '150' not in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new_66
			if math.isnan(self.investment_database.loc[scenario_year, (station, 'added_trafo')]):
				self.investment_database.loc[scenario_year, (station, 'added_trafo')] = 0
			self.investment_database.loc[scenario_year, (station, 'added_trafo')] += added_trafos

			if '25' in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')] += (added_trafos * trafo_25)
			if ('66' in station or '50' in station) and '150' not in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'added_trafo')] += (added_trafos * trafo_66)

			if capacity != None and capacity == 0:
				return
			if type(self.investment_database.loc[scenario_year, (station, 'new_line')]) != dict:
				self.investment_database.loc[scenario_year, (station, 'new_line')] = [{}]
			self.investment_database.loc[scenario_year, (station, 'new_line')].update({customer: capacity})

			if '25' in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')] += new25line_MW
			if ('66' in station or '50' in station) and '150' not in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'new_line')] += new66line_MW

			if type(self.investment_database.loc[scenario_year, (old_station, 'removed_line')]) != dict:
				self.investment_database.loc[scenario_year, (old_station, 'removed_line')] = [{}]
			if customer == 'AlreadyPresent':
				oldCapacity = 0
			else:
				oldCapacity = self.previousStedin.capacity.loc[self.previousStedin.index == customer].values[0]
			self.investment_database.loc[scenario_year, (old_station, 'removed_line')].update({customer: oldCapacity})

			if '25' in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')] += remove25line_MW
			if ('66' in old_station or '50' in old_station) and '150' not in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')]):
					self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', 'removed_line')] += remove66line_MW

		if investment_type == 'added_trafo':
			if math.isnan(self.investment_database.loc[scenario_year, (station, investment_type)]):
				self.investment_database.loc[scenario_year, (station, investment_type)] = 0
			self.investment_database.loc[scenario_year, (station, investment_type)] += added_trafos

			if '25' in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += (added_trafos * trafo_25)
			if ('66' in station or '50' in station) and '150' not in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += (added_trafos * trafo_66)

		if investment_type == 'new_line':
			if type(self.investment_database.loc[scenario_year, (station, 'new_line')]) != dict:
				self.investment_database.loc[scenario_year, (station, 'new_line')] = [{}]
			self.investment_database.loc[scenario_year, (station, 'new_line')].update({customer: capacity})

			if '25' in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new25line_MW
			if ('66' in station or '50' in station) and '150' not in station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new66line_MW

		if investment_type == 'removed_line':
			if type(self.investment_database.loc[scenario_year, (old_station, 'removed_line')]) != dict:
				self.investment_database.loc[scenario_year, (old_station, 'removed_line')] = [{}]
			if customer == 'AlreadyPresent':
				oldCapacity = 0
			else:
				oldCapacity = self.previousStedin.capacity.loc[self.previousStedin.index == customer].values[0]
			self.investment_database.loc[scenario_year, (old_station, 'removed_line')].update({customer: oldCapacity})
			if not old_station:
				old_station = station
			if '25' in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += remove25line_MW
			if ('66' in old_station or '50' in old_station) and '150' not in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += remove66line_MW

		if investment_type == 'new_150kVline':
			if type(self.investment_database.loc[scenario_year, (old_station, 'new_150kVline')]) != dict:
				self.investment_database.loc[scenario_year, (old_station, 'new_150kVline')] = [{}]
			self.investment_database.loc[scenario_year, (old_station, 'new_150kVline')].update({customer: capacity})

			if '25' in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new150line_MW
			if ('66' in old_station or '50' in old_station) and '150' not in old_station:
				if math.isnan(self.investment_database.loc[scenario_year, ('CAPEX', investment_type)]):
					self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] = 0
				self.investment_database.loc[scenario_year, ('CAPEX', investment_type)] += new150line_MW

		if investment_type == 'empty_station':
			if math.isnan(self.investment_database.loc[scenario_year, (station, investment_type)]):
				self.investment_database.loc[scenario_year, (station, investment_type)] = 0
			self.investment_database.loc[scenario_year, (station, investment_type)] += 1


	def switch_customer(self, current_station, new_station, customer, capacity, scenario_year):
		self.stedin_capacities.at[customer, 'substation [t-1]'] = new_station

		self.administrate_investment(investment_type='new_line',
									 station=new_station,
									 capacity=capacity,
									 scenario_year=scenario_year,
									 customer=customer)

		self.administrate_investment(investment_type='removed_line',
									 old_station=current_station,  
									 capacity=capacity,
									 scenario_year=scenario_year,
									 customer=customer)

		logging.debug(f'{customer} moved from {current_station} to {new_station}.')

	def upgrade_station(self, customer_capacity, current_station_capacity, current_station, scenario_year):

		no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
		new_total_station_capacity = current_station_capacity + (
				(no_trafos * self.strategy_config['blocksize_lever']) / 1000000)

		self.essim_substations.loc[
			self.essim_substations.Stedin == current_station, "capacity"] = new_total_station_capacity

		self.administrate_investment(station=current_station, investment_type='added_trafo',
									 scenario_year=scenario_year, added_trafos=no_trafos)

		logging.debug(f'station {current_station} upgraded with {no_trafos} transformators.')

		return no_trafos

	def client_capacity_check_stedin(self, scenario_year):

		for index, row in self.stedin_capacities.iterrows():
			if 'Baseload' in index:
				continue
			customer_capacity = abs(row['capacity'])
			current_station = row['substation [t-1]']
			if '25' in row['substation [t-1]'] and customer_capacity > self.treshold25kV:
				required_station = current_station[:3] + '66'
				required_station_2 = required_station + '_2'
				required_station_3 = required_station + '_3'
				required_station_4 = required_station + '_4'
				required_station_5 = required_station + '_5'
				connected_tennet_station = row['TenneT']

				if self.stedin_capacities['substation [t-1]'].str.contains(required_station).any():
					occupied_station_capacity = abs(self.stedin_capacities[
														self.stedin_capacities['substation [t-1]'] == (
															required_station)].capacity).sum()
					total_station_capacity = self.essim_substations[
						self.essim_substations['Stedin'] == (required_station)].capacity.iloc[0]

					current_station_load = (self.strategy_config['simultaneity_factor'] * (
							occupied_station_capacity + customer_capacity))

					available_capacity_check = current_station_load < (total_station_capacity * 1000000)

					expansion_potential = self.strategy_config['maxexpansion_lever'] - occupied_station_capacity
					potential_check = 0 < (customer_capacity / expansion_potential) < 1.0

				if self.stedin_capacities['substation [t-1]'].str.contains(required_station_2).any():
					occupied_station_capacity_2 = abs(self.stedin_capacities[
														  self.stedin_capacities['substation [t-1]'] == (
															  required_station_2)].capacity).sum()
					total_station_capacity_2 = self.essim_substations[
						self.essim_substations['Stedin'] == (required_station_2)].capacity.iloc[0]

					current_station_load_2 = (self.strategy_config['simultaneity_factor'] * (
							occupied_station_capacity_2 + customer_capacity))

					available_capacity_check_2 = current_station_load_2 < (total_station_capacity_2 * 1000000)

					expansion_potential_2 = self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_2
					potential_check_2 = 0 < (customer_capacity / expansion_potential_2) < 1.0

				if self.stedin_capacities['substation [t-1]'].str.contains(required_station_3).any():
					occupied_station_capacity_3 = abs(self.stedin_capacities[
														  self.stedin_capacities['substation [t-1]'] == (
															  required_station_3)].capacity).sum()
					total_station_capacity_3 = self.essim_substations[
						self.essim_substations['Stedin'] == (required_station_3)].capacity.iloc[0]

					current_station_load_3 = (self.strategy_config['simultaneity_factor'] * (
							occupied_station_capacity_3 + customer_capacity))

					available_capacity_check_3 = current_station_load_3 < (total_station_capacity_3 * 1000000)

					expansion_potential_3 = self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_3
					potential_check_3 = 0 < (customer_capacity / expansion_potential_3) < 1.0

				if self.stedin_capacities['substation [t-1]'].str.contains(required_station_4).any():
					occupied_station_capacity_4 = self.stedin_capacities[
						self.stedin_capacities['substation [t-1]'] == (
							required_station_4)].capacity.sum()
					total_station_capacity_4 = self.essim_substations[
						self.essim_substations['Stedin'] == (required_station_4)].capacity.iloc[0]

					current_station_load_4 = (self.strategy_config['simultaneity_factor'] * (
							occupied_station_capacity_4 + customer_capacity))

					available_capacity_check_4 = current_station_load_4 < (total_station_capacity_4 * 1000000)

					expansion_potential_4 = self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_4
					potential_check_4 = 0 < (customer_capacity / expansion_potential_4) < 1.0

				if self.stedin_capacities['substation [t-1]'].str.contains(required_station_5).any() or \
						self.essim_substations['Stedin'].str.contains(required_station_5).any():
					occupied_station_capacity_5 = self.stedin_capacities[
						self.stedin_capacities['substation [t-1]'] == (
							required_station_5)].capacity.sum()
					total_station_capacity_5 = self.essim_substations[
						self.essim_substations['Stedin'] == (required_station_5)].capacity.iloc[0]

					current_station_load_5 = (self.strategy_config['simultaneity_factor'] * (
							occupied_station_capacity_5 + customer_capacity))

					available_capacity_check_5 = current_station_load_5 < (total_station_capacity_5 * 1000000)

					expansion_potential_5 = self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_5
					potential_check_5 = 0 < (customer_capacity / expansion_potential_5) < 1.0


				if self.strategy_config['strategy_lever'] == 'a':
					if self.essim_substations['Stedin'].str.contains(
							required_station).any() and customer_capacity < self.treshold66kV and \
							available_capacity_check:

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)


					elif self.essim_substations['Stedin'].str.contains(
							required_station_2).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_2:

						self.switch_customer(current_station=current_station, new_station=required_station_2,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_3).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_3:

						self.switch_customer(current_station=current_station, new_station=required_station_3,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_4).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_4:

						self.switch_customer(current_station=current_station, new_station=required_station_4,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_5).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_5:

						self.switch_customer(current_station=current_station, new_station=required_station_5,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)


					elif self.essim_substations['Stedin'].str.contains(
							required_station).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check == False and potential_check:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity, \
														 current_station=required_station, scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_2).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_2 == False and potential_check_2:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity_2,
														 current_station=required_station_2,
														 scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station_2, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station_2,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_3).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_3 == False and potential_check_3:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity_3,
														 current_station=required_station_3,
														 scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station_3, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station_3,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_4).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_4 == False and potential_check_4:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity_4,
														 current_station=required_station_4,
														 scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station_4, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station_4,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station_5).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check_5 == False and potential_check_5:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity_5,
														 current_station=required_station_5,
														 scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station_5, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station_5,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)



					elif not self.essim_substations['Stedin'].str.contains(required_station).any() \
							and customer_capacity < self.treshold66kV:


						no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
						installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000

						self.essim_substations.loc[len(self.essim_substations.index)] = [required_station,
																						 installed_capacity, no_trafos]

						self.stedin_capacities.at[index, 'substation [t-1]'] = required_station

						self.administrate_investment(scenario_year=scenario_year,
													 station=required_station,
													 investment_type='new_station',
													 capacity=customer_capacity,
													 old_station=current_station,
													 customer=index,
													 added_trafos=no_trafos)

						logging.debug(f'{required_station} has been built with {no_trafos} transformators installed.')
						logging.debug(
							f'{index} is moved to NEW station {required_station}.')

					elif not self.essim_substations['Stedin'].str.contains(
							required_station_2).any() and customer_capacity < self.treshold66kV:

						no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
						installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000

						self.essim_substations.loc[len(self.essim_substations.index)] = [required_station_2,
																						 installed_capacity, no_trafos]

						self.stedin_capacities.at[index, 'substation [t-1]'] = required_station_2

						self.administrate_investment(scenario_year=scenario_year,
													 station=required_station_2,
													 investment_type='new_station',
													 capacity=customer_capacity,
													 old_station=current_station,
													 customer=index,
													 added_trafos=no_trafos)

						logging.debug(f'{required_station_2} has been built with {no_trafos} transformators installed.')
						logging.debug(
							f'{index} is moved to NEW station {required_station_2}.')


					elif not self.essim_substations['Stedin'].str.contains(
							required_station_3).any() and customer_capacity < self.treshold66kV:

						no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
						installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000

						self.essim_substations.loc[len(self.essim_substations.index)] = [required_station_3,
																						 installed_capacity, no_trafos]

						self.stedin_capacities.at[index, 'substation [t-1]'] = required_station_3

						self.administrate_investment(scenario_year=scenario_year,
													 station=required_station_3,
													 investment_type='new_station',
													 capacity=customer_capacity,
													 old_station=current_station,
													 customer=index,
													 added_trafos=no_trafos)

						logging.debug(f'{required_station_3} has been built with {no_trafos} transformators installed.')
						logging.debug(
							f'{index} is moved to NEW station {required_station_3}.')


					elif not self.essim_substations['Stedin'].str.contains(
							required_station_4).any() and customer_capacity < self.treshold66kV:

						no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
						installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000

						self.essim_substations.loc[len(self.essim_substations.index)] = [required_station_4,
																						 installed_capacity, no_trafos]

						self.stedin_capacities.at[index, 'substation [t-1]'] = required_station_4

						self.administrate_investment(scenario_year=scenario_year,
													 station=required_station_4,
													 investment_type='new_station',
													 capacity=customer_capacity,
													 old_station=current_station,
													 customer=index,
													 added_trafos=no_trafos)

						logging.debug(f'{required_station_4} has been built with {no_trafos} transformators installed.')
						logging.debug(
							f'{index} is moved to NEW station {required_station_4}.')


					elif not self.essim_substations['Stedin'].str.contains(
							required_station_5).any() and customer_capacity < self.treshold66kV:

						no_trafos = math.ceil(customer_capacity / self.strategy_config['blocksize_lever'])
						installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000

						self.essim_substations.loc[len(self.essim_substations.index)] = [required_station_5,
																						 installed_capacity, no_trafos]

						self.stedin_capacities.at[index, 'substation [t-1]'] = required_station_5

						self.administrate_investment(scenario_year=scenario_year,
													 station=required_station_5,
													 investment_type='new_station',
													 capacity=customer_capacity,
													 old_station=current_station,
													 customer=index,
													 added_trafos=no_trafos)

						logging.debug(f'{required_station_5} has been built with {no_trafos} transformators installed.')
						logging.debug(
							f'{index} is moved to NEW station {required_station_5}.')

					else:

						self.stedin_capacities.at[index, 'substation [t-1]'] = connected_tennet_station

						self.administrate_investment(investment_type='new_150kVline',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						self.administrate_investment(investment_type='removed_line',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						logging.debug(
							f'{index} removed from {current_station} and moved to upstream TenneT station {connected_tennet_station}.')

				if self.strategy_config['strategy_lever'] in ['b', 'c']:
					if required_station in self.stedin_capacities[
						'substation [t-1]'].values and customer_capacity < self.treshold66kV \
							and available_capacity_check:

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)


					elif required_station in self.stedin_capacities[
						'substation [t-1]'].values and customer_capacity < self.treshold66kV \
							and available_capacity_check == False and potential_check:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity,
														 current_station=required_station, scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)


					elif (self.stedin_capacities['substation [t-1]'].str.contains(required_station).any()
						  and not available_capacity_check) or \
							(not self.stedin_capacities['substation [t-1]'].str.contains(required_station).any()) or \
							customer_capacity > self.treshold66kV:

						self.stedin_capacities.at[index, 'substation [t-1]'] = connected_tennet_station

						self.administrate_investment(investment_type='new_150kVline',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						self.administrate_investment(investment_type='removed_line',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						logging.debug(
							f'{index} removed from {current_station} and moved to upstream TenneT station {connected_tennet_station}.')

				if self.strategy_config['strategy_lever'] == 'd':

					if self.essim_substations['Stedin'].str.contains(
							required_station).any() and customer_capacity < self.treshold66kV and \
							available_capacity_check:

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, \
											 capacity=customer_capacity, scenario_year=scenario_year)

					elif self.essim_substations['Stedin'].str.contains(
							required_station).any() and customer_capacity < self.treshold66kV \
							and available_capacity_check == False and potential_check:

						no_trafos = self.upgrade_station(customer_capacity=customer_capacity,
														 current_station_capacity=total_station_capacity, \
														 current_station=required_station, scenario_year=scenario_year)

						self.essim_substations.loc[
							self.essim_substations.Stedin == required_station, 'trafos'] += no_trafos

						self.switch_customer(current_station=current_station, new_station=required_station,
											 customer=index, capacity=customer_capacity, scenario_year=scenario_year)

					else:

						self.stedin_capacities.at[index, 'substation [t-1]'] = connected_tennet_station

						self.administrate_investment(investment_type='new_150kVline',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						self.administrate_investment(investment_type='removed_line',
													 old_station=current_station,
													 capacity=customer_capacity,
													 scenario_year=scenario_year,
													 customer=index)

						logging.debug(
							f'{index} removed from {current_station} and moved to upstream TenneT station {connected_tennet_station}.')

			if ('66' in row['substation [t-1]'] or '50' in row[
				'substation [t-1]']) and '150' not in row['substation [t-1]'] and customer_capacity > self.treshold66kV:
				current_station = row['substation [t-1]']
				required_station = current_station
				connected_tennet_station = row['TenneT']
				occupied_station_capacity = self.stedin_capacities[self.stedin_capacities['substation [t-1]'] == (
					required_station)].capacity.sum()
				total_station_capacity = self.essim_substations[
					self.essim_substations['Stedin'] == (required_station)].capacity.iloc[0]
				available_capacity_check = (self.strategy_config['simultaneity_factor'] * (
						occupied_station_capacity + customer_capacity)) < (total_station_capacity * 1000000)

				self.stedin_capacities.at[index, 'substation [t-1]'] = connected_tennet_station

				self.administrate_investment(investment_type='new_150kVline',
											 old_station=current_station,
											 capacity=customer_capacity,
											 scenario_year=scenario_year,
											 customer=index)

				self.administrate_investment(investment_type='removed_line',
											 old_station=current_station,
											 capacity=customer_capacity,
											 scenario_year=scenario_year,
											 customer=index)

				logging.debug(
					f'{index} removed from {current_station} and moved to upstream TenneT station {connected_tennet_station}.')

		return

	def expansion_potential_check(self, essim_substation_next_year, stedin_capacities_next_year, station):

		occupied_station_capacity = abs(stedin_capacities_next_year[
											stedin_capacities_next_year['substation [t-1]'] == (
												station)].capacity).sum()
		station_load = essim_substation_next_year[
			essim_substation_next_year['Stedin'] == (station)].capacity
		station_load = station_load.iloc[0]

		expansion_potential = self.strategy_config['maxexpansion_lever'] - (
				abs(occupied_station_capacity) * self.strategy_config['simultaneity_factor'])
		surplus_load = abs((occupied_station_capacity * self.strategy_config['simultaneity_factor']) - (
				station_load * 1000000))
		potential_check = expansion_potential > 0
		remainingCapacity = False
		no_trafos = math.ceil(surplus_load / self.strategy_config['blocksize_lever'])
		installed_capacity = (no_trafos * self.strategy_config['blocksize_lever']) / 1000000
		new_total_station_capacity = station_load + installed_capacity
		return potential_check, no_trafos, new_total_station_capacity, installed_capacity

	def client_allocation_optimization(self, station, empty_trafo_slots, remaining_clients, scenario_year, mode=None,
									   old_station=None):

		if isinstance(empty_trafo_slots, int):
			empty_trafo_slots = pd.Series([empty_trafo_slots])

		availablePotentialSpace = empty_trafo_slots.values[0] * self.strategy_config['blocksize_lever']
		currentCapacity = self.essim_substations.loc[self.essim_substations.Stedin == station, 'capacity'].values[
							  0] * 1000000
		remainingClientsCapacity = abs(remaining_clients.capacity).sum()

		if mode == 'existing':
			capacityAllocated = abs(self.stedin_capacities.loc[
										self.stedin_capacities['substation [t-1]'] == station, 'capacity']).sum()
			oldStationCapacity = \
				self.essim_substations.loc[self.essim_substations.Stedin == old_station, 'capacity'].values[0] * 1000000
		else:
			capacityAllocated = 0
			oldStationCapacity = currentCapacity

		for index, row in remaining_clients.iterrows():
			if mode == 'existing' and oldStationCapacity > (
					remainingClientsCapacity * self.strategy_config['simultaneity_factor']):
				return remaining_clients, empty_trafo_slots
			capacityAllocatedNew = capacityAllocated + abs(row.capacity)
			if (capacityAllocatedNew * self.strategy_config['simultaneity_factor']) < currentCapacity:
				capacityAllocated = capacityAllocatedNew
				remaining_clients = remaining_clients[remaining_clients.index.str.contains(index) == False]
				remainingClientsCapacity -= abs(row.capacity)
				if mode in ['existing', 'allocateOnly']:
					self.stedin_capacities.loc[index, 'substation [t-1]'] = station

					self.administrate_investment(investment_type='new_line',
												 station=station,
												 capacity=row.capacity,
												 scenario_year=scenario_year,
												 customer=index)

					self.administrate_investment(investment_type='removed_line',
												 old_station=old_station,
												 capacity=row.capacity,
												 scenario_year=scenario_year,
												 customer=index)

		if mode == 'allocateOnly':
			return

		availableCurrent = currentCapacity - capacityAllocated
		availablePotentialSpace += availableCurrent
		availableTrafoSpace = availableCurrent

		for index, row in remaining_clients.iterrows():
			if mode == 'existing' and oldStationCapacity > (
					remainingClientsCapacity * self.strategy_config['simultaneity_factor']):
				return remaining_clients, empty_trafo_slots
			if (
					abs(row.capacity) * 1) < availablePotentialSpace:  
				availablePotentialSpace -= abs(row.capacity)
				remainingClientsCapacity -= abs(row.capacity)
				if (abs(row.capacity) * 1) > availableTrafoSpace: 
					rowCapacity = abs(row.capacity) - availableTrafoSpace
					addedTrafos = math.ceil(rowCapacity / self.strategy_config['blocksize_lever'])
					addedTrafoCapacity = (addedTrafos * self.strategy_config['blocksize_lever']) - rowCapacity
					availableTrafoSpace = addedTrafoCapacity
					addedCapacity = (addedTrafos * self.strategy_config['blocksize_lever']) / 1000000
					self.essim_substations.loc[ \
						self.essim_substations.Stedin == station, 'capacity'] += addedCapacity

					self.administrate_investment(station=station, investment_type='added_trafo',
												 scenario_year=scenario_year, added_trafos=addedTrafos)

					self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += addedTrafos
					empty_trafo_slots.values[0] -= addedTrafos

					logging.debug(f'station {station} upgraded with {addedTrafos} transformators.')

				elif abs(row.capacity) < availableTrafoSpace:
					availableTrafoSpace -= abs(row.capacity)

				remaining_clients = remaining_clients[remaining_clients.index.str.contains(index) == False]

				if mode == 'existing':
					self.stedin_capacities.loc[index, 'substation [t-1]'] = station

					self.administrate_investment(investment_type='new_line',
												 station=station,
												 capacity=row.capacity,
												 scenario_year=scenario_year,
												 customer=index)

					self.administrate_investment(investment_type='removed_line',
												 old_station=old_station,
												 capacity=row.capacity,
												 scenario_year=scenario_year,
												 customer=index)

		return remaining_clients, empty_trafo_slots

	def station_capacity_check(self, essim_substations, stedin_capacities, scenario_year):

		self.essim_substations.sort_values(by='Stedin', inplace=True)
		orgLength = len(self.essim_substations)
		for index, row in self.essim_substations.iterrows():
			station = row.Stedin
			station_initials = station[0:5]
			station_2 = station_initials + '_2'
			station_3 = station_initials + '_3'
			station_4 = station_initials + '_4'
			station_5 = station_initials + '_5'

			station66 = station_initials[0:3] + '66'
			station66_2 = station66 + '_2'
			station66_3 = station66 + '_3'
			station66_4 = station66 + '_4'
			station66_5 = station66 + '_5'

			station25 = station_initials[0:3] + '25'
			station25_2 = station25 + '_2'
			station25_3 = station25 + '_3'
			station25_4 = station25 + '_4'
			station25_5 = station25 + '_5'

			station66_list = [station66, station66_2, station66_3, station66_4, station66_5]
			station25_list = [station25, station25_2, station25_3, station25_4, station25_5]

			if self.stedin_capacities['substation [t-1]'].str.contains(station_2).any() or self.essim_substations[
				'Stedin'].str.contains(station_2).any():
				occupied_station_capacity_2 = abs(
					self.stedin_capacities.loc[
						self.stedin_capacities['substation [t-1]'] == station_2, 'capacity']).sum() * \
											  self.strategy_config['simultaneity_factor']

				potential_check_2, no_trafos_2, new_total_station_capacity_2, installed_capacity_2 \
					= self.expansion_potential_check(self.essim_substations, self.stedin_capacities, station=station_2)

				empty_trafo_slots_2 = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
					self.essim_substations.Stedin == station_2]

			if self.stedin_capacities['substation [t-1]'].str.contains(station_3).any() or self.essim_substations[
				'Stedin'].str.contains(station_3).any():
				occupied_station_capacity_3 = abs(
					self.stedin_capacities.loc[
						self.stedin_capacities['substation [t-1]'] == station_3, 'capacity']).sum() * \
											  self.strategy_config['simultaneity_factor']

				potential_check_3, no_trafos_3, new_total_station_capacity_3, installed_capacity_3 \
					= self.expansion_potential_check(self.essim_substations, self.stedin_capacities, station=station_3)

				empty_trafo_slots_3 = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
					self.essim_substations.Stedin == station_3]

			if self.stedin_capacities['substation [t-1]'].str.contains(station_4).any() or self.essim_substations[
				'Stedin'].str.contains(station_4).any():
				occupied_station_capacity_4 = abs(
					self.stedin_capacities.loc[
						self.stedin_capacities['substation [t-1]'] == station_4, 'capacity']).sum() * \
											  self.strategy_config['simultaneity_factor']

				potential_check_4, no_trafos_4, new_total_station_capacity_4, installed_capacity_4 \
					= self.expansion_potential_check(self.essim_substations, self.stedin_capacities, station=station_4)

				empty_trafo_slots_4 = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
					self.essim_substations.Stedin == station_4]

			if self.stedin_capacities['substation [t-1]'].str.contains(station_5).any() or self.essim_substations[
				'Stedin'].str.contains(station_5).any():
				occupied_station_capacity_5 = abs(
					self.stedin_capacities.loc[
						self.stedin_capacities['substation [t-1]'] == station_5, 'capacity'].sum()) * \
											  self.strategy_config['simultaneity_factor']

				potential_check_5, no_trafos_5, new_total_station_capacity_5, installed_capacity_5 \
					= self.expansion_potential_check(self.essim_substations, self.stedin_capacities, station=station_5)

				empty_trafo_slots_5 = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
					self.essim_substations.Stedin == station_5]

			if station in self.stedin_capacities['substation [t-1]'].values:
				occupied_station_capacity = abs(
					self.stedin_capacities.loc[self.stedin_capacities['substation [t-1]'] == station, 'capacity']).sum()

				potential_check, no_trafos, new_total_station_capacity, installed_capacity \
					= self.expansion_potential_check(self.essim_substations, self.stedin_capacities, station=station)

				empty_trafo_slots = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
					self.essim_substations.Stedin == station]

				if abs(occupied_station_capacity * self.strategy_config['simultaneity_factor']) > (
						row.capacity * 1000000):
					if self.strategy_config['strategy_lever'] == 'a':
						if ('66' in station or '50' in station) and '150' not in station and potential_check:

							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif ('66' in station or '50' in station) and station_2 in self.essim_substations.Stedin.values \
								and potential_check_2 and ((empty_trafo_slots_2.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_2 = self.client_allocation_optimization(
								station=station_2, empty_trafo_slots=empty_trafo_slots_2,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)

						elif (
								'66' in station or '50' in station) and '150' not in station and station_3 in self.essim_substations.Stedin.values \
								and potential_check_3 and ((empty_trafo_slots_3.values[0] - no_trafos) >= 0):
							remaining_clients = self.stedin_capacities[
							self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_3 = self.client_allocation_optimization(
							station=station_3, empty_trafo_slots=empty_trafo_slots_3,
							remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
							old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_4 in self.essim_substations.Stedin.values \
								and potential_check_4 and ((empty_trafo_slots_4.values[0] - no_trafos) >= 0):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_4 = self.client_allocation_optimization(
								station=station_4, empty_trafo_slots=empty_trafo_slots_4,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_5 in self.essim_substations.Stedin.values \
								and potential_check_5 and ((empty_trafo_slots_5.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_5 = self.client_allocation_optimization(
								station=station_5, empty_trafo_slots=empty_trafo_slots_5,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_2 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000
							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_2,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_2,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_2, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_3 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_3,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_3,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_3, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif (
								'66' in station or '50' in station) and '150' not in station and station_4 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_4,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_4,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_4, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)



						elif (
								'66' in station or '50' in station) and '150' not in station and station_5 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000
							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_5,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_5,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_5, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)


						elif '25' in station and potential_check:

							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif (
								'66' in station or '50' in station or '25' in station) and '150' not in station and potential_check == False:

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

							station_capacity = self.essim_substations[
								self.essim_substations['Stedin'] == (station)].capacity
							station_capacity = station_capacity.iloc[0]
							overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																			'substation [t-1]'] == station].capacity).sum() / 1000000) *
											self.strategy_config['simultaneity_factor']) - station_capacity

							for station66 in station66_list:
								if station == station66:
									continue
								if overCapacity <= 0:
									break
								if station66 in self.essim_substations.Stedin.values:
									emptySlots = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
										self.essim_substations.Stedin == station66]
									if emptySlots.values[0] > 0:
										remaining_clients, emptySlots = self.client_allocation_optimization(
											station=station66, empty_trafo_slots=emptySlots,
											remaining_clients=remaining_clients, scenario_year=scenario_year,
											mode='existing', old_station=station)

										overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																						'substation [t-1]'] == station].capacity).sum() / 1000000) *
														self.strategy_config['simultaneity_factor']) - station_capacity

							for station66 in station66_list:
								if overCapacity <= 0:
									break
								if station66 not in self.essim_substations.Stedin.values:
									installed_capacity = 0
									no_trafos = 0
									installed_capacity = 0
									installed_capacity = 0
									for index, row in remaining_clients.iterrows():
										if overCapacity > 0:
											largest_client = remaining_clients.iloc[
												[remaining_clients.capacity.argmax()]]
											name_client = largest_client.index.values[0]

											newStationLoad = installed_capacity + abs(largest_client.capacity.values[0])
											if (newStationLoad * self.strategy_config['simultaneity_factor']) < \
													self.strategy_config['maxexpansion_lever']:
												installed_capacity += (abs(largest_client.capacity.values[0]) *
																	   self.strategy_config['simultaneity_factor'])
												customer_capacity = largest_client['capacity'].values[0]

												self.switch_customer(current_station=station, new_station=station66,
																	 customer=name_client,
																	 capacity=customer_capacity,
																	 scenario_year=scenario_year)

												remaining_clients.drop(name_client,
																	   inplace=True)  

												overCapacity -= (abs(customer_capacity) / 1000000)

									no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
									if no_trafos > 3:
										no_trafos = 3
									installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
									installed_capacity = installed_capacity / 1000000

									self.essim_substations.loc[len(self.essim_substations.index)] = [station66,
																									 installed_capacity,
																									 no_trafos]

									self.administrate_investment(scenario_year=scenario_year,
																 station=station66,
																 investment_type='new_station',
																 capacity=0,
																 old_station=station,
																 customer='AlreadyPresent',
																 added_trafos=no_trafos)

							if overCapacity > 0:

								for index, row in remaining_clients.iterrows():
									if overCapacity < 0:
										break
									connected_tennet_station = row.TenneT
									self.stedin_capacities.loc[
										name_client, 'substation [t-1]'] = connected_tennet_station
									customer_capacity = row['capacity']
									overCapacity -= customer_capacity

									self.administrate_investment(investment_type='new_150kVline',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)

									self.administrate_investment(investment_type='removed_line',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)

					if self.strategy_config['strategy_lever'] == 'd':
						if '25' in station and potential_check:

							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif '25' in station and station_2 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_2):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_2 = self.client_allocation_optimization(
								station=station_2, empty_trafo_slots=empty_trafo_slots_2,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif '25' in station and station_3 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_3):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_3 = self.client_allocation_optimization(
								station=station_3, empty_trafo_slots=empty_trafo_slots_3,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif '25' in station and station_4 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_4):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_4 = self.client_allocation_optimization(
								station=station_4, empty_trafo_slots=empty_trafo_slots_4,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)

						elif '25' in station and station_5 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_5):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_5 = self.client_allocation_optimization(
								station=station_5, empty_trafo_slots=empty_trafo_slots_5,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)

						elif ('25' in station and station_2 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_2,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_2,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_2, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)


						elif ('25' in station and station_3 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_3,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_3,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_3, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif ('25' in station and station_4 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_4,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_4,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_4, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif ('25' in station and station_5 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_5,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_5,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_5, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						if ('66' in station or '50' in station) and '150' not in station and potential_check:


							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif ('66' in station or '50' in station) and station_2 in self.essim_substations.Stedin.values \
								and potential_check_2 and ((empty_trafo_slots_2.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_2 = self.client_allocation_optimization(
								station=station_2, empty_trafo_slots=empty_trafo_slots_2,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_3 in self.essim_substations.Stedin.values \
								and potential_check_3 and ((empty_trafo_slots_3.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_3 = self.client_allocation_optimization(
								station=station_3, empty_trafo_slots=empty_trafo_slots_3,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_4 in self.essim_substations.Stedin.values \
								and potential_check_4 and ((empty_trafo_slots_4.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_4 = self.client_allocation_optimization(
								station=station_4, empty_trafo_slots=empty_trafo_slots_4,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_5 in self.essim_substations.Stedin.values \
								and potential_check_5 and ((empty_trafo_slots_5.values[0] - no_trafos) >= 0):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_5 = self.client_allocation_optimization(
								station=station_5, empty_trafo_slots=empty_trafo_slots_5,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_2 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_2,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_2,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_2, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)


						elif (
								'66' in station or '50' in station) and '150' not in station and station_3 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_3,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_3,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_3, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif (
								'66' in station or '50' in station) and '150' not in station and station_4 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_4,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_4,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_4, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)



						elif (
								'66' in station or '50' in station) and '150' not in station and station_5 not in self.essim_substations.Stedin.values and \
								(installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_5,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_5,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_5, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)
						elif (
								'66' in station or '50' in station or '25' in station) and '150' not in station and potential_check == False:

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

							station_capacity = self.essim_substations[
								self.essim_substations['Stedin'] == (station)].capacity
							station_capacity = station_capacity.iloc[0]
							overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																			'substation [t-1]'] == station].capacity).sum() / 1000000) *
											self.strategy_config['simultaneity_factor']) - station_capacity

							if '25' in station:
								for station25 in station25_list:
									if station == station25:
										continue
									if overCapacity <= 0:
										break
									if station25 in self.essim_substations.Stedin.values:
										emptySlots = self.strategy_config['max_trafos'] - \
													 self.essim_substations.trafos.loc[
														 self.essim_substations.Stedin == station25]
										if emptySlots.values[0] > 0:
											remaining_clients, emptySlots = self.client_allocation_optimization(
												station=station25, empty_trafo_slots=emptySlots,
												remaining_clients=remaining_clients, scenario_year=scenario_year,
												mode='existing', old_station=station)

											overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																							'substation [t-1]'] == station].capacity).sum() / 1000000) *
															self.strategy_config[
																'simultaneity_factor']) - station_capacity

								for station25 in station25_list:
									if overCapacity <= 0:
										break
									if station25 not in self.essim_substations.Stedin.values:
										installed_capacity = 0
										no_trafos = 0
										installed_capacity = 0
										installed_capacity = 0
										for index, row in remaining_clients.iterrows():
											if overCapacity > 0:
												largest_client = remaining_clients.iloc[
													[remaining_clients.capacity.argmax()]]
												name_client = largest_client.index.values[0]

												newStationLoad = installed_capacity + abs(
													largest_client.capacity.values[0])
												if (newStationLoad * self.strategy_config['simultaneity_factor']) < \
														self.strategy_config['maxexpansion_lever']:
													installed_capacity += (abs(largest_client.capacity.values[0]) *
																		   self.strategy_config['simultaneity_factor'])
													customer_capacity = largest_client['capacity'].values[0]

													self.switch_customer(current_station=station, new_station=station25,
																		 customer=name_client,
																		 capacity=customer_capacity,
																		 scenario_year=scenario_year)

													remaining_clients.drop(name_client,
																		   inplace=True) 
													overCapacity -= (abs(customer_capacity) / 1000000)

										no_trafos = math.ceil(
											installed_capacity / self.strategy_config['blocksize_lever'])
										if no_trafos > 3:
											no_trafos = 3
										installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
										installed_capacity = installed_capacity / 1000000

										self.essim_substations.loc[len(self.essim_substations.index)] = [station25,
																										 installed_capacity,
																										 no_trafos]

										self.administrate_investment(scenario_year=scenario_year,
																	 station=station25,
																	 investment_type='new_station',
																	 capacity=0,
																	 old_station=station,
																	 customer='AlreadyPresent',
																	 added_trafos=no_trafos)

							if overCapacity > 0:
								for station66 in station66_list:
									if station == station66:
										continue
									if overCapacity <= 0:
										break
									if station66 in self.essim_substations.Stedin.values:
										emptySlots = self.strategy_config['max_trafos'] - \
													 self.essim_substations.trafos.loc[
														 self.essim_substations.Stedin == station66]
										if emptySlots.values[0] > 0:
											remaining_clients, emptySlots = self.client_allocation_optimization(
												station=station66, empty_trafo_slots=emptySlots,
												remaining_clients=remaining_clients, scenario_year=scenario_year,
												mode='existing', old_station=station)

											overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																							'substation [t-1]'] == station].capacity).sum() / 1000000) *
															self.strategy_config[
																'simultaneity_factor']) - station_capacity

								for station66 in station66_list:
									if overCapacity <= 0:
										break
									if station66 not in self.essim_substations.Stedin.values:
										installed_capacity = 0
										no_trafos = 0
										installed_capacity = 0
										installed_capacity = 0
										for index, row in remaining_clients.iterrows():
											if overCapacity > 0:
												largest_client = remaining_clients.iloc[
													[remaining_clients.capacity.argmax()]]
												name_client = largest_client.index.values[0]

												newStationLoad = installed_capacity + abs(
													largest_client.capacity.values[0])
												if (newStationLoad * self.strategy_config['simultaneity_factor']) < \
														self.strategy_config['maxexpansion_lever']:
													installed_capacity += (abs(largest_client.capacity.values[0]) *
																		   self.strategy_config['simultaneity_factor'])
													customer_capacity = largest_client['capacity'].values[0]

													self.switch_customer(current_station=station, new_station=station66,
																		 customer=name_client,
																		 capacity=customer_capacity,
																		 scenario_year=scenario_year)

													remaining_clients.drop(name_client,
																		   inplace=True)  
													overCapacity -= (abs(customer_capacity) / 1000000)

										no_trafos = math.ceil(
											installed_capacity / self.strategy_config['blocksize_lever'])
										if no_trafos > 3:
											no_trafos = 3
										installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
										installed_capacity = installed_capacity / 1000000

										self.essim_substations.loc[len(self.essim_substations.index)] = [station66,
																										 installed_capacity,
																										 no_trafos]

										self.administrate_investment(scenario_year=scenario_year,
																	 station=station66,
																	 investment_type='new_station',
																	 capacity=0,
																	 old_station=station,
																	 customer='AlreadyPresent',
																	 added_trafos=no_trafos)

							if overCapacity > 0:
								for index, row in remaining_clients.iterrows():
									if overCapacity < 0:
										break
									connected_tennet_station = row.TenneT
									self.stedin_capacities.loc[
										name_client, 'substation [t-1]'] = connected_tennet_station
									customer_capacity = row['capacity']
									overCapacity -= customer_capacity

									self.administrate_investment(investment_type='new_150kVline',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)

									self.administrate_investment(investment_type='removed_line',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)

					if self.strategy_config['strategy_lever'] == 'b' or self.strategy_config['strategy_lever'] == 'c':
						if '25' in station and potential_check:
							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif '25' in station and station_2 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_2):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_2 = self.client_allocation_optimization(
								station=station_2, empty_trafo_slots=empty_trafo_slots_2,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif '25' in station and station_3 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_3):
							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_3 = self.client_allocation_optimization(
								station=station_3, empty_trafo_slots=empty_trafo_slots_3,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)


						elif '25' in station and station_4 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_4):
							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_4 = self.client_allocation_optimization(
								station=station_4, empty_trafo_slots=empty_trafo_slots_4,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)

						elif '25' in station and station_5 in self.essim_substations.Stedin.values \
								and installed_capacity < (
								self.strategy_config['maxexpansion_lever'] - occupied_station_capacity_5):
							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							remaining_clients, empty_trafo_slots_5 = self.client_allocation_optimization(
								station=station_5, empty_trafo_slots=empty_trafo_slots_5,
								remaining_clients=remaining_clients, scenario_year=scenario_year, mode='existing',
								old_station=station)

						elif ('25' in station and station_2 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_2,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_2,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_2, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)


						elif ('25' in station and station_3 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_3,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_3,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_3, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif ('25' in station and station_4 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_4,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_4,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_4, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif ('25' in station and station_5 not in self.essim_substations.Stedin.values and
							  (installed_capacity) <= (self.strategy_config['maxexpansion_lever'] / 1000000)):


							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

								installed_capacity = abs(remaining_clients['capacity']).sum()
								no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
								installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
								installed_capacity = installed_capacity / 1000000

							if installed_capacity > 0:
								self.essim_substations.loc[len(self.essim_substations.index)] = [station_5,
																								 installed_capacity,
																								 no_trafos]

								self.administrate_investment(scenario_year=scenario_year,
															 station=station_5,
															 investment_type='new_station',
															 capacity=0,
															 old_station=station,
															 customer='AlreadyPresent',
															 added_trafos=no_trafos)

								self.client_allocation_optimization(station=station_5, empty_trafo_slots=no_trafos,
																	remaining_clients=remaining_clients,
																	scenario_year=scenario_year, mode='allocateOnly',
																	old_station=station)

						elif ('66' in station or '50' in station) and '150' not in station and potential_check:

							self.essim_substations.loc[ \
								self.essim_substations.Stedin == station, 'capacity'] = new_total_station_capacity

							self.administrate_investment(station=station, investment_type='added_trafo',
														 scenario_year=scenario_year, added_trafos=no_trafos)

							self.essim_substations.loc[self.essim_substations.Stedin == station, 'trafos'] += no_trafos

							logging.debug(f'station {station} upgraded with {no_trafos} transformators.')

						elif '25' in station and potential_check == False:

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

							station_capacity = self.essim_substations[
								self.essim_substations['Stedin'] == (station)].capacity
							station_capacity = station_capacity.iloc[0]
							overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																			'substation [t-1]'] == station].capacity).sum() / 1000000) *
											self.strategy_config['simultaneity_factor']) - station_capacity

							for station25 in station25_list:
								if station == station25:
									continue
								if overCapacity <= 0:
									break
								if station25 in self.essim_substations.Stedin.values:
									emptySlots = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
										self.essim_substations.Stedin == station25]
									if emptySlots.values[0] > 0:
										remaining_clients, emptySlots = self.client_allocation_optimization(
											station=station25, empty_trafo_slots=emptySlots,
											remaining_clients=remaining_clients, scenario_year=scenario_year,
											mode='existing', old_station=station)

										overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																						'substation [t-1]'] == station].capacity).sum() / 1000000) *
														self.strategy_config['simultaneity_factor']) - station_capacity

							for station25 in station25_list:
								if overCapacity <= 0:
									break
								if station25 not in self.essim_substations.Stedin.values:
									installed_capacity = 0
									no_trafos = 0
									installed_capacity = 0
									installed_capacity = 0
									for index, row in remaining_clients.iterrows():
										if overCapacity > 0:
											largest_client = remaining_clients.iloc[
												[remaining_clients.capacity.argmax()]]
											name_client = largest_client.index.values[0]

											newStationLoad = installed_capacity + abs(largest_client.capacity.values[0])
											if (newStationLoad * self.strategy_config['simultaneity_factor']) < \
													self.strategy_config['maxexpansion_lever']:
												installed_capacity += (abs(largest_client.capacity.values[0]) *
																	   self.strategy_config['simultaneity_factor'])
												customer_capacity = largest_client['capacity'].values[0]

												self.switch_customer(current_station=station, new_station=station25,
																	 customer=name_client,
																	 capacity=customer_capacity,
																	 scenario_year=scenario_year)

												remaining_clients.drop(name_client,
																	   inplace=True)  
												overCapacity -= (abs(customer_capacity) / 1000000)

									no_trafos = math.ceil(installed_capacity / self.strategy_config['blocksize_lever'])
									if no_trafos > 3:
										no_trafos = 3
									installed_capacity = no_trafos * self.strategy_config['blocksize_lever']
									installed_capacity = installed_capacity / 1000000

									self.essim_substations.loc[len(self.essim_substations.index)] = [station25,
																									 installed_capacity,
																									 no_trafos]

									self.administrate_investment(scenario_year=scenario_year,
																 station=station25,
																 investment_type='new_station',
																 capacity=0,
																 old_station=station,
																 customer='AlreadyPresent',
																 added_trafos=no_trafos)

							if overCapacity > 0:
								name_client = largest_client.index.values[0]
								if station66 in self.essim_substations.Stedin.values:
									installed_capacity = abs(self.stedin_capacities[self.stedin_capacities[
																						'substation [t-1]'] == station66].capacity).sum()
									newStationLoad = installed_capacity + abs(largest_client.capacity.values[0])
									emptySlots = self.strategy_config['max_trafos'] - self.essim_substations.trafos.loc[
										self.essim_substations.Stedin == station66]
									remaining_clients, emptySlots = self.client_allocation_optimization(
										station=station66, empty_trafo_slots=emptySlots,
										remaining_clients=remaining_clients, scenario_year=scenario_year,
										mode='existing', old_station=station)
									overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																					'substation [t-1]'] == station].capacity).sum() / 1000000) *
													self.strategy_config['simultaneity_factor']) - station_capacity

							if overCapacity > 0:
								for index, row in remaining_clients.iterrows():
									if overCapacity < 0:
										break
									connected_tennet_station = row.TenneT
									self.stedin_capacities.loc[index, 'substation [t-1]'] = connected_tennet_station
									customer_capacity = row['capacity']
									overCapacity -= customer_capacity

									self.administrate_investment(investment_type='new_150kVline',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)

									self.administrate_investment(investment_type='removed_line',
																 old_station=station,
																 capacity=customer_capacity,
																 scenario_year=scenario_year,
																 customer=index)


						elif (
								'66' in station or '50' in station) and '150' not in station and potential_check == False:

							station_capacity = self.essim_substations[
								self.essim_substations['Stedin'] == (station)].capacity
							station_capacity = station_capacity.iloc[0]
							overCapacity = ((abs(self.stedin_capacities[self.stedin_capacities[
																			'substation [t-1]'] == station].capacity).sum() / 1000000) *
											self.strategy_config['simultaneity_factor']) - station_capacity

							remaining_clients = self.stedin_capacities[
								self.stedin_capacities['substation [t-1]'] == station]

							if empty_trafo_slots.values[0] > 0:
								remaining_clients, empty_trafo_slots = self.client_allocation_optimization(
									station=station, empty_trafo_slots=empty_trafo_slots,
									remaining_clients=remaining_clients, scenario_year=scenario_year)

							for index, row in remaining_clients.iterrows():
								if overCapacity < 0:
									break
								connected_tennet_station = row.TenneT
								self.stedin_capacities.loc[index, 'substation [t-1]'] = connected_tennet_station
								customer_capacity = row['capacity']
								overCapacity -= customer_capacity

								self.administrate_investment(investment_type='new_150kVline',
															 old_station=station,
															 capacity=customer_capacity,
															 scenario_year=scenario_year,
															 customer=index)

								self.administrate_investment(investment_type='removed_line',
															 old_station=station,
															 capacity=customer_capacity,
															 scenario_year=scenario_year,
															 customer=index)

			else:
				logging.debug(f'No customers connected to {station}.')

		return

	def update_stedin_network(self, scenario_year):
		"""Activates customer (re)-allocation- and substation expansion- strategy for one year based on the class its active strategy. Possible strategies are : a) Stedin First, b) BaU proactive, c) TenneT First and d) BaU reactive.
		
		Parameters
		----------
		scenario_year : int
			Specifies the current year.

		Return
		----------
		essim_substations : Dataframe
			Dataframe that contains data about the infrastructure stations with columns : Stedin, capacity (in MW) and trafo's. The Dataframe is also stored in the class its attributes.

		stedin_capacities : Dataframe
			Dataframe that contains customer-infrastructure relations with clients on the index and with columns : substation, TenneT, capacity (in W) and sector. The substation indicates the connected station. The Dataframe is also stored in the class its attributes. 
			and TenneT represents the respective upstream station."""

		if self.strategy_config['strategy_lever'] in ['a', 'b', 'd']: 
			self.previousEssim = copy.deepcopy(self.essim_substations)
			self.previousStedin = copy.deepcopy(self.stedin_capacities)
			self.client_capacity_check_stedin(scenario_year)
			essim_substations = self.essim_substations
			stedin_capacities = self.stedin_capacities  
			self.station_capacity_check(essim_substations, stedin_capacities, scenario_year)
			essim_substations = self.essim_substations
			stedin_capacities = self.stedin_capacities
		else: 
			essim_substations = self.essim_substations.copy(deep=True)
			stedin_capacities = self.stedin_capacities.copy(deep=True)  
			self.previousEssim = copy.deepcopy(self.essim_substations)
			self.previousStedin = copy.deepcopy(self.stedin_capacities)
			if scenario_year == 2022:
				scenario_year += 3
			else:
				scenario_year += 5
			self.client_capacity_check_stedin(scenario_year)
			self.station_capacity_check(essim_substations, stedin_capacities,
										scenario_year)  
		logging.debug('Updated Stedin network and Gasunie dependency integration for {}'.format(scenario_year))

		
		return essim_substations, stedin_capacities
