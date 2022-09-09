import logging
from station_design_module import DataPrep
from dependancy_integration import gasunie_retrieve_asset_node, update_gasunie_networks, retrieve_network_data, \
    hvision_check
import boto3
import json
import pandas as pd
import numpy as np
import copy
import os

# GasUnie data prep
excel_file = 'data/hic_description_final.xlsx'
gasunie_asset_node_relations = pd.read_excel(excel_file, sheet_name='Gasunie_asset_node', header=0, index_col=0,
                                             engine='openpyxl')
gasunie_invest_paths = pd.read_excel(excel_file, sheet_name='Gasunie_investpaths', header=0, index_col=0,
                                     engine='openpyxl')
gasunie_network_ids = pd.read_excel(excel_file, sheet_name='Gasunie_network_ids', header=0, index_col=0,
                                    engine='openpyxl')
invest_model_map = pd.read_csv('data/investments_investments_model_mapping.csv', sep=';', index_col='index', dtype=str)
invest_costs_gasunie = pd.read_excel(excel_file, sheet_name='Gasunie_investcosts', header=0, index_col=0,  
                                     dtype=str, engine='openpyxl')
invest_costs_tennet = pd.read_excel(excel_file, sheet_name='Tennet_investcosts', header=0, index_col=0,  
                                    dtype=str, engine='openpyxl')
invest_costs_tennet.loc[:, "transferred_customers"] = pd.to_numeric(invest_costs_tennet.loc[:, "transferred_customers"]) 
stedin_design_rules = ['a', 'c', 'd']
s3_client = boto3.client('s3')


