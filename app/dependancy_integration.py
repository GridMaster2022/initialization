import esdl
import logging


def hvision_check(energy_system, hvision_check):
    """Inspects if the H-vision is realised in specific scenario year. 

    Parameters
    ----------
    energy_system : esdl.Instance
        Object that contains details of the energy customers/suppliers and their assets in the energy system in a specific scenario year.
    hvision_check : bool
        Specifies the presense of H-vision. 

    Return
    ----------
    hvision_check : bool
        Specifies the presense of H-vision."""
    for element in energy_system.eAllContents():
        if isinstance(element, esdl.GenericConversion):
            if "HVision_ATR" in element.name:
                hvision_check = True
                break

    return hvision_check


def update_gasunie_networks(year, invest_path, energy_system, gasunie_asset_node_relations, gasunie_network_ids,
                            gasunie_invest_paths):
    """Alters investmentpath based on scenario developments and subsequently retrieves the specific network ID and respective present infrastructure pipeline based on the investment path and scenario year.

    Parameters 
    ----------
    year : int
        Specifies current scenario year.
    invest_path : int
        Specifies the current investment path.
    energy_system : esdl.Instance
        Object that contains details of the energy customers/suppliers and their assets in the energy system in a specific scenario year.
    gasunie_asset_node_relations : Dataframe
        Customer-infrastructure connection relations of the gas network.
    gasunie_network_ids : Dataframe
        Networkmodel booleans that indicate presence of specific infrastructure pipelines.
    gasunie_invest_paths : Dataframe
        Investpath-networkmodel relations over the years for the gas network.

    Return
    ----------
    invest_path : int
        The altered investment pathway.
    network_id : int
        The altered network ID
    gasunie_network_booleans : Series
        Presence of the different infrastructure pipelines indicated with booleans."""

    if invest_path < 41: 
        invest_path = gasunie_investpath_alteration(energy_system=energy_system, invest_path=invest_path,
                                                            scenario_year=year)
        network_id, gasunie_network_booleans = retrieve_network_data(year=year,
                                                                     invest_path=invest_path,
                                                                     gasunie_asset_node_relations=gasunie_asset_node_relations,
                                                                     gasunie_invest_paths=gasunie_invest_paths,
                                                                     gasunie_network_ids=gasunie_network_ids)

    elif invest_path > 40:
        network_id, gasunie_network_booleans = retrieve_network_data(year=year,
                                                                     invest_path=invest_path,
                                                                     gasunie_asset_node_relations=gasunie_asset_node_relations,
                                                                     gasunie_invest_paths=gasunie_invest_paths,
                                                                     gasunie_network_ids=gasunie_network_ids)

    return invest_path, network_id, gasunie_network_booleans 


def gasunie_investpath_alteration(energy_system, invest_path, scenario_year):
    """Alters the investment path in case a specific scenario developments has taken place.

    Parameters 
    ----------
    energy_system : esdl.Instance
        Object that contains details of the energy customers/suppliers and their assets in the energy system in a specific scenario year.
    invest_path : int
        Specifies the current investment path. 
    scenario_year : int
        Specifies current scenario year.

    Return
    ----------
    invest_path : int
        Specifies the altered investment path."""
    for element in energy_system.eAllContents():
        if isinstance(element, esdl.GasDemand) and element.name == 'BuiltEnvironment':
            if element.port[0].carrier.id in ['E', 'H2_local', 'H2_Hvision', 'H2_new', 'LTH', 'HTH']:
                logging.debug(f'The {element.name} consumes {element.port[0].carrier.id}. Accordinlgy, 50% of the of the HTL G backbone will become availble for the transport of hydrogen.')
                if scenario_year == 2040:
                    invest_path += 40
                if scenario_year == 2045:
                    invest_path += 80
                if scenario_year == 2050:
                    invest_path += 120
                logging.debug(f'he {element.name} consumes {element.port[0].carrier.id}. Accordingly, the invest path is altered to {invest_path}.')
            else:
                invest_path = invest_path

    return invest_path


def retrieve_network_data(year, invest_path, gasunie_asset_node_relations, gasunie_invest_paths, gasunie_network_ids):
    """Retrieves network ID and presents infrastructure pipelines belonging the specified investment path in the specific scenario year.

    Parameters
    ----------
    year : int
        Specifies current scenario year.
    invest_path : int
        Specifies the current investment path.
    gasunie_asset_node_relations : Dataframe
        Customer-infrastructure connection relations of the gas network.
    gasunie_invest_paths : Dataframe
        Investpath-networkmodel relations over the years for the gas network.
    gasunie_network_ids : Dataframe
        Networkmodel booleans that indicate presence of specific infrastructure pipelines.

    Return
    ----------
    network_id : int
        Specifies network ID belonging to the specified investment pahtway for the specified scenario year.
    gasunie_network_booleans : Series
        Presence of the different infrastructure pipelines indicated with booleans belonging to network ID."""
    network_id = gasunie_invest_paths.loc[invest_path][year]
    gasunie_network_booleans = gasunie_network_ids.loc[network_id]

    return network_id, gasunie_network_booleans


def gasunie_retrieve_asset_node(network_id, relations):
    """Alters investmentpath based on scenario developments and subsequently retrieves the specific network ID and respective present infrastructure pipeline based on the investment path and scenario year.

    Parameters 
    ----------
    network_id : int
        The selected network ID.
    relations : Dataframe
        Customer-infrastructure connection relations of the gas network.

    Return
    ----------
    methane_sites : Dataframe
        The customer-infrastructure connections relations for the methane network.
    hydrogen_sites : Dataframe
        The customer-infrastructure connections relations for the hydrogen network."""
    if network_id in [1, 2, 6]:
        methane_connection = 'Methane Connection 1'
        hydrogen_connection = 'Hydrogen Connection 1'
    elif network_id in [3, 4, 5, 7, 8, 9, 14, 15, 16, 17, 18, 19, 20, 21]:
        methane_connection = 'Methane Connection 2'
        hydrogen_connection = 'Hydrogen Connection 2'
    elif network_id in [10]:
        methane_connection = 'Methane Connection 3'
        hydrogen_connection = 'Hydrogen Connection 3'
    elif network_id in [11, 12, 13, 22, 23, 24, 25]:
        methane_connection = 'Methane Connection 4'
        hydrogen_connection = 'Hydrogen Connection 4'

    methane_sites = relations.reset_index()[['Customer Name', methane_connection]]
    methane_sites = methane_sites.rename(columns={'Customer Name': 'site', 'Methane Connection 1': 'substation'})
    methane_sites = methane_sites[methane_sites.site.notna()]
    hydrogen_sites = relations.reset_index()[['Customer Name', hydrogen_connection]]
    hydrogen_sites = hydrogen_sites.rename(columns={'Customer Name': 'site', 'Hydrogen Connection 1': 'substation'})
    hydrogen_sites = hydrogen_sites[hydrogen_sites.site.notna()]

    return methane_sites, hydrogen_sites