def initialize(uuid, bucket_name):
    temp_invest_path = copy.deepcopy(gasunie_invest_paths)
    temp_invest_costs_tennet = copy.deepcopy(invest_costs_tennet)
    gasunie_investpaths = [{"gasunieInitialInvestPath": invest_path,
                            "gasunieCurrentInvestPath": invest_path,
                            "initialNetworkId": network_id, "currentNetworkId": network_id}
                           for invest_path, network_id in
                           enumerate(temp_invest_path[2025], 1)][:40]
    logging.info('Starting station design for UUID: {}'.format(uuid))
    for i, stedin_design_rule in enumerate(stedin_design_rules):
        data_prep = DataPrep('data/hic_description_final.xlsx', 'data/2021_hic_description.esdl', stedin_design_rule)
        data_prep.update_stedin_network(2022)
        tennet_dependency_df_dict = {}
        for scenario_year in [2025, 2030, 2035, 2040, 2045, 2050]:
            logging.info('Starting year {} for design rule {} for uuid {}'.format(scenario_year, stedin_design_rule, uuid))
            tennet_dependency_df_dict[scenario_year] = {}
            # Electricity initialization
            response = s3_client.get_object(
                Bucket=bucket_name,
                Key=uuid + '/{}/base.esdl'.format(scenario_year)
            )
            temp_esdl_file = 'tmp/tmp_esdl_{}_{}.esdl'.format(uuid, scenario_year)
            with open(temp_esdl_file, 'wb') as f:
                f.write(response['Body'].read())

            energy_system = data_prep.load_esdl(temp_esdl_file)
            data_prep.alter_e_sites(energy_system)

            essim_substations, stedin_capacities = data_prep.update_stedin_network(scenario_year)

            if 'BritNed_MV' not in stedin_capacities.index:
                data = {'substation [t-1]': ['MVL380'], 'TenneT': ['MVL380'], 'capacity': [0],
                        'sector': ['Exchange_UK']}
                toAdd = pd.DataFrame(data=data, index=['BritNed_MV'])
                stedin_capacities = stedin_capacities.append(toAdd)

            node_exceptions = {'GBW': 'TWG', 'ODL': 'RTP', 'PNS': 'RTP'}

            # extract info from substation
            pattern = "^(?P<station>[a-zA-Z]*)(?P<voltage>[0-9]*)(?P<remaining>.*)$"
            station = stedin_capacities['substation [t-1]'].str.extract(pattern)


            # subset marked voltage levels
            station.voltage = station.voltage.replace(np.nan, 0)
            marked = station[(station.voltage.astype('int64') > 149) & (station.voltage.astype('int64') < 380)]
            marked = marked.station.map(node_exceptions)

            # fillna with original station and add 150kV notation
            marked = marked.fillna(station.station)
            marked = marked + '150'

            # update design
            stedin_capacities['substation [t-1]'].update(marked)

            #alter ID names in order to align with other simulation module data
            stedin_capacities.index = stedin_capacities.index.str.replace('BaseloadStedin_Merwe',
                                                                          'BaseloadStedin_MWW25')
            if 'ShellChem_Per' in stedin_capacities.index and 'ShellRefinery_Per' not in stedin_capacities.index:
                stedin_capacities.index = stedin_capacities.index.str.replace('ShellChem_Per', 'ShellRefinery_Per')

            #save files to designated location
            stedin_capacities_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(scenario_year) + \
                                       '/stedinDesigns/' + str(stedin_design_rule) + '/essim_sites.csv.gz'
            stedin_capacities.to_csv(stedin_capacities_s3_key, compression='gzip', sep=';', decimal='.')

            investment_database_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(
                scenario_year) + '/stedinDesigns/' + str(stedin_design_rule) + '/investment_database.csv.gz'
            data_prep.investment_database.to_csv(investment_database_s3_key, compression='gzip', sep=';', decimal='.')

            essim_substations_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(scenario_year) + \
                                       '/stedinDesigns/' + str(stedin_design_rule) + '/essim_substations.csv.gz'
            essim_substations.to_csv(essim_substations_s3_key, compression='gzip', sep=';', decimal='.')

            if i == 0:
                # Gasunie initialization
                for j, invest_path in enumerate(gasunie_investpaths):
                    if invest_path['gasunieCurrentInvestPath'] < 41:
                        altered_invest_path, network_id, gasunie_network_booleans = update_gasunie_networks(
                            scenario_year,
                            invest_path[
                                'gasunieCurrentInvestPath'],
                            energy_system,
                            gasunie_asset_node_relations,
                            gasunie_network_ids,
                            gasunie_invest_paths)
                        gasunie_investpaths[j]['gasunieCurrentInvestPath'] = altered_invest_path
                        gasunie_investpaths[j]['currentNetworkId'] = network_id
                    else:
                        altered_invest_path = invest_path['gasunieCurrentInvestPath']
                        network_id, gasunie_network_booleans = retrieve_network_data(scenario_year, altered_invest_path,
                                                                                     gasunie_asset_node_relations,
                                                                                     gasunie_invest_paths,
                                                                                     gasunie_network_ids)
                        gasunie_investpaths[j]['currentNetworkId'] = network_id
                    if scenario_year == 2050:
                        investpath_final = invest_path['gasunieCurrentInvestPath']
                        investpath_costs = copy.deepcopy(
                            invest_costs_gasunie.loc[
                                investpath_final])
                        if hvision_check(energy_system, False) and invest_path["gasunieInitialInvestPath"] in range(9, 25):
                            investpath_costs['totalCosts_Meuro'] = int(float(investpath_costs["totalCosts_Meuro"])) + 3597
                            investpath_costs['hvision_check'] = True
                        if investpath_final > 40:
                            investpath_costs['buildingEnvironmentSwitch'] = True

                        gasunie_costs_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(scenario_year) + \
                                               '/gasunieInvestmentModels/' + str(invest_path['gasunieInitialInvestPath']) + '_' + str(
                            network_id) + '/gasunie_costs.csv.gz'
                        investpath_costs.to_csv(gasunie_costs_s3_key, compression='gzip', index=False, sep=';', decimal='.')

                    methane_sites, hydrogen_sites = gasunie_retrieve_asset_node(network_id,
                                                                                gasunie_asset_node_relations)

                    essim_hydrogen_sites_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(scenario_year) + \
                                                  '/gasunieInvestmentModels/' + str(invest_path['gasunieInitialInvestPath']) + '_' + str(
                        network_id) + '/essim_hsites.csv.gz' 
                    essim_methane_sites_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(scenario_year) + \
                                                 '/gasunieInvestmentModels/' + str(invest_path['gasunieInitialInvestPath']) + '_' + str(
                        network_id) + '/essim_msites.csv.gz' 
                    methane_sites.to_csv(essim_methane_sites_s3_key, compression='gzip', index=False, sep=';', decimal='.')
                    hydrogen_sites.to_csv(essim_hydrogen_sites_s3_key, compression='gzip', index=False, sep=';', decimal='.')

                for invest_path, network_id in invest_model_map[str(scenario_year)].iteritems():
                    if scenario_year == 2025:
                        tennet_capacities_new, customers_switched = data_prep.tennet_dependency_check(network_id,
                                                                                                      s3_client,
                                                                                                      stedin_capacities)
                        tennet_dependency_df_dict[scenario_year][invest_path] = tennet_capacities_new
                        temp_invest_costs_tennet.loc[invest_path, "transferred_customers"] = [{}]
                        temp_invest_costs_tennet.loc[invest_path, "transferred_customers"].update(
                            {scenario_year: customers_switched})
                    else:
                        previous_year = scenario_year - 5
                        tennet_capacities_old = tennet_dependency_df_dict[previous_year][invest_path]
                        tennet_capacities_old_altered = data_prep.alter_e_sites_tennet(energy_system=energy_system,
                                                                                        tennet_capacities=tennet_capacities_old)

                        tennet_capacities_new, customers_switched = data_prep.tennet_dependency_check(network_id,
                                                                                                        s3_client,
                                                                                                        tennet_capacities_old_altered)
                        tennet_dependency_df_dict[scenario_year][invest_path] = tennet_capacities_new

                        temp_invest_costs_tennet.loc[invest_path, "transferred_customers"].update({scenario_year:customers_switched})


                    if 'BritNed_MV' not in tennet_capacities_new.index:
                        data = {'substation [t-1]': ['MVL380'], 'TenneT': ['MVL380'], 'capacity': [0],
                                'sector': ['Exchange_UK']}
                        toAdd = pd.DataFrame(data=data, index=['BritNed_MV'])
                        tennet_capacities_new = tennet_capacities_new.append(toAdd)
                    tennet_capacities_new.index = tennet_capacities_new.index.str.replace('BaseloadStedin_Merwe',
                                                                                          'BaseloadStedin_MWW25')
                    if 'ShellChem_Per' in tennet_capacities_new.index and 'ShellRefinery_Per' not in tennet_capacities_new.index:
                        tennet_capacities_new.index = tennet_capacities_new.index.str.replace('ShellChem_Per',
                                                                                              'ShellRefinery_Per')
                    essim_sites_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(
                        scenario_year) + '/tennetInvestmentModels/' + \
                                         str(invest_path) + '/essim_sites.csv.gz'
                    tennet_capacities_new.to_csv(essim_sites_s3_key, compression='gzip', sep=';', decimal='.')

                    if scenario_year == 2050:  
                        tennet_invest_costs = temp_invest_costs_tennet.loc[invest_path]
                        tennet_costs_s3_key = 's3://' + bucket_name + '/' + str(uuid) + '/' + str(
                            scenario_year) + '/tennetInvestmentModels/' + \
                                              str(invest_path) + '/invest_costs.csv.gz'
                        tennet_invest_costs.to_csv(tennet_costs_s3_key, compression='gzip', sep=';', decimal='.')

            s3_client.put_object(
                Bucket=bucket_name,
                Key=str(uuid) + '/' + str(scenario_year) + '/' + 'gasunieInvestmentNetworkIndex.json',
                Body=json.dumps(gasunie_investpaths, default=str).encode('utf-8')
            )
        os.remove(temp_esdl_file)
