<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xmi="http://www.omg.org/XMI" xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="b5429925-7071-4ef5-8db7-8843d09bf6f4" description="Energy System of the Rotterdam Harbor Industrial Complex" name="Rotterdam HIC, 2021" xmi:version="2.0">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="a6577e27-93f9-4ba4-9922-0a7f99b8ab08">
    <carriers xsi:type="esdl:Carriers" id="carrs">
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="E"/>
      <carrier xsi:type="esdl:GasCommodity" name="RTL H-gas ODO" id="CH4"/>
      <carrier xsi:type="esdl:GasCommodity" name="Green methane" id="GM">
        <cost xsi:type="esdl:SingleValue" value="162.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="167687f8-0b51-4fc1-9d71-27f56c6e8732" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="RTL G-gas ODO" id="CH4">
        <cost xsi:type="esdl:SingleValue" value="100.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="54e13661-5398-4d3c-af47-4f8eaf77b3ce" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="RTL H-gas Non Odorized" id="CH4">
        <cost xsi:type="esdl:SingleValue" value="100.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="5147348b-173e-4a02-a59c-6d0dc242ff59" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="RTL G-gas Non-Odorized" id="CH4">
        <cost xsi:type="esdl:SingleValue" value="100.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="76b004af-4c3f-4545-9bfa-1632de0c7cb2" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="Head Transport H-gas" id="CH4">
        <cost xsi:type="esdl:SingleValue" value="100.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="de0175e0-21f8-4281-8863-4808633641f8" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="Head Transport G-gas" id="CH4">
        <cost xsi:type="esdl:SingleValue" value="100.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="ee4f69ad-c5de-46b6-a670-6a7833d009df" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:HeatCommodity" name="Steam" id="S"/>
      <carrier xsi:type="esdl:HeatCommodity" name="High temperature heat" id="HTH"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Low temperature heat" id="LTH"/>
      <carrier xsi:type="esdl:GasCommodity" name="Grey Hydrogen" id="H2_local"/>
      <carrier xsi:type="esdl:GasCommodity" name="Blue Hydrogen [H-Vision]" id="H2_Hvision">
        <cost xsi:type="esdl:SingleValue" value="0.5">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="3f263b9b-8223-48c0-b5a8-345332fcd4e5" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="H2_new" id="H2_new">
        <cost xsi:type="esdl:SingleValue" value="22.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PriceInEuros" physicalQuantity="COST" perMultiplier="MEGA" perUnit="WATT" id="9084121e-8be4-4150-8a46-df8504d38c07" unit="EURO"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:EnergyCommodity" name="Refgas" id="RG"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Petcokes" id="PC"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Heavy gasoil" id="HG"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Coal" id="C"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Biomass" id="BM"/>
      <carrier xsi:type="esdl:GasCommodity" name="CO2_Pure" id="CO2_P"/>
      <carrier xsi:type="esdl:GasCommodity" name="CO2_Biogenic" id="CO2_B"/>
      <carrier xsi:type="esdl:GasCommodity" name="CO2_Fossil" id="CO2_F"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Plastic waste" id="PW"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Crude oil" id="CO"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Methanol" id="MeOH"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Oilrest" id="OR"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Res Fuel" id="RF"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Waste" id="W"/>
      <carrier xsi:type="esdl:GasCommodity" name="Fossil Methane" id="CH4"/>
    </carriers>
    <sectors xsi:type="esdl:Sectors" id="976bf6cd-22be-4935-80e5-c4e6e9e02cd5">
      <sector xsi:type="esdl:Sector" name="Harbour Industrial Complex" id="HIC"/>
      <sector xsi:type="esdl:Sector" name="All plant sites which do not require to be labelled with a sector." id="GENERAL"/>
      <sector xsi:type="esdl:Sector" name="Refineries" id="REF"/>
      <sector xsi:type="esdl:Sector" name="Co-existence of the sectors refinery, plastic and synthetic production" id="MIX"/>
      <sector xsi:type="esdl:Sector" name="This sectors produces constant energy for the site it's located on" id="BASEPOWER"/>
      <sector xsi:type="esdl:Sector" name="Central energy production of which it operation is dependent from the market demand" id="FLEXPOWER"/>
      <sector xsi:type="esdl:Sector" name="Chlorine cluster consisting of; Nouryon, Shin Etsu, Huntsman, Hexion Botlek &amp; Pernis, AirProducts and Tronox" id="CHLO"/>
      <sector xsi:type="esdl:Sector" name="Production of (new) hydrogen" id="H2PROD"/>
      <sector xsi:type="esdl:Sector" name="Production of explicitely (blue) hydrogen" id="HVISION"/>
      <sector xsi:type="esdl:Sector" name="Energy infrastructure" id="NET"/>
      <sector xsi:type="esdl:Sector" name="NULL" id="NULL"/>
      <sector xsi:type="esdl:Sector" name="Agriculture" id="Agriculture"/>
      <sector xsi:type="esdl:Sector" name="Buildings" id="Buildings"/>
      <sector xsi:type="esdl:Sector" name="Buildings_HP_Electric" id="Buildings_HP_Electric"/>
      <sector xsi:type="esdl:Sector" name="Buildings_HP_Hybrid" id="Buildings_HP_Hybrid"/>
      <sector xsi:type="esdl:Sector" name="Curtailment" id="Curtailment"/>
      <sector xsi:type="esdl:Sector" name="Exchange_BE" id="Exchange_BE"/>
      <sector xsi:type="esdl:Sector" name="Exchange DE" id="Exchange DE"/>
      <sector xsi:type="esdl:Sector" name="Exchange_DK" id="Exchange_DK"/>
      <sector xsi:type="esdl:Sector" name="Exchange_NO" id="Exchange_NO"/>
      <sector xsi:type="esdl:Sector" name="Exchange_UK" id="Exchange_UK"/>
      <sector xsi:type="esdl:Sector" name="Other" id="Other"/>
      <sector xsi:type="esdl:Sector" name="Heat_Network" id="Heat_Network"/>
      <sector xsi:type="esdl:Sector" name="Household_Battery" id="Household_Battery"/>
      <sector xsi:type="esdl:Sector" name="Household" id="Household"/>
      <sector xsi:type="esdl:Sector" name="Household_HP_Electric" id="Household_HP_Electric"/>
      <sector xsi:type="esdl:Sector" name="Household_HP_Hybrid" id="Household_HP_Hybrid"/>
      <sector xsi:type="esdl:Sector" name="Hydro_Storage" id="Hydro_Storage"/>
      <sector xsi:type="esdl:Sector" name="Industry_Aluminium" id="Industry_Aluminium"/>
      <sector xsi:type="esdl:Sector" name="Industry_Metals" id="Industry_Metals"/>
      <sector xsi:type="esdl:Sector" name="Industry_Other" id="Industry_Other"/>
      <sector xsi:type="esdl:Sector" name="Industry_Refineries" id="Industry_Refineries"/>
      <sector xsi:type="esdl:Sector" name="Industry_Steel" id="Industry_Steel"/>
      <sector xsi:type="esdl:Sector" name="Power_to_Gas" id="Power_to_Gas"/>
      <sector xsi:type="esdl:Sector" name="System_Battery" id="System_Battery"/>
      <sector xsi:type="esdl:Sector" name="Transport_Car" id="Transport_Car"/>
      <sector xsi:type="esdl:Sector" name="Transport_Other" id="Transport_Other"/>
      <sector xsi:type="esdl:Sector" name="Vehicle_Battery" id="Vehicle_Battery"/>
      <sector xsi:type="esdl:Sector" name="Deficit" id="Deficit"/>
      <sector xsi:type="esdl:Sector" name="Exchange_DE" id="Exchange_DE"/>
      <sector xsi:type="esdl:Sector" name="Industry_Chemicals" id="Industry_Chemicals"/>
      <sector xsi:type="esdl:Sector" name="Industry_Food" id="Industry_Food"/>
      <sector xsi:type="esdl:Sector" name="Industry_Paper" id="Industry_Paper"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_CHP" id="Power_Plant_CHP"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Coal" id="Power_Plant_Coal"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Gas_Large" id="Power_Plant_Gas_Large"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Gas_Small" id="Power_Plant_Gas_Small"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Nuclear" id="Power_Plant_Nuclear"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Biomass" id="Power_Plant_Biomass"/>
      <sector xsi:type="esdl:Sector" name="Power_Plant_Other" id="Power_Plant_Other"/>
      <sector xsi:type="esdl:Sector" name="Solar_PV_Buildings" id="Solar_PV_Buildings"/>
      <sector xsi:type="esdl:Sector" name="Solar_PV_Field" id="Solar_PV_Field"/>
      <sector xsi:type="esdl:Sector" name="Solar_PV_Households" id="Solar_PV_Households"/>
      <sector xsi:type="esdl:Sector" name="Wind_Offshore" id="Wind_Offshore"/>
      <sector xsi:type="esdl:Sector" name="Storage" id="Storage"/>
      <sector xsi:type="esdl:Sector" name="Other_Hydrogen_Production" id="Other_Hydrogen_Production"/>
      <sector xsi:type="esdl:Sector" name="Exchange" id="Exchange"/>
      <sector xsi:type="esdl:Sector" name="Households" id="Households"/>
      <sector xsi:type="esdl:Sector" name="Wind_Onshore" id="Wind_Onshore"/>
    </sectors>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="2025_base" id="75c26035-ec85-4c06-9043-d34476bdcec8">
    <area xsi:type="esdl:Area" name="RotterdamHIC" id="RotterdamHIC_area" buildingDensity="308.0">
      <area xsi:type="esdl:Area" name="Neste_MVB" id="Neste_MVB_area" buildingDensity="5.0">
        <asset xsi:type="esdl:Building" name="Neste_MVB" sector="Industry_Chemicals" id="Neste_MVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Neste_MVB" sector="Industry_Chemicals" id="D2_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D2_E_IP1" connectedTo="Neste_MVB_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="569fc78b-7bde-4fd2-a99e-e11651df5c77" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Neste_MVB" sector="Industry_Chemicals" id="D2_H2_local" power="119000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_local" id="D2_H2_local_IP1" connectedTo="C31OP1 C32OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="119000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0249f9a9-2025-423e-94e7-44ba45dd48d7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Neste_MVB" sector="Industry_Chemicals" id="D2_S" power="16000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D2_S_IP1" connectedTo="C4OP1 C5OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="16000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c9d34932-743c-4843-9831-64a915d0bf34" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CO2_B_Network" sector="Power_Plant_Coal" id="Engie_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Engie_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Engie_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CO2_F_Network" sector="Power_Plant_Coal" id="Engie_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Engie_MVB_CO2_F_Network_IP1" connectedTo="C6OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Engie_MVB_CO2_F_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CO2_B_Network" sector="Industry_Chemicals" id="Neste_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Neste_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Neste_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CO2_F_Network" sector="Industry_Chemicals" id="Neste_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Neste_MVB_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Neste_MVB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CO2_P_Network" sector="Industry_Chemicals" id="Neste_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Neste_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Neste_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Neste_MVB_E_Network" sector="Industry_Chemicals" id="Neste_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Neste_MVB_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D2_E_IP1" id="Neste_MVB_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_GM_Network" sector="Industry_Chemicals" id="Neste_MVB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Neste_MVB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Neste_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_H2_Hvision_Network" sector="Industry_Chemicals" id="Neste_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Neste_MVB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Neste_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_H2_local_Network" sector="Industry_Chemicals" id="Neste_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Neste_MVB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Neste_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_H2_new_Network" sector="Industry_Chemicals" id="Neste_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Neste_MVB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Neste_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Neste_MVB_CH4_Network" sector="Industry_Chemicals" id="Neste_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Neste_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Neste_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.03653144836425" lat="51.9658992017877"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Bungeloders_MVB" id="Bungeloders_MVB_area" buildingDensity="3.0">
        <asset xsi:type="esdl:Building" name="Bungeloders_MVB" sector="Industry_Food" id="Bungeloders_MVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Bungeloders_MVB" sector="Industry_Food" id="D1_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D1_E_IP1" connectedTo="Bungeloders_MVB_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e9b80bf1-f743-4113-a2a9-bd57dd3cc9f6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Bungeloders_MVB" sector="Industry_Food" id="D1_S" power="7000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D1_S_IP1" connectedTo="C1OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ab26a2d8-9de7-4f86-a158-bd2701e72f79" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Bungeloders_MVB_Boiler" controlStrategy="DbD_C1" power="9000000.0" sector="Industry_Food" id="C1" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C1IP1" connectedTo="Bungeloders_MVB_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C1IP2" connectedTo="Bungeloders_MVB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D1_S_IP1" id="C1OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Bungeloders_MVB_CO2_F_Network_IP1" id="C1OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C1" name="InputOutputRelation for Bungeloders_MVB_Boiler" mainPort="C1IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C1IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C1OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C1OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CO2_B_Network" sector="Industry_Food" id="Bungeloders_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Bungeloders_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Bungeloders_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CO2_F_Network" sector="Industry_Food" id="Bungeloders_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Bungeloders_MVB_CO2_F_Network_IP1" connectedTo="C1OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Bungeloders_MVB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CO2_P_Network" sector="Industry_Food" id="Bungeloders_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Bungeloders_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Bungeloders_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Bungeloders_MVB_E_Network" sector="Industry_Food" id="Bungeloders_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Bungeloders_MVB_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D1_E_IP1 C1IP2" id="Bungeloders_MVB_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_GM_Network" sector="Industry_Food" id="Bungeloders_MVB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Bungeloders_MVB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Bungeloders_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_H2_Hvision_Network" sector="Industry_Food" id="Bungeloders_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Bungeloders_MVB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Bungeloders_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_H2_local_Network" sector="Industry_Food" id="Bungeloders_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Bungeloders_MVB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Bungeloders_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_H2_new_Network" sector="Industry_Food" id="Bungeloders_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Bungeloders_MVB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Bungeloders_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Bungeloders_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C1IP1" id="Bungeloders_MVB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Bungeloders_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Bungeloders_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Bungeloders_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Bungeloders_MVB_CH4_Network" sector="Industry_Food" id="Bungeloders_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Bungeloders_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Bungeloders_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.04271125793457" lat="51.9642598021028"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Lyondell_MVB" id="Lyondell_MVB_area" buildingDensity="12.0">
        <asset xsi:type="esdl:Building" name="Lyondell_MVB" sector="Industry_Chemicals" id="Lyondell_MVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Lyondell_MVB" sector="Industry_Chemicals" id="D3_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D3_E_IP1" connectedTo="Lyondell_MVB_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="48afc005-49ed-4efe-bb7b-75ececbaf7ff" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Lyondell_MVB" sector="Industry_Chemicals" id="D3_S" power="234000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D3_S_IP1" connectedTo="C2OP1 C4OP1 C5OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="234000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cc2dd990-86ad-4d19-a8d2-b003569b3df8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Lyondell_MVB_Boiler" controlStrategy="DbD_C2" power="85000000.0" sector="Industry_Chemicals" id="C2" efficiency="0.85" fullLoadHours="7971" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C2IP1" connectedTo="Lyondell_MVB_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C2IP2" connectedTo="Lyondell_MVB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D3_S_IP1" id="C2OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Lyondell_MVB_CO2_F_Network_IP1" id="C2OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C2" name="InputOutputRelation for Lyondell_MVB_Boiler" mainPort="C2IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C2IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C2OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C2OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CO2_B_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Lyondell_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Lyondell_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CO2_F_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Lyondell_MVB_CO2_F_Network_IP1" connectedTo="C2OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Lyondell_MVB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CO2_P_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Lyondell_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Lyondell_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Lyondell_MVB_E_Network" sector="Industry_Chemicals" id="Lyondell_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Lyondell_MVB_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D3_E_IP1 C2IP2" id="Lyondell_MVB_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_GM_Network" sector="Industry_Chemicals" id="Lyondell_MVB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Lyondell_MVB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Lyondell_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_H2_Hvision_Network" sector="Industry_Chemicals" id="Lyondell_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Lyondell_MVB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Lyondell_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_H2_local_Network" sector="Industry_Chemicals" id="Lyondell_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Lyondell_MVB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Lyondell_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_H2_new_Network" sector="Industry_Chemicals" id="Lyondell_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Lyondell_MVB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Lyondell_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C2IP1" id="Lyondell_MVB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_MVB_CH4_Network" sector="Industry_Chemicals" id="Lyondell_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.02339935302734" lat="51.9683846288715"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="BP_EurA" id="BP_EurA_area" buildingDensity="45.0">
        <asset xsi:type="esdl:Building" name="BP_EurA" sector="Industry_Refineries" id="BP_EurA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="BP_EurA" sector="Industry_Refineries" id="D4_E" power="115000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D4_E_IP1" connectedTo="BP_EurA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="115000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="013f6b1a-4bd9-43c6-a9b3-df86d00084b7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="BP_EurA" sector="Industry_Refineries" id="D4_H2_local" power="172000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_local" id="D4_H2_local_IP1" connectedTo="C31OP1 C32OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="172000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0076586a-6e27-4d8e-82ac-90cdc2d59d16" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="BP_EurA" sector="Industry_Refineries" id="D4_HTH" power="703000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D4_HTH_IP1" connectedTo="C7OP1 C8OP1 C9OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="703000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5c9e1836-d821-4d44-8566-2dfc895e9a13" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="BP_EurA" sector="Industry_Refineries" id="D4_S" power="431000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D4_S_IP1" connectedTo="C10OP1 C11OP1 C12OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="431000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b5bbdbd5-6ce4-47d3-95c7-6d30f9ed67a5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="BP_EurA_RG_Producer" sector="Industry_Refineries" id="R29_RG" power="893000000.0">
            <port xsi:type="esdl:OutPort" carrier="RG" connectedTo="C11IP1 C8IP1" id="R29_RG_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="893000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0a87b0be-b7d0-4904-bdf6-759d0645d263" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="BP_EurA_PC_Producer" sector="Industry_Refineries" id="R29_PC" power="255000000.0">
            <port xsi:type="esdl:OutPort" carrier="PC" connectedTo="C12IP1 C9IP1" id="R29_PC_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="BP_EurA_profile" id="BP_EurA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="255000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="BP_EurA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ac7e970b-0cc3-4a1d-ae2c-a0de8121db17" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Boiler" controlStrategy="DbD_C10" power="87000000.0" sector="Industry_Refineries" id="C10" efficiency="0.85" fullLoadHours="6482" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C10IP1" connectedTo="BP_EurA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C10IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D4_S_IP1" id="C10OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C10OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C10" name="InputOutputRelation for BP_EurA_Boiler" mainPort="C10IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C10IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C10OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C10OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Boiler" controlStrategy="DbS_C11" power="327000000.0" sector="Industry_Refineries" id="C11" efficiency="0.85" fullLoadHours="6482" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C11IP1" connectedTo="R29_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C11IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D4_S_IP1" id="C11OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C11OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C11" name="InputOutputRelation for BP_EurA_Boiler" mainPort="C11IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C11IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C11OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C11OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Boiler" controlStrategy="DbS_C12" power="93000000.0" sector="Industry_Refineries" id="C12" efficiency="0.85" fullLoadHours="6482" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C12IP1" connectedTo="R29_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C12IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D4_S_IP1" id="C12OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C12OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C12" name="InputOutputRelation for BP_EurA_Boiler" mainPort="C12IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C12IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C12OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C12OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Furnace" controlStrategy="DbD_C7" power="150000000.0" sector="Industry_Refineries" id="C7" efficiency="0.8" fullLoadHours="6482" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C7IP1" connectedTo="BP_EurA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C7IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D4_HTH_IP1" id="C7OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C7OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C7" name="InputOutputRelation for BP_EurA_Furnace" mainPort="C7IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C7IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C7OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C7OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Furnace" controlStrategy="DbS_C8" power="566000000.0" sector="Industry_Refineries" id="C8" efficiency="0.8" fullLoadHours="6482" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C8IP1" connectedTo="R29_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C8IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D4_HTH_IP1" id="C8OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C8OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C8" name="InputOutputRelation for BP_EurA_Furnace" mainPort="C8IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C8IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C8OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C8OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="BP_EurA_Furnace" controlStrategy="DbS_C9" power="162000000.0" sector="Industry_Refineries" id="C9" efficiency="0.8" fullLoadHours="6482" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C9IP1" connectedTo="R29_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C9IP2" connectedTo="BP_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D4_HTH_IP1" id="C9OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="BP_EurA_CO2_F_Network_IP1" id="C9OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C9" name="InputOutputRelation for BP_EurA_Furnace" mainPort="C9IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C9IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C9OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C9OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CO2_B_Network" sector="Industry_Refineries" id="BP_EurA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="BP_EurA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="BP_EurA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CO2_F_Network" sector="Industry_Refineries" id="BP_EurA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="BP_EurA_CO2_F_Network_IP1" connectedTo="C10OP3 C11OP3 C12OP3 C7OP3 C8OP3 C9OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="BP_EurA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CO2_P_Network" sector="Industry_Refineries" id="BP_EurA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="BP_EurA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="BP_EurA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BP_EurA_E_Network" sector="Industry_Refineries" id="BP_EurA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BP_EurA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D4_E_IP1 C10IP2 C11IP2 C12IP2 C7IP2 C8IP2 C9IP2" id="BP_EurA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_GM_Network" sector="Industry_Refineries" id="BP_EurA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="BP_EurA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="BP_EurA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_H2_Hvision_Network" sector="Industry_Refineries" id="BP_EurA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="BP_EurA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="BP_EurA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_H2_local_Network" sector="Industry_Refineries" id="BP_EurA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="BP_EurA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="BP_EurA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_H2_new_Network" sector="Industry_Refineries" id="BP_EurA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="BP_EurA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="BP_EurA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="BP_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="BP_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="BP_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="BP_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="BP_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="BP_EurA_CH4_Network" sector="Industry_Refineries" id="BP_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="BP_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C10IP1 C7IP1" id="BP_EurA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.10390853881835" lat="51.94738636698"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Indorama_EurA" id="Indorama_EurA_area" buildingDensity="9.0">
        <asset xsi:type="esdl:Building" name="Indorama_EurA" sector="Industry_Chemicals" id="Indorama_EurA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Indorama_EurA" sector="Industry_Chemicals" id="D5_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D5_E_IP1" connectedTo="C14OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4d2d3a27-1dc8-4e3c-9cda-5f0471bd3523" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Indorama_EurA" sector="Industry_Chemicals" id="D5_S" power="32000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D5_S_IP1" connectedTo="C14OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="32000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a437f7c5-ca94-4072-a3bd-2ec241f736a6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="Indorama_EurA_Cogen" controlStrategy="DbD_C14" power="91000000.0" sector="Power_Plant_CHP" id="C14" efficiency="0.49" fullLoadHours="6044" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C14IP1" connectedTo="Indorama_EurA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D5_S_IP1" id="C14OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D5_E_IP1 Indorama_EurA_E_Network_IP1" id="C14OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Indorama_EurA_CO2_F_Network_IP1" id="C14OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C14" name="InputOutputRelation for Indorama_EurA_Cogen" mainPort="C14IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C14OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C14OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C14OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CO2_B_Network" sector="Industry_Chemicals" id="Indorama_EurA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Indorama_EurA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Indorama_EurA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CO2_F_Network" sector="Industry_Chemicals" id="Indorama_EurA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Indorama_EurA_CO2_F_Network_IP1" connectedTo="C14OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Indorama_EurA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CO2_P_Network" sector="Industry_Chemicals" id="Indorama_EurA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Indorama_EurA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Indorama_EurA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Indorama_EurA_E_Network" sector="Industry_Chemicals" id="Indorama_EurA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Indorama_EurA_E_Network_IP1" connectedTo="C14OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Indorama_EurA_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_GM_Network" sector="Industry_Chemicals" id="Indorama_EurA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Indorama_EurA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Indorama_EurA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_H2_Hvision_Network" sector="Industry_Chemicals" id="Indorama_EurA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Indorama_EurA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Indorama_EurA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_H2_local_Network" sector="Industry_Chemicals" id="Indorama_EurA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Indorama_EurA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Indorama_EurA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_H2_new_Network" sector="Industry_Chemicals" id="Indorama_EurA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Indorama_EurA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Indorama_EurA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Indorama_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Indorama_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Indorama_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Indorama_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Indorama_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Indorama_EurA_CH4_Network" sector="Industry_Chemicals" id="Indorama_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Indorama_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C14IP1" id="Indorama_EurA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.12270545959472" lat="51.9607163785751"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="ADM_EurA" id="ADM_EurA_area">
        <asset xsi:type="esdl:Building" name="ADM_EurA" sector="Industry_Food" id="ADM_EurA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ADM_EurA" sector="Industry_Food" id="D6_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D6_E_IP1" connectedTo="C15OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="282d0bc3-76a2-48ff-aa01-e2dcf44fc146" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ADM_EurA" sector="Industry_Food" id="D6_S" power="53000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D6_S_IP1" connectedTo="C15OP1 C16OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="53000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5e7b4215-90ff-4b29-a8b4-4c2a8773b720" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="ADM_EurA_Cogen" controlStrategy="DbD_C15" power="70000000.0" sector="Power_Plant_CHP" id="C15" efficiency="0.49" fullLoadHours="7971" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C15IP1" connectedTo="ADM_EurA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D6_S_IP1" id="C15OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D6_E_IP1 ADM_EurA_E_Network_IP1" id="C15OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ADM_EurA_CO2_F_Network_IP1" id="C15OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C15" name="InputOutputRelation for ADM_EurA_Cogen" mainPort="C15IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C15OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C15OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C15OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ADM_EurA_Boiler" controlStrategy="DbD_C16" power="23000000.0" sector="Industry_Food" id="C16" efficiency="0.85" fullLoadHours="7971" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C16IP1" connectedTo="ADM_EurA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C16IP2" connectedTo="ADM_EurA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D6_S_IP1" id="C16OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ADM_EurA_CO2_F_Network_IP1" id="C16OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C16" name="InputOutputRelation for ADM_EurA_Boiler" mainPort="C16IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C16IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C16OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C16OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CO2_B_Network" sector="Other" id="ADM_EurA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_B" name="In1" id="ADM_EurA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_B" name="Out1" id="ADM_EurA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CO2_F_Network" sector="Other" id="ADM_EurA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="ADM_EurA_CO2_F_Network_IP1" connectedTo="C15OP3 C16OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="ADM_EurA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CO2_P_Network" sector="Other" id="ADM_EurA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="ADM_EurA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="ADM_EurA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ADM_EurA_E_Network" sector="Industry_Food" id="ADM_EurA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ADM_EurA_E_Network_IP1" connectedTo="C15OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="C16IP2" id="ADM_EurA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_GM_Network" sector="Other" id="ADM_EurA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="ADM_EurA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="ADM_EurA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_H2_Hvision_Network" sector="Industry_Food" id="ADM_EurA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="ADM_EurA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="ADM_EurA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_H2_local_Network" sector="Industry_Food" id="ADM_EurA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="ADM_EurA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="ADM_EurA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_H2_new_Network" sector="Other" id="ADM_EurA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="ADM_EurA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ADM_EurA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ADM_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ADM_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ADM_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ADM_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ADM_EurA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ADM_EurA_CH4_Network" sector="Industry_Food" id="ADM_EurA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ADM_EurA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C15IP1 C16IP1" id="ADM_EurA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.04568943728521" lat="51.896903675981"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Gunvor_EurB" id="Gunvor_EurB_area" buildingDensity="28.0">
        <asset xsi:type="esdl:Building" name="Gunvor_EurB" sector="Industry_Refineries" id="Gunvor_EurB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Gunvor_EurB" sector="Industry_Refineries" id="D7_E" power="25000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D7_E_IP1" connectedTo="Gunvor_EurB_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="25000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f792f25f-40bd-4985-98d2-e668609b0308" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Gunvor_EurB" sector="Industry_Refineries" id="D7_H2_local" power="38000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_local" id="D7_H2_local_IP1" connectedTo="C31OP1 C32OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="38000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1db588a6-bed1-408e-89d2-0aa3d28182bb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Gunvor_EurB" sector="Industry_Refineries" id="D7_HTH" power="112000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D7_HTH_IP1" connectedTo="C17OP1 C18OP1 C19OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="112000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="80ecfe3b-6703-4d5d-9f4c-428de76560cf" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Gunvor_EurB" sector="Industry_Refineries" id="D7_S" power="139000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D7_S_IP1" connectedTo="C20OP1 C21OP1 C22OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="139000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9b3533ec-1852-4593-ab9a-f6e28f22081f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="Gunvor_EurB_RG_Producer" sector="Industry_Refineries" id="R30_RG" power="195000000.0">
            <port xsi:type="esdl:OutPort" carrier="RG" connectedTo="C18IP1 C21IP1" id="R30_RG_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="195000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1f6b5778-f1ec-4a38-94be-4380dccbcc37" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="Gunvor_EurB_PC_Producer" sector="Industry_Refineries" id="R30_PC" power="56000000.0">
            <port xsi:type="esdl:OutPort" carrier="PC" connectedTo="C19IP1 C22IP1" id="R30_PC_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Gunvor_EurB_profile" id="Gunvor_EurB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="56000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Gunvor_EurB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ad503b2f-ffa5-49f1-bad8-f9acaf05606f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Furnace" controlStrategy="DbD_C17" power="24000000.0" sector="Industry_Refineries" id="C17" efficiency="0.8" fullLoadHours="5431" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C17IP1" connectedTo="Gunvor_EurB_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C17IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D7_HTH_IP1" id="C17OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C17OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C17" name="InputOutputRelation for Gunvor_EurB_Furnace" mainPort="C17IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C17IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C17OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C17OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Furnace" controlStrategy="DbS_C18" power="90000000.0" sector="Industry_Refineries" id="C18" efficiency="0.8" fullLoadHours="5431" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C18IP1" connectedTo="R30_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C18IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D7_HTH_IP1" id="C18OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C18OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C18" name="InputOutputRelation for Gunvor_EurB_Furnace" mainPort="C18IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C18IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C18OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C18OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Furnace" controlStrategy="DbS_C19" power="26000000.0" sector="Industry_Refineries" id="C19" efficiency="0.8" fullLoadHours="5431" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C19IP1" connectedTo="R30_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C19IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D7_HTH_IP1" id="C19OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C19OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C19" name="InputOutputRelation for Gunvor_EurB_Furnace" mainPort="C19IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C19IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C19OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C19OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Boiler" controlStrategy="DbD_C20" power="28000000.0" sector="Industry_Refineries" id="C20" efficiency="0.85" fullLoadHours="5431" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C20IP1" connectedTo="Gunvor_EurB_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C20IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D7_S_IP1" id="C20OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C20OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C20" name="InputOutputRelation for Gunvor_EurB_Boiler" mainPort="C20IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C20IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C20OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C20OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Boiler" controlStrategy="DbS_C21" power="105000000.0" sector="Industry_Refineries" id="C21" efficiency="0.85" fullLoadHours="5431" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C21IP1" connectedTo="R30_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C21IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D7_S_IP1" id="C21OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C21OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C21" name="InputOutputRelation for Gunvor_EurB_Boiler" mainPort="C21IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C21IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C21OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C21OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gunvor_EurB_Boiler" controlStrategy="DbS_C22" power="30000000.0" sector="Industry_Refineries" id="C22" efficiency="0.85" fullLoadHours="5431" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C22IP1" connectedTo="R30_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C22IP2" connectedTo="Gunvor_EurB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D7_S_IP1" id="C22OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Gunvor_EurB_CO2_F_Network_IP1" id="C22OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C22" name="InputOutputRelation for Gunvor_EurB_Boiler" mainPort="C22IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C22IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C22OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C22OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CO2_B_Network" sector="Industry_Refineries" id="Gunvor_EurB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Gunvor_EurB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Gunvor_EurB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CO2_F_Network" sector="Industry_Refineries" id="Gunvor_EurB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Gunvor_EurB_CO2_F_Network_IP1" connectedTo="C17OP3 C18OP3 C19OP3 C20OP3 C21OP3 C22OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Gunvor_EurB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CO2_P_Network" sector="Industry_Refineries" id="Gunvor_EurB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Gunvor_EurB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Gunvor_EurB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Gunvor_EurB_E_Network" sector="Industry_Refineries" id="Gunvor_EurB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Gunvor_EurB_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D7_E_IP1 C17IP2 C18IP2 C19IP2 C20IP2 C21IP2 C22IP2" id="Gunvor_EurB_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_GM_Network" sector="Industry_Refineries" id="Gunvor_EurB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Gunvor_EurB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Gunvor_EurB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_H2_Hvision_Network" sector="Industry_Refineries" id="Gunvor_EurB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Gunvor_EurB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Gunvor_EurB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_H2_local_Network" sector="Industry_Refineries" id="Gunvor_EurB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Gunvor_EurB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Gunvor_EurB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_H2_new_Network" sector="Industry_Refineries" id="Gunvor_EurB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Gunvor_EurB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Gunvor_EurB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Gunvor_EurB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Gunvor_EurB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Gunvor_EurB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Gunvor_EurB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Gunvor_EurB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Gunvor_EurB_CH4_Network" sector="Industry_Refineries" id="Gunvor_EurB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Gunvor_EurB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C17IP1 C20IP1" id="Gunvor_EurB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.16999816894531" lat="51.9347403530086"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AlcoEnergy_EurC" id="AlcoEnergy_EurC_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="AlcoEnergy_EurC" sector="Industry_Refineries" id="AlcoEnergy_EurC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="AlcoEnergy_EurC" sector="Industry_Refineries" id="D8_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D8_E_IP1" connectedTo="C23OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="97a1e34a-89d3-481a-a4f8-0d34d082cd09" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="AlcoEnergy_EurC" sector="Industry_Refineries" id="D8_S" power="74000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D8_S_IP1" connectedTo="C23OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="74000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4bd65c7f-67a0-476c-900e-a91049b33a15" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="AlcoEnergy_EurC_Cogen" controlStrategy="DbD_C23" power="150000000.0" sector="Power_Plant_CHP" id="C23" efficiency="0.49" fullLoadHours="4344" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C23IP1" connectedTo="AlcoEnergy_EurC_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D8_S_IP1" id="C23OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D8_E_IP1 AlcoEnergy_EurC_E_Network_IP1" id="C23OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AlcoEnergy_EurC_CO2_F_Network_IP1" id="C23OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C23" name="InputOutputRelation for AlcoEnergy_EurC_Cogen" mainPort="C23IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C23OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C23OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C23OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CO2_B_Network" sector="Other" id="AlcoEnergy_EurC_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AlcoEnergy_EurC_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AlcoEnergy_EurC_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CO2_F_Network" sector="Other" id="AlcoEnergy_EurC_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="AlcoEnergy_EurC_CO2_F_Network_IP1" connectedTo="C23OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AlcoEnergy_EurC_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CO2_P_Network" sector="Other" id="AlcoEnergy_EurC_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AlcoEnergy_EurC_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AlcoEnergy_EurC_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AlcoEnergy_EurC_E_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AlcoEnergy_EurC_E_Network_IP1" connectedTo="C23OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="AlcoEnergy_EurC_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_GM_Network" sector="Other" id="AlcoEnergy_EurC_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AlcoEnergy_EurC_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AlcoEnergy_EurC_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_H2_Hvision_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AlcoEnergy_EurC_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AlcoEnergy_EurC_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_H2_local_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AlcoEnergy_EurC_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AlcoEnergy_EurC_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_H2_new_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AlcoEnergy_EurC_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AlcoEnergy_EurC_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AlcoEnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AlcoEnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AlcoEnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AlcoEnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C23IP1" id="AlcoEnergy_EurC_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AlcoEnergy_EurC_CH4_Network" sector="Industry_Refineries" id="AlcoEnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AlcoEnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AlcoEnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.17969703674316" lat="51.9267487742078"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Caldic_EurC" id="Caldic_EurC_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Caldic_EurC" sector="Industry_Chemicals" id="Caldic_EurC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Caldic_EurC" sector="Industry_Chemicals" id="D9_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D9_E_IP1" connectedTo="Caldic_EurC_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="297f618f-cca0-4c90-9568-237b390a80e0" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Caldic_EurC" sector="Industry_Chemicals" id="D9_S" power="7000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D9_S_IP1" connectedTo="C24OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b5fbb866-1906-4045-a70e-e19d45db898e" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Caldic_EurC_Boiler" controlStrategy="DbD_C24" power="9000000.0" sector="Industry_Chemicals" id="C24" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C24IP1" connectedTo="Caldic_EurC_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C24IP2" connectedTo="Caldic_EurC_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D9_S_IP1" id="C24OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Caldic_EurC_CO2_F_Network_IP1" id="C24OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C24" name="InputOutputRelation for Caldic_EurC_Boiler" mainPort="C24IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C24IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C24OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C24OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CO2_B_Network" sector="Industry_Chemicals" id="Caldic_EurC_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Caldic_EurC_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Caldic_EurC_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CO2_F_Network" sector="Industry_Chemicals" id="Caldic_EurC_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Caldic_EurC_CO2_F_Network_IP1" connectedTo="C24OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Caldic_EurC_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CO2_P_Network" sector="Industry_Chemicals" id="Caldic_EurC_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Caldic_EurC_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Caldic_EurC_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Caldic_EurC_E_Network" sector="Industry_Chemicals" id="Caldic_EurC_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Caldic_EurC_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D9_E_IP1 C24IP2" id="Caldic_EurC_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_GM_Network" sector="Industry_Chemicals" id="Caldic_EurC_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Caldic_EurC_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Caldic_EurC_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_H2_Hvision_Network" sector="Industry_Chemicals" id="Caldic_EurC_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Caldic_EurC_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Caldic_EurC_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_H2_local_Network" sector="Industry_Chemicals" id="Caldic_EurC_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Caldic_EurC_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Caldic_EurC_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_H2_new_Network" sector="Industry_Chemicals" id="Caldic_EurC_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Caldic_EurC_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Caldic_EurC_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Caldic_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Caldic_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Caldic_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Caldic_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C24IP1" id="Caldic_EurC_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Caldic_EurC_CH4_Network" sector="Industry_Chemicals" id="Caldic_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Caldic_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Caldic_EurC_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.18293714523315" lat="51.933443802838"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Exxonmobil_EurC" id="Exxonmobil_EurC_area" buildingDensity="5.0">
        <asset xsi:type="esdl:Building" name="Exxonmobil_EurC" sector="Industry_Chemicals" id="Exxonmobil_EurC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Exxonmobil_EurC" sector="Industry_Chemicals" id="D10_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D10_E_IP1" connectedTo="Exxonmobil_EurC_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8c64332b-a2f6-4bd9-be27-cdb5b59807f2" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Exxonmobil_EurC" sector="Industry_Chemicals" id="D10_S" power="26000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D10_S_IP1" connectedTo="C25OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="26000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="55efcf5f-7bdf-490a-b3a4-c5c9c4a391df" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Exxonmobil_EurC_Boiler" controlStrategy="DbD_C25" power="31000000.0" sector="Industry_Chemicals" id="C25" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C25IP1" connectedTo="Exxonmobil_EurC_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C25IP2" connectedTo="Exxonmobil_EurC_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D10_S_IP1" id="C25OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Exxonmobil_EurC_CO2_F_Network_IP1" id="C25OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C25" name="InputOutputRelation for Exxonmobil_EurC_Boiler" mainPort="C25IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C25IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C25OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C25OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CO2_B_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Exxonmobil_EurC_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Exxonmobil_EurC_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CO2_F_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Exxonmobil_EurC_CO2_F_Network_IP1" connectedTo="C25OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Exxonmobil_EurC_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CO2_P_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Exxonmobil_EurC_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Exxonmobil_EurC_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Exxonmobil_EurC_E_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Exxonmobil_EurC_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D10_E_IP1 C25IP2" id="Exxonmobil_EurC_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_GM_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Exxonmobil_EurC_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Exxonmobil_EurC_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_H2_Hvision_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Exxonmobil_EurC_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Exxonmobil_EurC_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_H2_local_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Exxonmobil_EurC_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Exxonmobil_EurC_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_H2_new_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Exxonmobil_EurC_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Exxonmobil_EurC_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxonmobil_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxonmobil_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxonmobil_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxonmobil_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxonmobil_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxonmobil_EurC_CH4_Network" sector="Industry_Chemicals" id="Exxonmobil_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxonmobil_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C25IP1" id="Exxonmobil_EurC_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.18699264526367" lat="51.9295803904137"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="VPREnergy_EurC" id="VPREnergy_EurC_area" buildingDensity="2.9999999999999982">
        <asset xsi:type="esdl:Building" name="VPREnergy_EurC" sector="Industry_Refineries" id="VPREnergy_EurC_building">
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CO2_B_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="VPREnergy_EurC_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="VPREnergy_EurC_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CO2_F_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="VPREnergy_EurC_CO2_F_Network_IP1" connectedTo=" "/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="VPREnergy_EurC_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CO2_P_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="VPREnergy_EurC_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="VPREnergy_EurC_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="VPREnergy_EurC_E_Network" sector="Industry_Refineries" id="VPREnergy_EurC_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="VPREnergy_EurC_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="  " id="VPREnergy_EurC_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_GM_Network" sector="Industry_Refineries" id="VPREnergy_EurC_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="VPREnergy_EurC_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="VPREnergy_EurC_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_H2_Hvision_Network" sector="Industry_Refineries" id="VPREnergy_EurC_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="VPREnergy_EurC_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="VPREnergy_EurC_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_H2_local_Network" sector="Industry_Refineries" id="VPREnergy_EurC_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="VPREnergy_EurC_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="VPREnergy_EurC_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_H2_new_Network" sector="Industry_Refineries" id="VPREnergy_EurC_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="VPREnergy_EurC_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="VPREnergy_EurC_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="VPREnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="VPREnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="VPREnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="VPREnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="VPREnergy_EurC_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="VPREnergy_EurC_CH4_Network" sector="Industry_Refineries" id="VPREnergy_EurC_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="VPREnergy_EurC_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo=" " id="VPREnergy_EurC_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.22185063362121" lat="51.9109996119477"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="ShellRefinery_Per" id="ShellRefinery_Per_area" buildingDensity="61.0">
        <asset xsi:type="esdl:Building" name="ShellRefinery_Per" sector="Industry_Refineries" id="ShellRefinery_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ShellRefinery_Per" sector="Industry_Refineries" id="D33_E" power="161000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D33_E_IP1" connectedTo="C63OP2 ShellRefinery_Per_E_Network_OP1 C64OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="161000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a5ee68a1-c66f-4408-8a36-f3b3d00e9cd1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="ShellRefinery_Per" sector="Industry_Refineries" id="D33_H2_local" power="621000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_local" id="D33_H2_local_IP1" connectedTo="C62OP1 C65OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="621000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="043d84a7-7b9e-427a-883b-03b02fb726be" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ShellRefinery_Per" sector="Industry_Refineries" id="D33_HTH" power="843000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D33_HTH_IP1" connectedTo="C72OP1 C73OP1 C74OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="843000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f4b92351-a052-4fd3-a744-05cb6577259f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ShellRefinery_Per" sector="Industry_Refineries" id="D33_S" power="533000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D33_S_IP1" connectedTo="C63OP1 C64OP1 C69OP1 C70OP1 C71OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="533000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="bd0dbae2-36bd-4e2e-adfa-8007c85aaf99" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="ShellRefinery_Per_RG_Producer" sector="Industry_Refineries" id="R33_RG" power="1600000000.0">
            <port xsi:type="esdl:OutPort" carrier="RG" connectedTo="C63IP1 C67IP1 C70IP1 C73IP1" id="R33_RG_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1600000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2e51a174-21ee-45e5-9a05-26c985c751f7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="ShellRefinery_Per_PC_Producer" sector="Industry_Refineries" id="R33_PC" power="1024000000.0">
            <port xsi:type="esdl:OutPort" carrier="PC" connectedTo="C64IP1 C68IP1 C71IP1 C74IP1" id="R33_PC_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1024000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="aff2e1c8-6407-4847-a770-2d264c8976f4" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="ShellRefinery_Per_OR_Producer" sector="Industry_Refineries" id="R33_OR" power="783000000.0">
            <port xsi:type="esdl:OutPort" carrier="OR" connectedTo="C65IP1" id="R33_OR_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShellRefinery_Per_profile" id="ShellRefinery_Per_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="783000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShellRefinery_Per_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="43721f74-471d-49f5-b28a-b8ebb86a187a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="ShellRefinery_Per_SMR" controlStrategy="DbD_C62" power="296000000.0" sector="Industry_Refineries" id="C62" efficiency="0.75" fullLoadHours="7008" assetType="SMR">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C62IP1" connectedTo="ShellRefinery_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C62IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D33_H2_local_IP1" id="C62OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="ShellRefinery_Per_CO2_P_Network_IP1" carrier="CO2_P" id="C62OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C62" name="InputOutputRelation for ShellRefinery_Per_SMR" mainPort="C62IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C62IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C62OP1" ratio="1.3333333333333333"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C62OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Boiler" controlStrategy="DbD_C69" power="25000000.0" sector="Industry_Refineries" id="C69" efficiency="0.85" fullLoadHours="7008" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C69IP1" connectedTo="ShellRefinery_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C69IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D33_S_IP1 D34_S_IP1" id="C69OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C69OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C69" name="InputOutputRelation for ShellRefinery_Per_Boiler" mainPort="C69IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C69IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C69OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C69OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Boiler" controlStrategy="DbS_C70" power="92000000.0" sector="Industry_Refineries" id="C70" efficiency="0.85" fullLoadHours="7008" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C70IP1" connectedTo="R33_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C70IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D33_S_IP1 D34_S_IP1" id="C70OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C70OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C70" name="InputOutputRelation for ShellRefinery_Per_Boiler" mainPort="C70IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C70IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C70OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C70OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Boiler" controlStrategy="DbS_C71" power="26000000.0" sector="Industry_Refineries" id="C71" efficiency="0.85" fullLoadHours="7008" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C71IP1" connectedTo="R33_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C71IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D33_S_IP1 D34_S_IP1" id="C71OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C71OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C71" name="InputOutputRelation for ShellRefinery_Per_Boiler" mainPort="C71IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C71IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C71OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C71OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Furnace" controlStrategy="DbD_C72" power="180000000.0" sector="Industry_Refineries" id="C72" efficiency="0.8" fullLoadHours="7008" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C72IP1" connectedTo="ShellRefinery_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C72IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D33_HTH_IP1" id="C72OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C72OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C72" name="InputOutputRelation for ShellRefinery_Per_Furnace" mainPort="C72IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C72IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C72OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C72OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Furnace" controlStrategy="DbS_C73" power="680000000.0" sector="Industry_Refineries" id="C73" efficiency="0.8" fullLoadHours="7008" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C73IP1" connectedTo="R33_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C73IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D33_HTH_IP1" id="C73OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C73OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C73" name="InputOutputRelation for ShellRefinery_Per_Furnace" mainPort="C73IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C73IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C73OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C73OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="ShellRefinery_Per_Furnace" controlStrategy="DbS_C74" power="194000000.0" sector="Industry_Refineries" id="C74" efficiency="0.8" fullLoadHours="7008" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C74IP1" connectedTo="R33_PC_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C74IP2" connectedTo="ShellRefinery_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D33_HTH_IP1" id="C74OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="ShellRefinery_Per_CO2_F_Network_IP1" id="C74OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C74" name="InputOutputRelation for ShellRefinery_Per_Furnace" mainPort="C74IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C74IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C74OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C74OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GenericConversion" name="ShellRefinery_Per_Gasifier_oilrest" controlStrategy="DbS_C65" power="783000000.0" sector="Industry_Refineries" id="C65" efficiency="0.51" fullLoadHours="7008" assetType="Gasifier_oilrest">
            <port xsi:type="esdl:InPort" name="In1" carrier="OR" id="C65IP1" connectedTo="R33_OR_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="ShellRefinery_Per_E_Network_IP1" id="C65OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D33_H2_local_IP1" id="C65OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" connectedTo="ShellRefinery_Per_CO2_P_Network_IP1" carrier="CO2_P" id="C65OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C65" name="InputOutputRelation for ShellRefinery_Per_Gasifier_oilrest" mainPort="C65IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C65OP1" ratio="4.3478260869565215"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C65OP2" ratio="1.9607843137254901"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C65OP3" ratio="3588.8601780074646"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:PowerPlant" name="ShellRefinery_Per_Powergen_baseloadind" power="34000000.0" sector="Power_Plant_Gas_Large" id="C66" efficiency="0.59" fullLoadHours="7008" assetType="Powergen_baseloadind">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C66IP1" connectedTo="ShellRefinery_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="ShellRefinery_Per_E_Network_IP1" id="C66OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="ShellRefinery_Per_CO2_P_Network_IP1" carrier="CO2_P" id="C66OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C66" name="InputOutputRelation for ShellRefinery_Per_Powergen_baseloadind" mainPort="C66IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C66OP1" ratio="1.6949152542372883"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C66OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:PowerPlant" name="ShellRefinery_Per_Powergen_baseloadind" controlStrategy="DbS_C67" power="129000000.0" sector="Power_Plant_Other" id="C67" efficiency="0.59" fullLoadHours="7008" assetType="Powergen_baseloadind">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C67IP1" connectedTo="R33_RG_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="ShellRefinery_Per_E_Network_IP1" id="C67OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="ShellRefinery_Per_CO2_P_Network_IP1" carrier="CO2_P" id="C67OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C67" name="InputOutputRelation for ShellRefinery_Per_Powergen_baseloadind" mainPort="C67IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C67OP1" ratio="1.6949152542372883"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C67OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:PowerPlant" name="ShellRefinery_Per_Powergen_baseloadind" controlStrategy="DbS_C68" power="37000000.0" sector="Power_Plant_Other" id="C68" efficiency="0.59" fullLoadHours="7008" assetType="Powergen_baseloadind">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C68IP1" connectedTo="R33_PC_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="ShellRefinery_Per_E_Network_IP1" id="C68OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="ShellRefinery_Per_CO2_P_Network_IP1" carrier="CO2_P" id="C68OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C68" name="InputOutputRelation for ShellRefinery_Per_Powergen_baseloadind" mainPort="C68IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C68OP1" ratio="1.6949152542372883"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C68OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CO2_B_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="ShellRefinery_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="ShellRefinery_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CO2_F_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="ShellRefinery_Per_CO2_F_Network_IP1" connectedTo="C69OP3 C70OP3 C71OP3 C72OP3 C73OP3 C74OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="ShellRefinery_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CO2_P_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" connectedTo="C62OP3 C65OP3 C66OP3 C67OP3 C68OP3" carrier="CO2_P" id="ShellRefinery_Per_CO2_P_Network_IP1" name="In1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="ShellRefinery_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShellRefinery_Per_E_Network" sector="Industry_Refineries" id="ShellRefinery_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShellRefinery_Per_E_Network_IP1" connectedTo="C65OP1 C66OP1 C67OP1 C68OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D33_E_IP1 C62IP2 C69IP2 C70IP2 C71IP2 C72IP2 C73IP2 C74IP2 D34_E_IP1" id="ShellRefinery_Per_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_GM_Network" sector="Industry_Refineries" id="ShellRefinery_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="ShellRefinery_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="ShellRefinery_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_H2_Hvision_Network" sector="Industry_Refineries" id="ShellRefinery_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="ShellRefinery_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="ShellRefinery_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_H2_local_Network" sector="Industry_Refineries" id="ShellRefinery_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="ShellRefinery_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="ShellRefinery_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_H2_new_Network" sector="Industry_Refineries" id="ShellRefinery_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="ShellRefinery_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ShellRefinery_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellRefinery_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C69IP1 C72IP1 C66IP1" id="ShellRefinery_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellRefinery_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellRefinery_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C62IP1" id="ShellRefinery_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellRefinery_Per_CH4_Network" sector="Industry_Refineries" id="ShellRefinery_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellRefinery_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellRefinery_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.36809539794921" lat="51.880729836645"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Ducor_BotA" id="Ducor_BotA_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Ducor_BotA" sector="Industry_Chemicals" id="Ducor_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Ducor_BotA" sector="Industry_Chemicals" id="D12_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D12_E_IP1" connectedTo="Ducor_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8575e3d8-47c0-4c20-9d0c-3cd60a3ea287" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Ducor_BotA" sector="Industry_Chemicals" id="D12_S" power="28000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D12_S_IP1" connectedTo="C28OP1 C29OP1 C30OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="28000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="631e3eed-f504-44e8-a7be-0f44c1579def" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Ducor_BotA_Boiler" controlStrategy="DbD_C28" power="6000000.0" sector="Industry_Chemicals" id="C28" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C28IP1" connectedTo="Ducor_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C28IP2" connectedTo="Ducor_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D12_S_IP1" id="C28OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Ducor_BotA_CO2_F_Network_IP1" id="C28OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C28" name="InputOutputRelation for Ducor_BotA_Boiler" mainPort="C28IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C28IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C28OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C28OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Ducor_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Ducor_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Ducor_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Ducor_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Ducor_BotA_CO2_F_Network_IP1" connectedTo="C28OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Ducor_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Ducor_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Ducor_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Ducor_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Ducor_BotA_E_Network" sector="Industry_Chemicals" id="Ducor_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Ducor_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D12_E_IP1 C28IP2" id="Ducor_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_GM_Network" sector="Industry_Chemicals" id="Ducor_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Ducor_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Ducor_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Ducor_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Ducor_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Ducor_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_H2_local_Network" sector="Industry_Chemicals" id="Ducor_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Ducor_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Ducor_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_H2_new_Network" sector="Industry_Chemicals" id="Ducor_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Ducor_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Ducor_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Ducor_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Ducor_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Ducor_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Ducor_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C28IP1" id="Ducor_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Ducor_BotA_CH4_Network" sector="Industry_Chemicals" id="Ducor_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Ducor_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Ducor_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.2419672012329" lat="51.8924905967109"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Invista_BotA" id="Invista_BotA_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="Invista_BotA" sector="Industry_Chemicals" id="Invista_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Invista_BotA" sector="Industry_Chemicals" id="D14_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D14_E_IP1" connectedTo="Invista_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3be075a0-c259-4b54-ad3b-07ba353aaa01" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Invista_BotA" sector="Industry_Chemicals" id="D14_S" power="26000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D14_S_IP1" connectedTo="C30OP1 C29OP1 C33OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="26000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e7978ac3-6869-4840-b7ca-eedd9ccd656f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Invista_BotA_Boiler" controlStrategy="DbD_C33" power="5000000.0" sector="Industry_Chemicals" id="C33" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C33IP1" connectedTo="Invista_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C33IP2" connectedTo="Invista_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D14_S_IP1" id="C33OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Invista_BotA_CO2_F_Network_IP1" id="C33OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C33" name="InputOutputRelation for Invista_BotA_Boiler" mainPort="C33IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C33IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C33OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C33OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Invista_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Invista_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Invista_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Invista_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Invista_BotA_CO2_F_Network_IP1" connectedTo="C33OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Invista_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Invista_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Invista_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Invista_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Invista_BotA_E_Network" sector="Industry_Chemicals" id="Invista_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Invista_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D14_E_IP1 C33IP2" id="Invista_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_GM_Network" sector="Industry_Chemicals" id="Invista_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Invista_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Invista_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Invista_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Invista_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Invista_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_H2_local_Network" sector="Industry_Chemicals" id="Invista_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Invista_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Invista_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_H2_new_Network" sector="Industry_Chemicals" id="Invista_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Invista_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Invista_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Invista_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Invista_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Invista_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Invista_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C33IP1" id="Invista_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Invista_BotA_CH4_Network" sector="Industry_Chemicals" id="Invista_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Invista_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Invista_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.25542116165161" lat="51.8878687731486"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Lucite_BotA" id="Lucite_BotA_area">
        <asset xsi:type="esdl:Building" name="Lucite_BotA" sector="Industry_Chemicals" id="Lucite_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Lucite_BotA" sector="Industry_Chemicals" id="D15_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D15_E_IP1" connectedTo="Lucite_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7fbef1c1-d91e-48cf-aac6-5b588956984f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Lucite_BotA" sector="Industry_Chemicals" id="D15_S" power="28000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D15_S_IP1" connectedTo="C30OP1 C29OP1 C75OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="28000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9991444e-dcca-46d7-a26d-bdc3d8d758a6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Lucite_BotA_Boiler" controlStrategy="DbD_C75" power="5000000.0" sector="Industry_Chemicals" id="C75" efficiency="0.85" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C75IP1" connectedTo="Lucite_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C75IP2" connectedTo="Lucite_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D15_S_IP1" id="C75OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Lucite_BotA_CO2_F_Network_IP1" id="C75OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C75" name="InputOutputRelation for Lucite_BotA_Boiler" mainPort="C75IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C75IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C75OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C75OP3" ratio="4907.734589713388"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Lucite_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Lucite_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Lucite_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Lucite_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Lucite_BotA_CO2_F_Network_IP1" connectedTo="C75OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Lucite_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Lucite_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Lucite_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Lucite_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Lucite_BotA_E_Network" sector="Industry_Chemicals" id="Lucite_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Lucite_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D15_E_IP1 C75IP2" id="Lucite_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_GM_Network" sector="Industry_Chemicals" id="Lucite_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Lucite_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Lucite_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Lucite_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Lucite_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Lucite_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_H2_local_Network" sector="Industry_Chemicals" id="Lucite_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Lucite_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Lucite_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_H2_new_Network" sector="Industry_Chemicals" id="Lucite_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Lucite_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Lucite_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lucite_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lucite_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lucite_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lucite_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lucite_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lucite_BotA_CH4_Network" sector="Industry_Chemicals" id="Lucite_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lucite_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C75IP1" id="Lucite_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.25441265106201" lat="51.8860808342501"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Huntsman_BotA" id="Huntsman_BotA_area" buildingDensity="14.0">
        <asset xsi:type="esdl:Building" name="Huntsman_BotA" sector="Industry_Chemicals" id="Huntsman_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Huntsman_BotA" sector="Industry_Chemicals" id="D16_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D16_E_IP1" connectedTo="Huntsman_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3067201-8eae-46e8-bb3a-4eb6baf47ee5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Huntsman_BotA" sector="Industry_Chemicals" id="D16_S" power="23000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D16_S_IP1" connectedTo="C30OP1 C29OP1 C76OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="23000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a85d87f9-0d30-4083-9051-b1766335d5b3" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Huntsman_BotA_Boiler" controlStrategy="DbD_C76" power="5000000.0" sector="Industry_Chemicals" id="C76" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C76IP1" connectedTo="Huntsman_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C76IP2" connectedTo="Huntsman_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D16_S_IP1" id="C76OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Huntsman_BotA_CO2_F_Network_IP1" id="C76OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C76" name="InputOutputRelation for Huntsman_BotA_Boiler" mainPort="C76IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C76IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C76OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C76OP3" ratio="4899.078973153047"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CO2_B_Network" sector="Other" id="Huntsman_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Huntsman_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Huntsman_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CO2_F_Network" sector="Other" id="Huntsman_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Huntsman_BotA_CO2_F_Network_IP1" connectedTo="C76OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Huntsman_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CO2_P_Network" sector="Other" id="Huntsman_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Huntsman_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Huntsman_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Huntsman_BotA_E_Network" sector="Industry_Chemicals" id="Huntsman_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Huntsman_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D16_E_IP1 C76IP2" id="Huntsman_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_GM_Network" sector="Industry_Chemicals" id="Huntsman_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Huntsman_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Huntsman_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Huntsman_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Huntsman_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Huntsman_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_H2_local_Network" sector="Industry_Chemicals" id="Huntsman_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Huntsman_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Huntsman_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_H2_new_Network" sector="Industry_Chemicals" id="Huntsman_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Huntsman_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Huntsman_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Huntsman_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Huntsman_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Huntsman_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Huntsman_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Huntsman_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Huntsman_BotA_CH4_Network" sector="Industry_Chemicals" id="Huntsman_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Huntsman_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C76IP1" id="Huntsman_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.24548625946044" lat="51.8871668500611"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Almatis_BotA" id="Almatis_BotA_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="Almatis_BotA" sector="Industry_Chemicals" id="Almatis_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Almatis_BotA" sector="Industry_Chemicals" id="D17_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D17_E_IP1" connectedTo="Almatis_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a5f4c06c-e9f9-4a5b-a0e1-532036027928" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Almatis_BotA" sector="Industry_Chemicals" id="D17_S" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D17_S_IP1" connectedTo="C34OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="984ac803-3fac-46d4-a9db-534110078892" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Almatis_BotA_Boiler" controlStrategy="DbD_C34" power="12000000.0" sector="Industry_Chemicals" id="C34" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C34IP1" connectedTo="Almatis_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C34IP2" connectedTo="Almatis_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D17_S_IP1" id="C34OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Almatis_BotA_CO2_F_Network_IP1" id="C34OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C34" name="InputOutputRelation for Almatis_BotA_Boiler" mainPort="C34IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C34IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C34OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C34OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CO2_B_Network" sector="Other" id="Almatis_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Almatis_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Almatis_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CO2_F_Network" sector="Other" id="Almatis_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Almatis_BotA_CO2_F_Network_IP1" connectedTo="C34OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Almatis_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CO2_P_Network" sector="Other" id="Almatis_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Almatis_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Almatis_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Almatis_BotA_E_Network" sector="Industry_Chemicals" id="Almatis_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Almatis_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D17_E_IP1 C34IP2" id="Almatis_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_GM_Network" sector="Industry_Chemicals" id="Almatis_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Almatis_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Almatis_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Almatis_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Almatis_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Almatis_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_H2_local_Network" sector="Industry_Chemicals" id="Almatis_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Almatis_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Almatis_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_H2_new_Network" sector="Industry_Chemicals" id="Almatis_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Almatis_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Almatis_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Almatis_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Almatis_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Almatis_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Almatis_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Almatis_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Almatis_BotA_CH4_Network" sector="Industry_Chemicals" id="Almatis_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Almatis_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C34IP1" id="Almatis_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.2396068572998" lat="51.8822000999443"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Climax_BotA" id="Climax_BotA_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Climax_BotA" sector="Industry_Chemicals" id="Climax_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Climax_BotA" sector="Industry_Chemicals" id="D18_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D18_E_IP1" connectedTo="Climax_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="056b6e9a-dc3a-451b-a121-fc8869328c4b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Climax_BotA" sector="Industry_Chemicals" id="D18_S" power="4000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D18_S_IP1" connectedTo="C35OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="4000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e7de7d8d-571d-476b-9c9e-db9d89ecc6e1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Climax_BotA_Boiler" controlStrategy="DbD_C35" power="5000000.0" sector="Industry_Chemicals" id="C35" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C35IP1" connectedTo="Climax_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C35IP2" connectedTo="Climax_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D18_S_IP1" id="C35OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Climax_BotA_CO2_F_Network_IP1" id="C35OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C35" name="InputOutputRelation for Climax_BotA_Boiler" mainPort="C35IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C35IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C35OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C35OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Climax_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Climax_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Climax_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Climax_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Climax_BotA_CO2_F_Network_IP1" connectedTo="C35OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Climax_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Climax_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Climax_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Climax_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Climax_BotA_E_Network" sector="Industry_Chemicals" id="Climax_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Climax_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D18_E_IP1 C35IP2" id="Climax_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_GM_Network" sector="Industry_Chemicals" id="Climax_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Climax_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Climax_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Climax_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Climax_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Climax_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_H2_local_Network" sector="Industry_Chemicals" id="Climax_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Climax_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Climax_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_H2_new_Network" sector="Industry_Chemicals" id="Climax_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Climax_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Climax_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Climax_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Climax_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Climax_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Climax_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Climax_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Climax_BotA_CH4_Network" sector="Industry_Chemicals" id="Climax_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Climax_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C35IP1" id="Climax_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.2396068572998" lat="51.8822000999443"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Lyondell_BotA" id="Lyondell_BotA_area" buildingDensity="9.0">
        <asset xsi:type="esdl:Building" name="Lyondell_BotA" sector="Industry_Chemicals" id="Lyondell_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Lyondell_BotA" sector="Industry_Chemicals" id="D19_E" power="56000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D19_E_IP1" connectedTo="Lyondell_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="56000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="86d0c1c0-91b9-4f6e-849b-a455926945bb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Lyondell_BotA" sector="Industry_Chemicals" id="D19_S" power="168000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D19_S_IP1" connectedTo="C37OP1 C36OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="168000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8ae82053-d7dd-40cb-81a6-68157994548b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="Lyondell_BotA_Cogen" controlStrategy="DbD_C37" power="181000000.0" sector="Power_Plant_CHP" id="C37" efficiency="0.49" fullLoadHours="7997" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C37IP1" connectedTo="Lyondell_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D19_S_IP1" id="C37OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Lyondell_BotA_E_Network_IP1" id="C37OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Lyondell_BotA_CO2_F_Network_IP1" id="C37OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C37" name="InputOutputRelation for Lyondell_BotA_Cogen" mainPort="C37IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C37OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C37OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C37OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Lyondell_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Lyondell_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Lyondell_BotA_CO2_F_Network_IP1" connectedTo="C37OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Lyondell_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Lyondell_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Lyondell_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Lyondell_BotA_E_Network" sector="Industry_Chemicals" id="Lyondell_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Lyondell_BotA_E_Network_IP1" connectedTo="C37OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D19_E_IP1" id="Lyondell_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_GM_Network" sector="Industry_Chemicals" id="Lyondell_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Lyondell_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Lyondell_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Lyondell_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Lyondell_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Lyondell_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_H2_local_Network" sector="Industry_Chemicals" id="Lyondell_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Lyondell_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Lyondell_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_H2_new_Network" sector="Industry_Chemicals" id="Lyondell_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Lyondell_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Lyondell_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C37IP1" id="Lyondell_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Lyondell_BotA_CH4_Network" sector="Industry_Chemicals" id="Lyondell_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Lyondell_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Lyondell_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.25647258758544" lat="51.8767559114499"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AirProducts_BotA" id="AirProducts_BotA_area" buildingDensity="3.0">
        <asset xsi:type="esdl:Building" name="AirProducts_BotA" sector="Power_to_Gas" id="AirProducts_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="AirProducts_BotA" sector="Power_to_Gas" id="D20_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D20_E_IP1" connectedTo="AirProducts_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f86e3663-098f-40e6-bdce-c19b7cff608d" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CO2_B_Network" sector="Other" id="AirProducts_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AirProducts_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AirProducts_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CO2_F_Network" sector="Other" id="AirProducts_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AirProducts_BotA_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AirProducts_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CO2_P_Network" sector="Other" id="AirProducts_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AirProducts_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AirProducts_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AirProducts_BotA_E_Network" sector="Power_to_Gas" id="AirProducts_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AirProducts_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D20_E_IP1" id="AirProducts_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_GM_Network" sector="Other" id="AirProducts_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AirProducts_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirProducts_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_H2_Hvision_Network" sector="Power_to_Gas" id="AirProducts_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AirProducts_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirProducts_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_H2_local_Network" sector="Power_to_Gas" id="AirProducts_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AirProducts_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirProducts_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_H2_new_Network" sector="Power_to_Gas" id="AirProducts_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AirProducts_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirProducts_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProducts_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirProducts_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProducts_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProducts_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.25973415374755" lat="51.8747820647193"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Tronox_BotA" id="Tronox_BotA_area" buildingDensity="3.0">
        <asset xsi:type="esdl:Building" name="Tronox_BotA" sector="Industry_Chemicals" id="Tronox_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Tronox_BotA" sector="Industry_Chemicals" id="D21_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D21_E_IP1" connectedTo="Tronox_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d812f647-de7b-4721-b659-1c172dedeef5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Tronox_BotA" sector="Industry_Chemicals" id="D21_HTH" power="45000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D21_HTH_IP1" connectedTo="C39OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="45000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="58f44bbf-11a4-4db9-9ed1-90404f45e06c" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Tronox_BotA_Furnace" controlStrategy="DbD_C39" power="56000000.0" sector="Industry_Chemicals" id="C39" efficiency="0.8" fullLoadHours="7997" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C39IP1" connectedTo="Tronox_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C39IP2" connectedTo="Tronox_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D21_HTH_IP1" id="C39OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Tronox_BotA_CO2_F_Network_IP1" id="C39OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C39" name="InputOutputRelation for Tronox_BotA_Furnace" mainPort="C39IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C39IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C39OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C39OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Tronox_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Tronox_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Tronox_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Tronox_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Tronox_BotA_CO2_F_Network_IP1" connectedTo="C39OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Tronox_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Tronox_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Tronox_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Tronox_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Tronox_BotA_E_Network" sector="Industry_Chemicals" id="Tronox_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Tronox_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D21_E_IP1 C39IP2" id="Tronox_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_GM_Network" sector="Industry_Chemicals" id="Tronox_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Tronox_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Tronox_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Tronox_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Tronox_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Tronox_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_H2_local_Network" sector="Industry_Chemicals" id="Tronox_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Tronox_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Tronox_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_H2_new_Network" sector="Industry_Chemicals" id="Tronox_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Tronox_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Tronox_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Tronox_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Tronox_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Tronox_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Tronox_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Tronox_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Tronox_BotA_CH4_Network" sector="Industry_Chemicals" id="Tronox_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Tronox_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C39IP1" id="Tronox_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.27104234695434" lat="51.8959467214539"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Cabot_BotA" id="Cabot_BotA_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Cabot_BotA" sector="Industry_Chemicals" id="Cabot_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Cabot_BotA" sector="Industry_Chemicals" id="D22_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D22_E_IP1" connectedTo="C40OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9dfefe1e-cf24-4753-aa8a-bf73b395eb45" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Cabot_BotA" sector="Industry_Chemicals" id="D22_HTH" power="71000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D22_HTH_IP1" connectedTo="C41OP1 C42OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="71000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5981f046-109f-48b5-b82e-fb4a71bb01a9" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="Cabot_BotA_RF_Producer" sector="Industry_Chemicals" id="R31_RF" power="89000000.0">
            <port xsi:type="esdl:OutPort" carrier="RF" connectedTo="C40IP1 C41IP1" id="R31_RF_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="89000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="373bcbdf-8c2d-4285-af70-8365cc394ac5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Cabot_BotA_Furnace" controlStrategy="DbS_C41" power="65000000.0" sector="Industry_Chemicals" id="C41" efficiency="0.8" fullLoadHours="7997" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="RF" id="C41IP1" connectedTo="R31_RF_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C41IP2" connectedTo="C40OP1 Cabot_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D22_HTH_IP1" id="C41OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Cabot_BotA_CO2_F_Network_IP1" id="C41OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C41" name="InputOutputRelation for Cabot_BotA_Furnace" mainPort="C41IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C41IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C41OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C41OP3" ratio="3588.8601780074646"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Cabot_BotA_Furnace" controlStrategy="DbD_C42" power="30000000.0" sector="Industry_Chemicals" id="C42" efficiency="0.8" fullLoadHours="7997" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C42IP1" connectedTo="Cabot_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C42IP2" connectedTo="C40OP1 Cabot_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D22_HTH_IP1" id="C42OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Cabot_BotA_CO2_F_Network_IP1" id="C42OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C42" name="InputOutputRelation for Cabot_BotA_Furnace" mainPort="C42IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C42IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C42OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C42OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:PowerPlant" name="Cabot_BotA_Powergen_baseload" controlStrategy="DbS_C40" power="24000000.0" sector="Industry_Chemicals" id="C40" efficiency="0.5" fullLoadHours="7997" assetType="Powergen_baseload">
            <port xsi:type="esdl:InPort" name="In1" carrier="RF" id="C40IP1" connectedTo="R31_RF_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D22_E_IP1 C41IP2 C42IP2" id="C40OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Cabot_BotA_CO2_F_Network_IP1" id="C40OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C40" name="InputOutputRelation for Cabot_BotA_Powergen_baseload" mainPort="C40IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C40OP1" ratio="2.0"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C40OP3" ratio="3588.8601780074646"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Cabot_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Cabot_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Cabot_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Cabot_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Cabot_BotA_CO2_F_Network_IP1" connectedTo="C41OP3 C42OP3 C40OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Cabot_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Cabot_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Cabot_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Cabot_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Cabot_BotA_E_Network" sector="Industry_Chemicals" id="Cabot_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Cabot_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="C41IP2 C42IP2" id="Cabot_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_GM_Network" sector="Industry_Chemicals" id="Cabot_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Cabot_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Cabot_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Cabot_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Cabot_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Cabot_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_H2_local_Network" sector="Industry_Chemicals" id="Cabot_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Cabot_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Cabot_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_H2_new_Network" sector="Industry_Chemicals" id="Cabot_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Cabot_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Cabot_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cabot_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cabot_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cabot_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cabot_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cabot_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cabot_BotA_CH4_Network" sector="Industry_Chemicals" id="Cabot_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cabot_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C42IP1" id="Cabot_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.26664352416992" lat="51.8930401515601"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="EKC_BotA" id="EKC_BotA_area" buildingDensity="3.0">
        <asset xsi:type="esdl:Building" name="EKC_BotA" sector="Industry_Chemicals" id="EKC_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="EKC_BotA" sector="Industry_Chemicals" id="D23_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D23_E_IP1" connectedTo="EKC_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c6f84882-38b3-4e37-8501-5186b7dc1d53" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="EKC_BotA" sector="Industry_Chemicals" id="D23_S" power="69000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D23_S_IP1" connectedTo="C43OP1 C38OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="69000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2a50664e-04da-4746-8340-5943f3b250b7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="EKC_BotA_Boiler" controlStrategy="DbD_C43" power="33000000.0" sector="Industry_Chemicals" id="C43" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C43IP1" connectedTo="EKC_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C43IP2" connectedTo="EKC_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D23_S_IP1" id="C43OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="EKC_BotA_CO2_F_Network_IP1" id="C43OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C43" name="InputOutputRelation for EKC_BotA_Boiler" mainPort="C43IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C43IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C43OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C43OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CO2_B_Network" sector="Industry_Chemicals" id="EKC_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="EKC_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="EKC_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CO2_F_Network" sector="Industry_Chemicals" id="EKC_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="EKC_BotA_CO2_F_Network_IP1" connectedTo="C43OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="EKC_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CO2_P_Network" sector="Industry_Chemicals" id="EKC_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="EKC_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="EKC_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="EKC_BotA_E_Network" sector="Industry_Chemicals" id="EKC_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="EKC_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D23_E_IP1 C43IP2" id="EKC_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_GM_Network" sector="Industry_Chemicals" id="EKC_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="EKC_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="EKC_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="EKC_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="EKC_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="EKC_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_H2_local_Network" sector="Industry_Chemicals" id="EKC_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="EKC_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="EKC_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_H2_new_Network" sector="Industry_Chemicals" id="EKC_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="EKC_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="EKC_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="EKC_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="EKC_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="EKC_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="EKC_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="EKC_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="EKC_BotA_CH4_Network" sector="Industry_Chemicals" id="EKC_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="EKC_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C43IP1" id="EKC_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.2650556564331" lat="51.8877611677263"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Nouryon_BotA" id="Nouryon_BotA_area" buildingDensity="6.0">
        <asset xsi:type="esdl:Building" name="Nouryon_BotA" sector="Industry_Chemicals" id="Nouryon_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Nouryon_BotA" sector="Industry_Chemicals" id="D24_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D24_E_IP1" connectedTo="Nouryon_BotA_E_Network_OP1 C44OP2">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9f7e5d84-e8b8-4e01-8c8a-9f791a7f0765" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Nouryon_BotA" sector="Industry_Chemicals" id="D24_S" power="40000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D24_S_IP1" connectedTo="C44OP1 C45OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="40000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6d059905-7686-42eb-b4a8-f90f4a4b29fc" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="Nouryon_BotA_Cogen" controlStrategy="DbD_C44" power="72000000.0" sector="Power_Plant_CHP" id="C44" efficiency="0.49" fullLoadHours="4818" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C44IP1" connectedTo="Nouryon_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D24_S_IP1 D25_S_IP1" id="C44OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D24_E_IP1 C46IP1" id="C44OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Nouryon_BotA_CO2_F_Network_IP1" id="C44OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C44" name="InputOutputRelation for Nouryon_BotA_Cogen" mainPort="C44IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C44OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C44OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C44OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="Nouryon_BotA_ElectrolyzerBrine" controlStrategy="DbD_C46" power="226000000.0" sector="Industry_Chemicals" id="C46" efficiency="0.3" fullLoadHours="7997" assetType="ElectrolyzerBrine">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="C46IP1" connectedTo="C44OP2 Nouryon_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="Nouryon_BotA_H2_local_Network_IP1" id="C46OP1" name="Out1"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C46" name="InputOutputRelation for Nouryon_BotA_ElectrolyzerBrine" mainPort="C46OP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C46IP1" ratio="0.3"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Nouryon_BotA_Boiler" controlStrategy="DbD_C45" power="83000000.0" sector="Industry_Chemicals" id="C45" efficiency="0.85" fullLoadHours="3679" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C45IP1" connectedTo="Nouryon_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C45IP2" connectedTo="Nouryon_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D24_S_IP1 D25_S_IP1" id="C45OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Nouryon_BotA_CO2_F_Network_IP1" id="C45OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C45" name="InputOutputRelation for Nouryon_BotA_Boiler" mainPort="C45IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C45IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C45OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C45OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Nouryon_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Nouryon_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Nouryon_BotA_CO2_F_Network_IP1" connectedTo="C44OP3 C45OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Nouryon_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Nouryon_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Nouryon_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Nouryon_BotA_E_Network" sector="Industry_Chemicals" id="Nouryon_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Nouryon_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D24_E_IP1 C46IP1 C45IP2" id="Nouryon_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_GM_Network" sector="Industry_Chemicals" id="Nouryon_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Nouryon_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Nouryon_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Nouryon_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Nouryon_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Nouryon_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_H2_local_Network" sector="Industry_Chemicals" id="Nouryon_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Nouryon_BotA_H2_local_Network_IP1" connectedTo="C46OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="H2_local_IP1" id="Nouryon_BotA_H2_local_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_H2_new_Network" sector="Industry_Chemicals" id="Nouryon_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Nouryon_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Nouryon_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Nouryon_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Nouryon_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Nouryon_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Nouryon_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C44IP1 C45IP1" id="Nouryon_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Nouryon_BotA_CH4_Network" sector="Industry_Chemicals" id="Nouryon_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Nouryon_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Nouryon_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.26948130130767" lat="51.8719370560035"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Shinetsu_BotA" id="Shinetsu_BotA_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Shinetsu_BotA" sector="Industry_Chemicals" id="Shinetsu_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Shinetsu_BotA" sector="Industry_Chemicals" id="D25_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D25_E_IP1" connectedTo="Shinetsu_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3c5bcbf7-0942-48c7-9798-6da4af19efd8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Shinetsu_BotA" sector="Industry_Chemicals" id="D25_HTH" power="54000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D25_HTH_IP1" connectedTo="C47OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="54000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e119ee76-1b47-4d4a-a5a6-bba734ca2995" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Shinetsu_BotA" sector="Industry_Chemicals" id="D25_S" power="66000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D25_S_IP1" connectedTo="C44OP1 C45OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="66000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7f1f1c6a-c9f8-4030-8146-6da786afc388" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Shinetsu_BotA_Furnace" controlStrategy="DbD_C47" power="68000000.0" sector="Industry_Chemicals" id="C47" efficiency="0.8" fullLoadHours="7997" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C47IP1" connectedTo="Shinetsu_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C47IP2" connectedTo="Shinetsu_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D25_HTH_IP1" id="C47OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Shinetsu_BotA_CO2_F_Network_IP1" id="C47OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C47" name="InputOutputRelation for Shinetsu_BotA_Furnace" mainPort="C47IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C47IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C47OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C47OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Shinetsu_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Shinetsu_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Shinetsu_BotA_CO2_F_Network_IP1" connectedTo="C47OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Shinetsu_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Shinetsu_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Shinetsu_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Shinetsu_BotA_E_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Shinetsu_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D25_E_IP1 C47IP2" id="Shinetsu_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_GM_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Shinetsu_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Shinetsu_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Shinetsu_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Shinetsu_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_H2_local_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Shinetsu_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Shinetsu_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_H2_new_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Shinetsu_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Shinetsu_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Shinetsu_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Shinetsu_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Shinetsu_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Shinetsu_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C47IP1" id="Shinetsu_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Shinetsu_BotA_CH4_Network" sector="Industry_Chemicals" id="Shinetsu_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Shinetsu_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Shinetsu_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.27736699581146" lat="51.8728313156249"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Hexion_BotA" id="Hexion_BotA_area">
        <asset xsi:type="esdl:Building" name="Hexion_BotA" sector="Industry_Chemicals" id="Hexion_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Hexion_BotA" sector="Industry_Chemicals" id="D27_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D27_E_IP1" connectedTo="Hexion_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6f022b5f-c802-4dc8-bd37-eb64ea49b2a8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Hexion_BotA" sector="Industry_Chemicals" id="D27_S" power="3000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D27_S_IP1" connectedTo="C53OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="3000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="28b0490e-ff4e-43a2-903b-857fd840b8ee" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Hexion_BotA_Boiler" controlStrategy="DbD_C53" power="4000000.0" sector="Industry_Chemicals" id="C53" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C53IP1" connectedTo="Hexion_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C53IP2" connectedTo="Hexion_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D27_S_IP1" id="C53OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Hexion_BotA_CO2_F_Network_IP1" id="C53OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C53" name="InputOutputRelation for Hexion_BotA_Boiler" mainPort="C53IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C53IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C53OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C53OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CO2_B_Network" sector="Industry_Chemicals" id="Hexion_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Hexion_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Hexion_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CO2_F_Network" sector="Industry_Chemicals" id="Hexion_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Hexion_BotA_CO2_F_Network_IP1" connectedTo="C53OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Hexion_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CO2_P_Network" sector="Industry_Chemicals" id="Hexion_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Hexion_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Hexion_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Hexion_BotA_E_Network" sector="Industry_Chemicals" id="Hexion_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Hexion_BotA_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D27_E_IP1 C53IP2" id="Hexion_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_GM_Network" sector="Industry_Chemicals" id="Hexion_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Hexion_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Hexion_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_H2_Hvision_Network" sector="Industry_Chemicals" id="Hexion_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Hexion_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Hexion_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_H2_local_Network" sector="Industry_Chemicals" id="Hexion_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Hexion_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Hexion_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_H2_new_Network" sector="Industry_Chemicals" id="Hexion_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Hexion_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Hexion_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C53IP1" id="Hexion_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_BotA_CH4_Network" sector="Industry_Chemicals" id="Hexion_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.26558673381805" lat="51.8768453286295"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AluchemieFormer_BotB" id="AluchemieFormer_BotB_area" buildingDensity="5.0">
        <asset xsi:type="esdl:Building" name="AluchemieFormer_BotB" sector="Industry_Aluminium" id="AluchemieFormer_BotB_building">
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CO2_B_Network" sector="Other" id="AluchemieFormer_BotB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AluchemieFormer_BotB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AluchemieFormer_BotB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CO2_F_Network" sector="Other" id="AluchemieFormer_BotB_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AluchemieFormer_BotB_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AluchemieFormer_BotB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CO2_P_Network" sector="Other" id="AluchemieFormer_BotB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AluchemieFormer_BotB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AluchemieFormer_BotB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AluchemieFormer_BotB_E_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AluchemieFormer_BotB_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="AluchemieFormer_BotB_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_GM_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AluchemieFormer_BotB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AluchemieFormer_BotB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_H2_Hvision_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AluchemieFormer_BotB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AluchemieFormer_BotB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_H2_local_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AluchemieFormer_BotB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AluchemieFormer_BotB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_H2_new_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AluchemieFormer_BotB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AluchemieFormer_BotB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AluchemieFormer_BotB_CH4_Network" sector="Industry_Aluminium" id="AluchemieFormer_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AluchemieFormer_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AluchemieFormer_BotB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.31868374347686" lat="51.8722748895061"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Cerexagri_Per" id="Cerexagri_Per_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="Cerexagri_Per" sector="Industry_Chemicals" id="Cerexagri_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Cerexagri_Per" sector="Industry_Chemicals" id="D29_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D29_E_IP1" connectedTo="Cerexagri_Per_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e2da07e8-6ca7-4294-be1b-dcd94ce8f2b1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Cerexagri_Per" sector="Industry_Chemicals" id="D29_S" power="1000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D29_S_IP1" connectedTo="C56OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5b2f32d0-f1e8-41b1-853b-d9bb296040f5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Cerexagri_Per_Boiler" controlStrategy="DbD_C56" power="1000000.0" sector="Industry_Chemicals" id="C56" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C56IP1" connectedTo="Cerexagri_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C56IP2" connectedTo="Cerexagri_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D29_S_IP1" id="C56OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Cerexagri_Per_CO2_F_Network_IP1" id="C56OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C56" name="InputOutputRelation for Cerexagri_Per_Boiler" mainPort="C56IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C56IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C56OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C56OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CO2_B_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Cerexagri_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Cerexagri_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CO2_F_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Cerexagri_Per_CO2_F_Network_IP1" connectedTo="C56OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Cerexagri_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CO2_P_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Cerexagri_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Cerexagri_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Cerexagri_Per_E_Network" sector="Industry_Chemicals" id="Cerexagri_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Cerexagri_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D29_E_IP1 C56IP2" id="Cerexagri_Per_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_GM_Network" sector="Industry_Chemicals" id="Cerexagri_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Cerexagri_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Cerexagri_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_H2_Hvision_Network" sector="Industry_Chemicals" id="Cerexagri_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Cerexagri_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Cerexagri_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_H2_local_Network" sector="Industry_Chemicals" id="Cerexagri_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Cerexagri_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Cerexagri_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_H2_new_Network" sector="Industry_Chemicals" id="Cerexagri_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Cerexagri_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Cerexagri_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cerexagri_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cerexagri_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cerexagri_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cerexagri_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C56IP1" id="Cerexagri_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Cerexagri_Per_CH4_Network" sector="Industry_Chemicals" id="Cerexagri_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Cerexagri_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Cerexagri_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.34020042419433" lat="51.8914907869183"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Arkema_Per" id="Arkema_Per_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="Arkema_Per" sector="Industry_Chemicals" id="Arkema_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Arkema_Per" sector="Industry_Chemicals" id="D30_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D30_E_IP1" connectedTo="Arkema_Per_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="07002d4c-c5e9-4f0f-8bba-7b71f3fc58a0" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Arkema_Per" sector="Industry_Chemicals" id="D30_HTH" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D30_HTH_IP1" connectedTo="C57OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="943195c0-7983-40b2-93c5-ce9783cbb9b9" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Arkema_Per_Furnace" controlStrategy="DbD_C57" power="2000000.0" sector="Industry_Chemicals" id="C57" efficiency="0.8" fullLoadHours="7997" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C57IP1" connectedTo="Arkema_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C57IP2" connectedTo="Arkema_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D30_HTH_IP1" id="C57OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Arkema_Per_CO2_F_Network_IP1" id="C57OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C57" name="InputOutputRelation for Arkema_Per_Furnace" mainPort="C57IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C57IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C57OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C57OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CO2_B_Network" sector="Industry_Chemicals" id="Arkema_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Arkema_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Arkema_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CO2_F_Network" sector="Industry_Chemicals" id="Arkema_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Arkema_Per_CO2_F_Network_IP1" connectedTo="C57OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Arkema_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CO2_P_Network" sector="Industry_Chemicals" id="Arkema_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Arkema_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Arkema_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Arkema_Per_E_Network" sector="Industry_Chemicals" id="Arkema_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Arkema_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D30_E_IP1 C57IP2" id="Arkema_Per_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_GM_Network" sector="Industry_Chemicals" id="Arkema_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Arkema_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Arkema_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_H2_Hvision_Network" sector="Industry_Chemicals" id="Arkema_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Arkema_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Arkema_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_H2_local_Network" sector="Industry_Chemicals" id="Arkema_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Arkema_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Arkema_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_H2_new_Network" sector="Industry_Chemicals" id="Arkema_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Arkema_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Arkema_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Arkema_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Arkema_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Arkema_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Arkema_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C57IP1" id="Arkema_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Arkema_Per_CH4_Network" sector="Industry_Chemicals" id="Arkema_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Arkema_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Arkema_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.3359088897705" lat="51.8890408278317"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Wilmar_Per" id="Wilmar_Per_area" buildingDensity="1.0">
        <asset xsi:type="esdl:Building" name="Wilmar_Per" sector="Industry_Food" id="Wilmar_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Wilmar_Per" sector="Industry_Food" id="D31_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D31_E_IP1" connectedTo="Wilmar_Per_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a3fc0a6f-5e07-4d57-8848-e6ba50957ad4" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Wilmar_Per" sector="Industry_Food" id="D31_S" power="6000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D31_S_IP1" connectedTo="C58OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="6000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1d246718-1b1f-4ecf-8c9e-4f98087db3fd" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Wilmar_Per_Boiler" controlStrategy="DbD_C58" power="7000000.0" sector="Industry_Food" id="C58" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C58IP1" connectedTo="Wilmar_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C58IP2" connectedTo="Wilmar_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D31_S_IP1" id="C58OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Wilmar_Per_CO2_F_Network_IP1" id="C58OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C58" name="InputOutputRelation for Wilmar_Per_Boiler" mainPort="C58IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C58IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C58OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C58OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CO2_B_Network" sector="Industry_Food" id="Wilmar_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Wilmar_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Wilmar_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CO2_F_Network" sector="Industry_Food" id="Wilmar_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Wilmar_Per_CO2_F_Network_IP1" connectedTo="C58OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Wilmar_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CO2_P_Network" sector="Industry_Food" id="Wilmar_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Wilmar_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Wilmar_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Wilmar_Per_E_Network" sector="Industry_Food" id="Wilmar_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Wilmar_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D31_E_IP1 C58IP2" id="Wilmar_Per_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_GM_Network" sector="Industry_Food" id="Wilmar_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Wilmar_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Wilmar_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_H2_Hvision_Network" sector="Industry_Food" id="Wilmar_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Wilmar_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Wilmar_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_H2_local_Network" sector="Industry_Food" id="Wilmar_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Wilmar_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Wilmar_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_H2_new_Network" sector="Industry_Food" id="Wilmar_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Wilmar_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Wilmar_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Wilmar_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Wilmar_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Wilmar_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Wilmar_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C58IP1" id="Wilmar_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Wilmar_Per_CH4_Network" sector="Industry_Food" id="Wilmar_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Wilmar_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Wilmar_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.33103129267692" lat="51.8866966879005"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Hexion_Per" id="Hexion_Per_area">
        <asset xsi:type="esdl:Building" name="Hexion_Per" sector="Industry_Chemicals" id="Hexion_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Hexion_Per" sector="Industry_Chemicals" id="D32_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D32_E_IP1" connectedTo="Hexion_Per_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8b7dd86e-83bd-4860-94e3-c3f21fb73038" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Hexion_Per" sector="Industry_Chemicals" id="D32_S" power="21000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D32_S_IP1" connectedTo="C59OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="21000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="fddff85d-579a-4f83-b7b5-38e4d0a2e0b3" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Hexion_Per_Boiler" controlStrategy="DbD_C59" power="21000000.0" sector="Industry_Chemicals" id="C59" efficiency="0.85" fullLoadHours="7997" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C59IP1" connectedTo="Hexion_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C59IP2" connectedTo="Hexion_Per_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D32_S_IP1" id="C59OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Hexion_Per_CO2_F_Network_IP1" id="C59OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C59" name="InputOutputRelation for Hexion_Per_Boiler" mainPort="C59IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C59IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C59OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C59OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CO2_B_Network" sector="Industry_Chemicals" id="Hexion_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Hexion_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Hexion_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CO2_F_Network" sector="Industry_Chemicals" id="Hexion_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Hexion_Per_CO2_F_Network_IP1" connectedTo="C59OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Hexion_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CO2_P_Network" sector="Industry_Chemicals" id="Hexion_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Hexion_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Hexion_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Hexion_Per_E_Network" sector="Industry_Chemicals" id="Hexion_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Hexion_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D32_E_IP1 C59IP2" id="Hexion_Per_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_GM_Network" sector="Industry_Chemicals" id="Hexion_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Hexion_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Hexion_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_H2_Hvision_Network" sector="Industry_Chemicals" id="Hexion_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Hexion_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Hexion_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_H2_local_Network" sector="Industry_Chemicals" id="Hexion_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Hexion_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Hexion_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_H2_new_Network" sector="Industry_Chemicals" id="Hexion_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Hexion_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Hexion_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C59IP1" id="Hexion_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Hexion_Per_CH4_Network" sector="Industry_Chemicals" id="Hexion_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Hexion_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Hexion_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.35015678405761" lat="51.8775739064279"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AVR_BotA" id="AVR_BotA_area" buildingDensity="4.0">
        <asset xsi:type="esdl:Building" name="AVR_BotA" sector="Power_Plant_Other" id="AVR_BotA_building">
          <asset xsi:type="esdl:PowerPlant" name="AVR_BotA_WasteIncinerator" power="521000000.0" sector="Power_Plant_Other" id="C38" efficiency="0.08" fullLoadHours="7997" assetType="WasteIncinerator">
            <port xsi:type="esdl:InPort" name="In1" carrier="W" id="C38IP1" connectedTo="W_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D23_S_IP1" id="C38OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="AVR_BotA_E_Network_IP1" id="C38OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AVR_BotA_CO2_F_Network_IP1" id="C38OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C38" name="InputOutputRelation for AVR_BotA_WasteIncinerator" mainPort="C38IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C38OP1" ratio="12.5"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C38OP2" ratio="5.0"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C38OP3" ratio="2637.9656009285636"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CO2_B_Network" sector="Power_Plant_Other" id="AVR_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AVR_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AVR_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CO2_F_Network" sector="Power_Plant_Other" id="AVR_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="AVR_BotA_CO2_F_Network_IP1" connectedTo="C38OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AVR_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CO2_P_Network" sector="Power_Plant_Other" id="AVR_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AVR_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AVR_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AVR_BotA_E_Network" sector="Power_Plant_Other" id="AVR_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AVR_BotA_E_Network_IP1" connectedTo="C38OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="AVR_BotA_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_GM_Network" sector="Power_Plant_Other" id="AVR_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AVR_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AVR_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_H2_Hvision_Network" sector="Power_Plant_Other" id="AVR_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AVR_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AVR_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_H2_local_Network" sector="Power_Plant_Other" id="AVR_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AVR_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AVR_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_H2_new_Network" sector="Power_Plant_Other" id="AVR_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AVR_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AVR_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AVR_BotA_CH4_Network" sector="Power_Plant_Other" id="AVR_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AVR_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AVR_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.27529358448795" lat="51.89772708731"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AirLiquide_BotA" id="AirLiquide_BotA_area" buildingDensity="3.0">
        <asset xsi:type="esdl:Building" name="AirLiquide_BotA" sector="Power_to_Gas" id="AirLiquide_BotA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="AirLiquide_BotA" sector="Power_to_Gas" id="D13_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D13_E_IP1" connectedTo="AirLiquide_BotA_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c4c25665-2e18-45e0-8aaa-6a1cd466b5fb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="AirLiquide_BotA" sector="Power_to_Gas" id="D13_S" power="28000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D13_S_IP1" connectedTo="C29OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="28000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8ad46b8d-56b5-4b9d-b521-551ddae32c9a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="AirLiquideEnecal_BotA_Cogen" controlStrategy="DbD_C29" power="156000000.0" sector="Power_Plant_CHP" id="C29" efficiency="0.49" fullLoadHours="4380" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C29IP1" connectedTo="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D12_S_IP1 D14_S_IP1 D15_S_IP1 D16_S_IP1 D13_S_IP1" id="C29OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="AirLiquide_BotA_E_Network_IP1" id="C29OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AirLiquide_BotA_CO2_F_Network_IP1" id="C29OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C29" name="InputOutputRelation for AirLiquideEnecal_BotA_Cogen" mainPort="C29IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C29OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C29OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C29OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:CHP" name="AirLiquideEurogen_BotA_Cogen" controlStrategy="DbD_C30" power="286000000.0" sector="Power_Plant_CHP" id="C30" efficiency="0.49" fullLoadHours="4993" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C30IP1" connectedTo="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D12_S_IP1 D14_S_IP1 D15_S_IP1 D16_S_IP1" id="C30OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="AirLiquide_BotA_E_Network_IP1" id="C30OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AirLiquide_BotA_CO2_F_Network_IP1" id="C30OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C30" name="InputOutputRelation for AirLiquideEurogen_BotA_Cogen" mainPort="C30IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C30OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C30OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C30OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="AirLiquide_BotA_SMR_old" controlStrategy="DbD_C31" power="471000000.0" sector="Power_to_Gas" id="C31" efficiency="0.75" fullLoadHours="2978" assetType="SMR_old">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C31IP1" connectedTo="AirLiquide_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C31IP2" connectedTo="AirLiquide_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D2_H2_local_IP1 D4_H2_local_IP1 D7_H2_local_IP1 D26_H2_local_IP1" id="C31OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="AirLiquide_BotA_CO2_P_Network_IP1" carrier="CO2_P" id="C31OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C31" name="InputOutputRelation for AirLiquide_BotA_SMR_old" mainPort="C31IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C31IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C31OP1" ratio="1.3333333333333333"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C31OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="AirLiquide_BotA_SMR_new_Heracles" controlStrategy="DbD_C32" power="520000000.0" sector="Power_to_Gas" id="C32" efficiency="0.8" fullLoadHours="8760" assetType="SMR_new">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C32IP1" connectedTo="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C32IP2" connectedTo="AirLiquide_BotA_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D2_H2_local_IP1 D4_H2_local_IP1 D7_H2_local_IP1 D26_H2_local_IP1" id="C32OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="AirLiquide_BotA_CO2_P_Network_IP1" carrier="CO2_P" id="C32OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C32" name="InputOutputRelation for AirLiquide_BotA_SMR_new_Heracles" mainPort="C32IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C32IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C32OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C32OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CO2_B_Network" sector="Other" id="AirLiquide_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AirLiquide_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AirLiquide_BotA_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CO2_F_Network" sector="Other" id="AirLiquide_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="AirLiquide_BotA_CO2_F_Network_IP1" connectedTo="C29OP3 C30OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AirLiquide_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CO2_P_Network" sector="Other" id="AirLiquide_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" connectedTo="C31OP3 C32OP3" carrier="CO2_P" id="AirLiquide_BotA_CO2_P_Network_IP1" name="In1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AirLiquide_BotA_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AirLiquide_BotA_E_Network" sector="Power_to_Gas" id="AirLiquide_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AirLiquide_BotA_E_Network_IP1" connectedTo="C29OP2 C30OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D13_E_IP1 C31IP2 C32IP2" id="AirLiquide_BotA_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_GM_Network" sector="Other" id="AirLiquide_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AirLiquide_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirLiquide_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_H2_Hvision_Network" sector="Other" id="AirLiquide_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AirLiquide_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirLiquide_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_H2_local_Network" sector="Power_to_Gas" id="AirLiquide_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" carrier="H2_local" name="In1" id="AirLiquide_BotA_H2_local_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="H2_local_IP1" id="AirLiquide_BotA_H2_local_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_H2_new_Network" sector="Power_to_Gas" id="AirLiquide_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AirLiquide_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirLiquide_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_GM_Network" sector="Other" id="AirLiquide_BotA_Heracles_GM_Network">
            <port xsi:type="esdl:InPort" carrier="GM" name="In1" id="AirLiquide_BotA_Heracles_GM_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirLiquide_BotA_Heracles_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_H2_Hvision_Network" sector="Other" id="AirLiquide_BotA_Heracles_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" carrier="H2_Hvision" name="In1" id="AirLiquide_BotA_Heracles_H2_Hvision_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirLiquide_BotA_Heracles_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_H2_local_Network" sector="Power_to_Gas" id="AirLiquide_BotA_Heracles_H2_local_Network">
            <port xsi:type="esdl:InPort" carrier="H2_local" name="In1" id="AirLiquide_BotA_Heracles_H2_local_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirLiquide_BotA_Heracles_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_H2_new_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_H2_new_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="AirLiquide_BotA_Heracles_H2_new_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirLiquide_BotA_Heracles_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquide_BotA_Heracles_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_Heracles_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C32IP1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquide_BotA_Heracles_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquide_BotA_Heracles_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquide_BotA_Heracles_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_Heracles_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_Heracles_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquide_BotA_Heracles_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_Heracles_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C31IP1" id="AirLiquide_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquide_BotA_CH4_Network" sector="Other_Hydrogen_Production" id="AirLiquide_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquide_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquide_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_GM_Network" sector="Other" id="AirLiquideEnecal_BotA_GM_Network">
            <port xsi:type="esdl:InPort" carrier="GM" name="In1" id="AirLiquideEnecal_BotA_GM_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirLiquideEnecal_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_H2_Hvision_Network" sector="Power_Plant_Gas_Small" id="AirLiquideEnecal_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" carrier="H2_Hvision" name="In1" id="AirLiquideEnecal_BotA_H2_Hvision_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirLiquideEnecal_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_H2_local_Network" sector="Power_Plant_Gas_Small" id="AirLiquideEnecal_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" carrier="H2_local" name="In1" id="AirLiquideEnecal_BotA_H2_local_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirLiquideEnecal_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_H2_new_Network" sector="Power_Plant_Gas_Small" id="AirLiquideEnecal_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="AirLiquideEnecal_BotA_H2_new_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirLiquideEnecal_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEnecal_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEnecal_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEnecal_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEnecal_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquideEnecal_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C29IP1" id="AirLiquideEnecal_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEnecal_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEnecal_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEnecal_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEnecal_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_GM_Network" sector="Other" id="AirLiquideEurogen_BotA_GM_Network">
            <port xsi:type="esdl:InPort" carrier="GM" name="In1" id="AirLiquideEurogen_BotA_GM_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirLiquideEurogen_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_H2_Hvision_Network" sector="Other" id="AirLiquideEurogen_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" carrier="H2_Hvision" name="In1" id="AirLiquideEurogen_BotA_H2_Hvision_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirLiquideEurogen_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_H2_local_Network" sector="Power_Plant_Gas_Small" id="AirLiquideEurogen_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" carrier="H2_local" name="In1" id="AirLiquideEurogen_BotA_H2_local_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirLiquideEurogen_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_H2_new_Network" sector="Power_Plant_Gas_Small" id="AirLiquideEurogen_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="AirLiquideEurogen_BotA_H2_new_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirLiquideEurogen_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEurogen_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEurogen_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEurogen_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEurogen_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquideEurogen_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C30IP1" id="AirLiquideEurogen_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquideEurogen_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirLiquideEurogen_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="AirLiquideEurogen_BotA_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquideEurogen_BotA_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.25168752670288" lat="51.8891269097391"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="UniperUCML_MVB" id="UniperUCML_MVB_area">
        <asset xsi:type="esdl:Building" name="UniperUCML_MVB" sector="Power_Plant_CHP" id="UniperUCML_MVB_building">
          <asset xsi:type="esdl:CHP" name="Uniperucml_MVB_Cogen" controlStrategy="DbD_C4" power="134000000.0" sector="Power_Plant_CHP" id="C4" efficiency="0.45" fullLoadHours="7008" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C4IP1" connectedTo="Uniper_MVB_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D2_S_IP1 D3_S_IP1" id="C4OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="UniperUCML_MVB_E_Network_IP1" id="C4OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Uniper_MVB_CO2_F_Network_IP1" id="C4OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C4" name="InputOutputRelation for Uniperucml_MVB_Cogen" mainPort="C4IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C4OP1" ratio="2.2222222222222223"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C4OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C4OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:CHP" name="Uniperucml_MVB_Cogen2" controlStrategy="DbD_C5" power="150000000.0" sector="Power_Plant_CHP" id="C5" efficiency="0.49" fullLoadHours="7008" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C5IP1" connectedTo="Uniper_MVB_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D2_S_IP1 D3_S_IP1" id="C5OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="UniperUCML_MVB_E_Network_IP1" id="C5OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Uniper_MVB_CO2_F_Network_IP1" id="C5OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C5" name="InputOutputRelation for Uniperucml_MVB_Cogen2" mainPort="C5IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C5OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C5OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C5OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CO2_B_Network" sector="Power_Plant_CHP" id="Uniper_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Uniper_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Uniper_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CO2_F_Network" sector="Power_Plant_CHP" id="Uniper_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Uniper_MVB_CO2_F_Network_IP1" connectedTo="C4OP3 C5OP3 C3OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Uniper_MVB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CO2_P_Network" sector="Power_Plant_CHP" id="Uniper_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Uniper_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Uniper_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="UniperUCML_MVB_E_Network" sector="Power_Plant_CHP" id="UniperUCML_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="UniperUCML_MVB_E_Network_IP1" connectedTo="C4OP2 C5OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="UniperUCML_MVB_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="UniperMPP3_MVB_E_Network" sector="Power_Plant_Coal" id="UniperMPP3_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="UniperMPP3_MVB_E_Network_IP1" connectedTo="C3OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="UniperMPP3_MVB_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_GM_Network" sector="Power_Plant_Coal" id="Uniper_MVB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Uniper_MVB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Uniper_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_H2_Hvision_Network" sector="Power_Plant_Coal" id="Uniper_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Uniper_MVB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Uniper_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_H2_local_Network" sector="Power_Plant_Coal" id="Uniper_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Uniper_MVB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Uniper_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_H2_new_Network" sector="Power_Plant_Coal" id="Uniper_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Uniper_MVB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Uniper_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Uniper_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C4IP1 C5IP1" id="Uniper_MVB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Uniper_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Uniper_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Uniper_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Uniper_MVB_CH4_Network" sector="Power_Plant_Coal" id="Uniper_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Uniper_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Uniper_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.02213329034593" lat="51.9624611215536"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="MaasStroom_Per" id="MaasStroom_Per_area">
        <asset xsi:type="esdl:Building" name="MaasStroom_Per" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_building">
          <asset xsi:type="esdl:PowerPlant" name="MaasStroom_Per_Powergen_flexible" power="751000000.0" sector="Power_Plant_Gas_Large" id="C60" efficiency="0.57" fullLoadHours="438" assetType="Powergen_flexible">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C60IP1" connectedTo="MaasStroom_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="MaasStroom_Per_E_Network_IP1" id="C60OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="MaasStroom_Per_CO2_F_Network_IP1" id="C60OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C60" name="InputOutputRelation for MaasStroom_Per_Powergen_flexible" mainPort="C60IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C60OP1" ratio="1.6949152542372883"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C60OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CO2_B_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="MaasStroom_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="MaasStroom_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CO2_F_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="MaasStroom_Per_CO2_F_Network_IP1" connectedTo="C60OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="MaasStroom_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CO2_P_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="MaasStroom_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="MaasStroom_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="MaasStroom_Per_E_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="MaasStroom_Per_E_Network_IP1" connectedTo="C60OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="MaasStroom_Per_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_GM_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="MaasStroom_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="MaasStroom_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_H2_Hvision_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="MaasStroom_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="MaasStroom_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_H2_local_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="MaasStroom_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="MaasStroom_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_H2_new_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="MaasStroom_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="MaasStroom_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="MaasStroom_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C60IP1" id="MaasStroom_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="MaasStroom_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="MaasStroom_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="MaasStroom_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="MaasStroom_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="MaasStroom_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MaasStroom_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="MaasStroom_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.35204499433699" lat="51.8905930275323"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="ProRail_Eur" id="ProRail_Eur_area">
        <asset xsi:type="esdl:Building" name="ProRail_Eur" sector="Transport_Other" id="ProRail_Eur_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ProRail_Eur" sector="Transport_Other" id="D71_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D71_E_IP1" connectedTo="ProRail_Eur_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0ca4c33d-12ab-4f20-afaf-96cb52c60883" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CO2_B_Network" sector="Transport_Other" id="ProRail_Eur_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="ProRail_Eur_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="ProRail_Eur_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CO2_F_Network" sector="Transport_Other" id="ProRail_Eur_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="ProRail_Eur_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="ProRail_Eur_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CO2_P_Network" sector="Transport_Other" id="ProRail_Eur_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="ProRail_Eur_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="ProRail_Eur_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ProRail_Eur_E_Network" sector="Transport_Other" id="ProRail_Eur_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ProRail_Eur_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D71_E_IP1" id="ProRail_Eur_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_GM_Network" sector="Transport_Other" id="ProRail_Eur_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="ProRail_Eur_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="ProRail_Eur_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_H2_Hvision_Network" sector="Transport_Other" id="ProRail_Eur_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="ProRail_Eur_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="ProRail_Eur_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_H2_local_Network" sector="Transport_Other" id="ProRail_Eur_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="ProRail_Eur_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="ProRail_Eur_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_H2_new_Network" sector="Transport_Other" id="ProRail_Eur_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="ProRail_Eur_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ProRail_Eur_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ProRail_Eur_CH4_Network" sector="Transport_Other" id="ProRail_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ProRail_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ProRail_Eur_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.12909978398055" lat="51.937167416096"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AirLiquidePergen_Per" id="AirLiquidePergen_Per_area">
        <asset xsi:type="esdl:Building" name="AirLiquidePergen_Per" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_building">
          <asset xsi:type="esdl:CHP" name="AirLiquidePergen_Per_Cogen" controlStrategy="DbS_C63" power="699000000.0" sector="Power_Plant_CHP" id="C63" efficiency="0.62" fullLoadHours="4905" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C63IP1" connectedTo="R33_RG_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D33_S_IP1 D34_S_IP1" id="C63OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D33_E_IP1 AirLiquidePergen_Per_E_Network_IP1" id="C63OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AirLiquidePergen_Per_CO2_F_Network_IP1" id="C63OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C63" name="InputOutputRelation for AirLiquidePergen_Per_Cogen" mainPort="C63IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C63OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C63OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C63OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:CHP" name="AirLiquidePergen_Per_Cogen" controlStrategy="DbS_C64" power="200000000.0" sector="Power_Plant_CHP" id="C64" efficiency="0.62" fullLoadHours="7008" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="C64IP1" connectedTo="R33_PC_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D33_S_IP1 D34_S_IP1" id="C64OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D33_E_IP1 AirLiquidePergen_Per_E_Network_IP1" id="C64OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AirLiquidePergen_Per_CO2_F_Network_IP1" id="C64OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C64" name="InputOutputRelation for AirLiquidePergen_Per_Cogen" mainPort="C64IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C64OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C64OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C64OP3" ratio="2849.002849002849"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CO2_B_Network" sector="Other" id="AirLiquidePergen_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="AirLiquidePergen_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="AirLiquidePergen_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CO2_F_Network" sector="Other" id="AirLiquidePergen_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="AirLiquidePergen_Per_CO2_F_Network_IP1" connectedTo="C63OP3 C64OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AirLiquidePergen_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CO2_P_Network" sector="Other" id="AirLiquidePergen_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AirLiquidePergen_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="AirLiquidePergen_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AirLiquidePergen_Per_E_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AirLiquidePergen_Per_E_Network_IP1" connectedTo="C63OP2 C64OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="AirLiquidePergen_Per_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_GM_Network" sector="Other" id="AirLiquidePergen_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AirLiquidePergen_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirLiquidePergen_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_H2_Hvision_Network" sector="Power_Plant_Gas_Small" id="AirLiquidePergen_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AirLiquidePergen_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirLiquidePergen_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_H2_local_Network" sector="Power_Plant_Gas_Small" id="AirLiquidePergen_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AirLiquidePergen_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirLiquidePergen_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_H2_new_Network" sector="Power_Plant_Gas_Small" id="AirLiquidePergen_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AirLiquidePergen_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirLiquidePergen_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirLiquidePergen_Per_CH4_Network" sector="Power_Plant_CHP" id="AirLiquidePergen_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirLiquidePergen_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirLiquidePergen_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.36741405179388" lat="51.886123317964"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Exxon_BotB" id="Exxon_BotB_area" buildingDensity="32.0">
        <asset xsi:type="esdl:Building" name="Exxon_BotB" sector="Industry_Refineries" id="Exxon_BotB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="Exxon_BotB" sector="Industry_Refineries" id="D26_E" power="103000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D26_E_IP1" connectedTo="C52OP2 Exxon_BotB_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Exxon_BotB_profile" id="Exxon_BotB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="103000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Exxon_BotB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="69a6dc91-1496-447b-8f7d-06707be9e840" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Exxon_BotB" sector="Industry_Refineries" id="D26_H2_local" power="733000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_local" id="D26_H2_local_IP1" connectedTo="C31OP1 C32OP1 C48OP1 C49OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Exxon_BotB_profile" id="Exxon_BotB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="733000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Exxon_BotB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="da410703-eccd-4638-9665-020155ca3c93" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Exxon_BotB" sector="Industry_Refineries" id="D26_HTH" power="838000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="HTH" id="D26_HTH_IP1" connectedTo="C51OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Exxon_BotB_profile" id="Exxon_BotB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="838000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Exxon_BotB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4034ce72-dcfd-488b-8ad8-7356d112253e" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Exxon_BotB" sector="Industry_Refineries" id="D26_S" power="231000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D26_S_IP1" connectedTo="C50OP1 C52OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Exxon_BotB_profile" id="Exxon_BotB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="231000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Exxon_BotB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ef742149-cefe-4d75-8915-226a0130981f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="Exxon_BotB_RG_Producer" sector="Industry_Refineries" id="R32_RG" power="133100000.0">
            <port xsi:type="esdl:OutPort" carrier="RG" connectedTo="C49IP1 C50IP1 C51IP1 C52IP1" id="R32_RG_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="Exxon_BotB_profile" id="Exxon_BotB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="133100000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="Exxon_BotB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a55d4927-ebf9-4e2d-80a3-5ec62f1ab179" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" name="Exxon_BotB_Cogen" controlStrategy="DbS_C52" power="192000000.0" sector="Power_Plant_CHP" id="C52" efficiency="0.49" fullLoadHours="6394" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C52IP1" connectedTo="R32_RG_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D26_S_IP1" id="C52OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D26_E_IP1 Exxon_BotB_E_Network_IP1" id="C52OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Exxon_BotB_CO2_F_Network_IP1" id="C52OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C52" name="InputOutputRelation for Exxon_BotB_Cogen" mainPort="C52IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C52OP1" ratio="2.0408163265306123"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C52OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C52OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="Exxon_BotB_SMR_Hyco4" controlStrategy="DbD_C48" power="448000000.0" sector="Industry_Refineries" id="C48" efficiency="0.78" fullLoadHours="6394" assetType="SMR">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C48IP1" connectedTo="Exxon_BotB_CH4_Network_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C48IP2" connectedTo="Exxon_BotB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D26_H2_local_IP1" id="C48OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="Exxon_BotB_CO2_P_Network_IP1" carrier="CO2_P" id="C48OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C48" name="InputOutputRelation for Exxon_BotB_SMR_Hyco4" mainPort="C48IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C48IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C48OP1" ratio="1.282051282051282"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C48OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="Exxon_BotB_SMR" controlStrategy="DbS_C49" power="71000000.0" sector="Industry_Refineries" id="C49" efficiency="0.78" fullLoadHours="6394" assetType="SMR">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C49IP1" connectedTo="R32_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C49IP2" connectedTo="Exxon_BotB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="D26_H2_local_IP1" id="C49OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" connectedTo="Exxon_BotB_CO2_P_Network_IP1" carrier="CO2_P" id="C49OP3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C49" name="InputOutputRelation for Exxon_BotB_SMR" mainPort="C49IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C49IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C49OP1" ratio="1.282051282051282"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C49OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Exxon_BotB_Boiler" controlStrategy="DbS_C50" power="231000000.0" sector="Industry_Refineries" id="C50" efficiency="0.85" fullLoadHours="6394" assetType="Boiler">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C50IP1" connectedTo="R32_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C50IP2" connectedTo="Exxon_BotB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D26_S_IP1" id="C50OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Exxon_BotB_CO2_F_Network_IP1" id="C50OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C50" name="InputOutputRelation for Exxon_BotB_Boiler" mainPort="C50IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C50IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C50OP1" ratio="1.1764705882352942"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C50OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Exxon_BotB_Furnace" controlStrategy="DbS_C51" power="838000000.0" sector="Industry_Refineries" id="C51" efficiency="0.8" fullLoadHours="6394" assetType="Furnace">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="C51IP1" connectedTo="R32_RG_OP1"/>
            <port xsi:type="esdl:InPort" name="In2" carrier="E" id="C51IP2" connectedTo="Exxon_BotB_E_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="D26_HTH_IP1" id="C51OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Exxon_BotB_CO2_F_Network_IP1" id="C51OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C51" name="InputOutputRelation for Exxon_BotB_Furnace" mainPort="C51IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C51IP2" ratio="1e+25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C51OP1" ratio="1.25"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C51OP3" ratio="4145.936981757877"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CO2_B_Network" sector="Industry_Refineries" id="Exxon_BotB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Exxon_BotB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Exxon_BotB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CO2_F_Network" sector="Industry_Refineries" id="Exxon_BotB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Exxon_BotB_CO2_F_Network_IP1" connectedTo="C52OP3 C50OP3 C51OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Exxon_BotB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CO2_P_Network" sector="Industry_Refineries" id="Exxon_BotB_CO2_P_Network">
            <port xsi:type="esdl:InPort" connectedTo="C48OP3 C49OP3" carrier="CO2_P" id="Exxon_BotB_CO2_P_Network_IP1" name="In1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Exxon_BotB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Exxon_BotB_E_Network" sector="Industry_Refineries" id="Exxon_BotB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Exxon_BotB_E_Network_IP1" connectedTo="C52OP2 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D26_E_IP1 C48IP2 C49IP2 C50IP2 C51IP2" id="Exxon_BotB_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_GM_Network" sector="Industry_Refineries" id="Exxon_BotB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Exxon_BotB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Exxon_BotB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_H2_Hvision_Network" sector="Industry_Refineries" id="Exxon_BotB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Exxon_BotB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Exxon_BotB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_H2_local_Network" sector="Industry_Refineries" id="Exxon_BotB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Exxon_BotB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Exxon_BotB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_H2_new_Network" sector="Industry_Refineries" id="Exxon_BotB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Exxon_BotB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Exxon_BotB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxon_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxon_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxon_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxon_BotB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C48IP1" id="Exxon_BotB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Exxon_BotB_CH4_Network" sector="Industry_Refineries" id="Exxon_BotB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Exxon_BotB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Exxon_BotB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.29464572241409" lat="51.8731917663369"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Enecogen_MVB" id="Enecogen_MVB_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Enecogen_MVB" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_building">
          <asset xsi:type="esdl:PowerPlant" name="Enecogen_MVB_Powergen_flexible" power="1475000000.0" sector="Power_Plant_Gas_Large" id="C13" efficiency="0.59" fullLoadHours="4380" assetType="Powergen_flexible">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C13IP1" connectedTo="Enecogen_MVB_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Enecogen_MVB_E_Network_IP1" id="C13OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Enecogen_MVB_CO2_F_Network_IP1" id="C13OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C13" name="InputOutputRelation for Enecogen_MVB_Powergen_flexible" mainPort="C13IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C13OP1" ratio="1.6949152542372883"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C13OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CO2_B_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Enecogen_MVB_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Enecogen_MVB_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CO2_F_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Enecogen_MVB_CO2_F_Network_IP1" connectedTo="C13OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Enecogen_MVB_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CO2_P_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Enecogen_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Enecogen_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Enecogen_MVB_E_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Enecogen_MVB_E_Network_IP1" connectedTo="C13OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Enecogen_MVB_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_GM_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Enecogen_MVB_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Enecogen_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_H2_Hvision_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Enecogen_MVB_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Enecogen_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_H2_local_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Enecogen_MVB_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Enecogen_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_H2_new_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Enecogen_MVB_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Enecogen_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Enecogen_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C13IP1" id="Enecogen_MVB_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Enecogen_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Enecogen_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Enecogen_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Enecogen_MVB_CH4_Network" sector="Power_Plant_Gas_Large" id="Enecogen_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Enecogen_MVB_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Enecogen_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.0918170794709" lat="51.956874589482"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="OffshoreWind" id="OffshoreWind_area">
        <asset xsi:type="esdl:Building" name="OffshoreWind" sector="Wind_Offshore" id="OffshoreWind_building">
          <asset xsi:type="esdl:WindTurbine" name="Offshore_MV" sector="Wind_Offshore" id="S4_E" power="2000000000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Offshore_MV_E_Network_IP1" id="S4_E_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OffshoreWind_profile" id="OffshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OffshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e3ad3a86-1a66-4f72-8c2e-3be93146a700" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="Offshore_SH" sector="Wind_Offshore" id="S28_E">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Offshore_SH_E_Network_IP1" id="S28_E_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OffshoreWind_profile" id="OffshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="0.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OffshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="29540a57-2654-4517-a02f-9880ab7d7cab" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Offshore_MV_E_Network" sector="Wind_Offshore" id="Offshore_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Offshore_MV_E_Network_IP1" connectedTo="S4_E_OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Offshore_MV_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Offshore_SH_E_Network" sector="Wind_Offshore" id="Offshore_SH_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Offshore_SH_E_Network_IP1" connectedTo="S28_E_OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Offshore_SH_E_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="3.92653936120623" lat="51.9664274671833"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" id="BaseloadMVoperator_area" name="BaseloadMVoperator">
        <asset xsi:type="esdl:Building" id="BaseloadMVoperator_building" name="BaseloadMVoperator" sector="Industry_Other">
          <geometry xsi:type="esdl:Point" lon="4.14133065452731" lat="51.9203962750735"/>
          <asset xsi:type="esdl:ElectricityDemand" id="D38_E" name="BaseloadMVoperator_MV66" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_MV66_E_Network_OP1" id="D38_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="599219f0-a4ec-46e3-856c-d97326ca09f2" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D39_E" name="BaseloadMVoperator_Eur" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Eur_E_Network_OP1" id="D39_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="3abb69b8-4722-418c-b97c-ab5b8b2f4f0c" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D40_E" name="BaseloadMVoperator_Bot" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Bot_E_Network_OP1" id="D40_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralA_profile" port="8086" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralA_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="323fc09d-667e-4b40-b14c-08f84ffc9300" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D41_E" name="BaseloadMVoperator_Theems" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Theems_E_Network_OP1" id="D41_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="616dc4a9-97b2-4f3e-b413-656a8e30f2e2" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D42_E" name="BaseloadMVoperator_Gerbrand" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Gerbrand_E_Network_OP1" id="D42_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralA_profile" port="8086" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralA_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="28adfbaf-4f46-4f33-8c52-4fa9b0da1935" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D43_E" name="BaseloadMVoperator_Oud" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Oud_E_Network_OP1" id="D43_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="ea5e7fa2-5185-466b-be8a-194efd65d6ed" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D44_E" name="BaseloadMVoperator_Geervl" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Geervl_E_Network_OP1" id="D44_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralA_profile" port="8086" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralA_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="bcf3af32-d30d-46d1-9c4a-ee39270ddde3" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D45_E" name="BaseloadMVoperator_Middelh" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Middelh_E_Network_OP1" id="D45_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="e7d9d2d3-a778-49e5-9c9a-def58ab593c0" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D46_E" name="BaseloadMVoperator_Tinte" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_Tinte_E_Network_OP1" id="D46_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralA_profile" port="8086" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralA_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="bbbacc39-f88a-41d7-87ca-e0bfcafd5c8d" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D79_E" name="BaseloadMVoperator_MV25" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_MV25_E_Network_OP1" id="D79_E_IP1" carrier="E">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" endDate="2019-12-31T22:00:00.000000" name="GeneralB_profile" port="8086" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" database="energy_profiles" measurement="gridmaster_profiles" field="GeneralB_profile" multiplier="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="c723ef27-b934-4242-9516-703fe20eb14b" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="D80_E" name="BaseloadMVoperator_Merwe" power="0" sector="Industry_Other">
            <port xsi:type="esdl:InPort" name="In" connectedTo="BaseloadMVoperator_MWW25_E_Network_OP1" id="D80_E_IP1" carrier="E">
              <profile xsi:type="esdl:SingleValue" id="BaseloadMVoperator_Merwe_profile" value="0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="9bb148bb-6d14-4156-b6c9-ceb46294d930" unit="WATT" description="POWER in W"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_MV66" sector="Industry_Other" id="D81_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D81_E_IP1" connectedTo="ShoreShipPower_MV66_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="35e39f7e-ca65-4212-8c01-a79d8206b9fc" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Eur" sector="Industry_Other" id="D82_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D82_E_IP1" connectedTo="ShoreShipPower_Eur_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2d8a5c61-0b34-47f9-8f13-009b2bb0f2c7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Bot" sector="Industry_Other" id="D83_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D83_E_IP1" connectedTo="ShoreShipPower_Bot_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d7cfff30-0d39-4f48-96b7-59699f6729b9" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Theems" sector="Industry_Other" id="D84_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D84_E_IP1" connectedTo="ShoreShipPower_Theems_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2341160a-de73-45ac-aa93-76fea1c54ce6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Gerbrand" sector="Industry_Other" id="D85_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D85_E_IP1" connectedTo="ShoreShipPower_Gerbrand_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="42d883ed-35b8-458a-affe-f2db0ddcbb85" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Oud" sector="Industry_Other" id="D86_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D86_E_IP1" connectedTo="ShoreShipPower_Oud_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="76a857f8-df5a-4dc0-936d-7cb146ad186e" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Geervl" sector="Industry_Other" id="D87_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D87_E_IP1" connectedTo="ShoreShipPower_Geervl_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6120c072-8072-49c5-a901-e84f0a1c8428" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Middelh" sector="Industry_Other" id="D88_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D88_E_IP1" connectedTo="ShoreShipPower_Middelh_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="28a79244-981c-4560-9798-b7bc24f76e6a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Tinte" sector="Industry_Other" id="D89_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D89_E_IP1" connectedTo="ShoreShipPower_Tinte_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0d1da8bb-f352-4c58-9d87-c85bfb24e2ae" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="ShoreShipPower_Merwe" sector="Industry_Other" id="D90_E" power="2000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D90_E_IP1" connectedTo="ShoreShipPower_Merwe_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ShoreShipPower_profile" id="ShoreShipPower_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="2000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ShoreShipPower_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3e7138cf-8b14-4df1-b870-d79f44e7697c" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_MV66_E_Network" sector="Industry_Other" id="BaseloadMVoperator_MV66_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_MV66_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D38_E_IP1" id="BaseloadMVoperator_MV66_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Eur_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Eur_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Eur_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D39_E_IP1" id="BaseloadMVoperator_Eur_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Bot_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Bot_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Bot_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D40_E_IP1" id="BaseloadMVoperator_Bot_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Theems_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Theems_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Theems_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D41_E_IP1" id="BaseloadMVoperator_Theems_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Gerbrand_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Gerbrand_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Gerbrand_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D42_E_IP1" id="BaseloadMVoperator_Gerbrand_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Oud_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Oud_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Oud_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D43_E_IP1" id="BaseloadMVoperator_Oud_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Geervl_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Geervl_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Geervl_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D44_E_IP1" id="BaseloadMVoperator_Geervl_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Middelh_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Middelh_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Middelh_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D45_E_IP1" id="BaseloadMVoperator_Middelh_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_Tinte_E_Network" sector="Industry_Other" id="BaseloadMVoperator_Tinte_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_Tinte_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D46_E_IP1" id="BaseloadMVoperator_Tinte_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_MV25_E_Network" sector="Industry_Other" id="BaseloadMVoperator_MV25_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_MV25_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D79_E_IP1" id="BaseloadMVoperator_MV25_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="BaseloadMVoperator_MWW25_E_Network" sector="Industry_Other" id="BaseloadMVoperator_MWW25_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BaseloadMVoperator_MWW25_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D80_E_IP1" id="BaseloadMVoperator_MWW25_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_MV66_E_Network" sector="Industry_Other" id="ShoreShipPower_MV66_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_MV66_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D81_E_IP1" id="ShoreShipPower_MV66_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Eur_E_Network" sector="Industry_Other" id="ShoreShipPower_Eur_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Eur_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D82_E_IP1" id="ShoreShipPower_Eur_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Bot_E_Network" sector="Industry_Other" id="ShoreShipPower_Bot_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Bot_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D83_E_IP1" id="ShoreShipPower_Bot_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Theems_E_Network" sector="Industry_Other" id="ShoreShipPower_Theems_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Theems_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D84_E_IP1" id="ShoreShipPower_Theems_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Gerbrand_E_Network" sector="Industry_Other" id="ShoreShipPower_Gerbrand_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Gerbrand_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D85_E_IP1" id="ShoreShipPower_Gerbrand_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Oud_E_Network" sector="Industry_Other" id="ShoreShipPower_Oud_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Oud_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D86_E_IP1" id="ShoreShipPower_Oud_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Geervl_E_Network" sector="Industry_Other" id="ShoreShipPower_Geervl_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Geervl_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D87_E_IP1" id="ShoreShipPower_Geervl_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Middelh_E_Network" sector="Industry_Other" id="ShoreShipPower_Middelh_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Middelh_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D88_E_IP1" id="ShoreShipPower_Middelh_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Tinte_E_Network" sector="Industry_Other" id="ShoreShipPower_Tinte_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Tinte_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D89_E_IP1" id="ShoreShipPower_Tinte_E_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShoreShipPower_Merwe_E_Network" sector="Industry_Other" id="ShoreShipPower_Merwe_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShoreShipPower_Merwe_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D90_E_IP1" id="ShoreShipPower_Merwe_E_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.14133065452731" lat="51.9203962750735"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Others_MV" id="Others_MV_area">
        <asset xsi:type="esdl:Building" name="Others_MV" sector="Industry_Other" id="Others_MV_building">
          <asset xsi:type="esdl:GConnection" name="Others_MV_CO2_B_Network" sector="Industry_Other" id="Others_MV_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_MV_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Others_MV_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CO2_F_Network" sector="Industry_Other" id="Others_MV_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_MV_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Others_MV_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CO2_P_Network" sector="Industry_Other" id="Others_MV_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Others_MV_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Others_MV_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Others_MV_E_Network" sector="Industry_Other" id="Others_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Others_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Others_MV_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_GM_Network" sector="Industry_Other" id="Others_MV_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Others_MV_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Others_MV_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_H2_Hvision_Network" sector="Industry_Other" id="Others_MV_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Others_MV_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Others_MV_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_H2_local_Network" sector="Industry_Other" id="Others_MV_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Others_MV_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Others_MV_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_H2_new_Network" sector="Industry_Other" id="Others_MV_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Others_MV_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Others_MV_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_MV_CH4_Network" sector="Industry_Other" id="Others_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_MV_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.00893682004621" lat="51.9832144432301"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Others_Eur" id="Others_Eur_area">
        <asset xsi:type="esdl:Building" name="Others_Eur" sector="Industry_Other" id="Others_Eur_building">
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CO2_B_Network" sector="Industry_Other" id="Others_Eur_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Eur_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Others_Eur_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CO2_F_Network" sector="Industry_Other" id="Others_Eur_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Eur_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Others_Eur_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CO2_P_Network" sector="Industry_Other" id="Others_Eur_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Others_Eur_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Others_Eur_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Others_Eur_E_Network" sector="Industry_Other" id="Others_Eur_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Others_Eur_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Others_Eur_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_GM_Network" sector="Industry_Other" id="Others_Eur_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Others_Eur_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Others_Eur_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_H2_Hvision_Network" sector="Industry_Other" id="Others_Eur_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Others_Eur_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Others_Eur_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_H2_local_Network" sector="Industry_Other" id="Others_Eur_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Others_Eur_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Others_Eur_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_H2_new_Network" sector="Industry_Other" id="Others_Eur_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Others_Eur_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Others_Eur_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Eur_CH4_Network" sector="Industry_Other" id="Others_Eur_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Eur_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Eur_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.20870774621562" lat="51.9307177190705"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Others_Bot" id="Others_Bot_area">
        <asset xsi:type="esdl:Building" name="Others_Bot" sector="Industry_Other" id="Others_Bot_building">
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CO2_B_Network" sector="Industry_Other" id="Others_Bot_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Bot_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Others_Bot_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CO2_F_Network" sector="Industry_Other" id="Others_Bot_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Bot_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Others_Bot_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CO2_P_Network" sector="Industry_Other" id="Others_Bot_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Others_Bot_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Others_Bot_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Others_Bot_E_Network" sector="Industry_Other" id="Others_Bot_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Others_Bot_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Others_Bot_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_GM_Network" sector="Industry_Other" id="Others_Bot_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Others_Bot_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Others_Bot_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_H2_Hvision_Network" sector="Industry_Other" id="Others_Bot_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Others_Bot_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Others_Bot_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_H2_local_Network" sector="Industry_Other" id="Others_Bot_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Others_Bot_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Others_Bot_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_H2_new_Network" sector="Industry_Other" id="Others_Bot_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Others_Bot_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Others_Bot_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Bot_CH4_Network" sector="Industry_Other" id="Others_Bot_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Bot_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Bot_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.26878922636504" lat="51.9012026691474"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="ShellChem_Per" id="ShellChem_Per_area" buildingDensity="20.0">
        <asset xsi:type="esdl:Building" name="ShellChem_Per" sector="Industry_Chemicals" id="ShellChem_Per_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ShellChem_Per" sector="Industry_Chemicals" id="D34_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D34_E_IP1" connectedTo="ShellRefinery_Per_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="90d7d5e5-55bf-4179-850d-e52fc43e2bcb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ShellChem_Per" sector="Industry_Chemicals" id="D34_S" power="145000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="S" id="D34_S_IP1" connectedTo="C69OP1 C70OP1 C71OP1 C63OP1 C64OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="145000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d6c3672d-4ed5-475a-8b8a-9fed34f3e91c" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CO2_B_Network" sector="Industry_Chemicals" id="ShellChem_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="ShellChem_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="ShellChem_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CO2_F_Network" sector="Industry_Chemicals" id="ShellChem_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="ShellChem_Per_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="ShellChem_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CO2_P_Network" sector="Industry_Chemicals" id="ShellChem_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="ShellChem_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="ShellChem_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="ShellChem_Per_E_Network" sector="Industry_Chemicals" id="ShellChem_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="ShellChem_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="ShellChem_Per_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_GM_Network" sector="Industry_Chemicals" id="ShellChem_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="ShellChem_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="ShellChem_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_H2_Hvision_Network" sector="Industry_Chemicals" id="ShellChem_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="ShellChem_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="ShellChem_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_H2_local_Network" sector="Industry_Chemicals" id="ShellChem_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="ShellChem_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="ShellChem_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_H2_new_Network" sector="Industry_Chemicals" id="ShellChem_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="ShellChem_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ShellChem_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ShellChem_Per_CH4_Network" sector="Industry_Chemicals" id="ShellChem_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="ShellChem_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="ShellChem_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.3623983210967" lat="51.8818352899185"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Rijnmond_Per" id="Rijnmond_Per_area" buildingDensity="2.0">
        <asset xsi:type="esdl:Building" name="Rijnmond_Per" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_building">
          <asset xsi:type="esdl:PowerPlant" name="Rijnmond_Per_Powergen_flexible" power="778000000.0" sector="Power_Plant_Gas_Large" id="C61" efficiency="0.55" assetType="Powergen_flexible">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C61IP1" connectedTo="Rijnmond_Per_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Rijnmond_Per_E_Network_IP1" id="C61OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Rijnmond_Per_CO2_F_Network_IP1" id="C61OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C61" name="InputOutputRelation for Rijnmond_Per_Powergen_flexible" mainPort="C61IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C61OP1" ratio="1.8181818181818181"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C61OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CO2_B_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Rijnmond_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Rijnmond_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CO2_F_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="Rijnmond_Per_CO2_F_Network_IP1" connectedTo="C61OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Rijnmond_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CO2_P_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Rijnmond_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Rijnmond_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Rijnmond_Per_E_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Rijnmond_Per_E_Network_IP1" connectedTo="C61OP1 E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Rijnmond_Per_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_GM_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Rijnmond_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Rijnmond_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_H2_Hvision_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Rijnmond_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Rijnmond_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_H2_local_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Rijnmond_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Rijnmond_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_H2_new_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Rijnmond_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Rijnmond_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Rijnmond_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C61IP1" id="Rijnmond_Per_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Rijnmond_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Rijnmond_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Rijnmond_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Rijnmond_Per_CH4_Network" sector="Power_Plant_Gas_Large" id="Rijnmond_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Rijnmond_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Rijnmond_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.35512953460779" lat="51.890402660079"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Others_Per" id="Others_Per_area">
        <asset xsi:type="esdl:Building" name="Others_Per" sector="GENERAL" id="Others_Per_building">
          <asset xsi:type="esdl:GConnection" name="Others_Per_CO2_B_Network" sector="Industry_Other" id="Others_Per_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Per_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" name="Out1" id="Others_Per_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CO2_F_Network" sector="Industry_Other" id="Others_Per_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Others_Per_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Others_Per_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CO2_P_Network" sector="Industry_Other" id="Others_Per_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Others_Per_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Others_Per_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Others_Per_E_Network" sector="Industry_Other" id="Others_Per_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Others_Per_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Others_Per_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_GM_Network" sector="Industry_Other" id="Others_Per_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Others_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Others_Per_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_H2_Hvision_Network" sector="Industry_Other" id="Others_Per_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Others_Per_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Others_Per_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_H2_local_Network" sector="Industry_Other" id="Others_Per_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Others_Per_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Others_Per_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_H2_new_Network" sector="Industry_Other" id="Others_Per_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Others_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Others_Per_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Others_Per_CH4_Network" sector="Industry_Other" id="Others_Per_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Others_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Others_Per_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.38047640966683" lat="51.8907420101979"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Networks" id="Networks_area">
        <asset xsi:type="esdl:Building" name="Networks" sector="NET" id="Networks_building">
          <asset xsi:type="esdl:Export" name="CH4Export_Per" sector="Exchange" id="D72_CH4" power="100000000000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="CH4" id="D72_CH4_IP1" connectedTo="CH4Export_Per_Network_OP1"/>
            <costInformation xsi:type="esdl:CostInformation" id="4fe99664-7824-46b3-b58b-f555f3d1f1ba">
              <marginalCosts xsi:type="esdl:SingleValue" id="8bf2dd5c-0b0f-411b-b6c6-631cbb6c4396" value="0.001">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ff79d91f-2956-4bb1-a71b-7cf568733a80" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
              </marginalCosts>
            </costInformation>
          </asset>
          <asset xsi:type="esdl:Export" name="ExportH2_Per" sector="Exchange" id="D73_H2_new" power="100000000000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_new" id="D73_H2_new_IP1" connectedTo="H2_new_OP1"/>
            <costInformation xsi:type="esdl:CostInformation" id="91480eee-f013-474c-8974-1c8e525be1b6">
              <marginalCosts xsi:type="esdl:SingleValue" id="7b713e79-54dd-49c0-a0cb-9901479a36ca" value="0.001">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="545cac30-2264-445a-b142-1156040b24ec" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
              </marginalCosts>
            </costInformation>
          </asset>
          <asset xsi:type="esdl:ElectricityProducer" name="R1_E_Supplier" sector="NET" id="R1_E" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="E_IP1" id="R1_E_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R1_E_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2df5b1a4-7fd4-4e7b-acda-c1c360e21e6a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatProducer" name="R10_HTH_Supplier" sector="NET" id="R10_HTH" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="HTH_IP1" id="R10_HTH_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R10_HTH_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="815c7256-4c30-43d1-9f87-4decf90bb44c" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatProducer" name="R11_LTH_Supplier" sector="NET" id="R11_LTH" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="LTH" connectedTo="LTH_IP1" id="R11_LTH_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R11_LTH_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="80f70d5f-a303-4e64-9a5a-b86a5bd3d7d6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R12_H2_local_Supplier" sector="NET" id="R12_H2_local" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="H2_local_IP1" id="R12_H2_local_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R12_H2_local_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d4b6e859-efa0-4f43-b8c3-4c32af78fdd0" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R13_H2_Hvision_Supplier" sector="NET" id="R13_H2_Hvision" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" connectedTo="H2_Hvision_IP1" id="R13_H2_Hvision_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R13_H2_Hvision_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b63229df-a9eb-4de6-be9e-cac0c0d77da8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R14_H2_new_Supplier" sector="NET" id="R14_H2_new" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="H2_new" id="R14_H2_new_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R14_H2_new_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9bc249a5-c7bf-4a24-906d-c86119ab6b7f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R15_RG_Supplier" sector="NET" id="R15_RG" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="RG" connectedTo="RG_IP1" id="R15_RG_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R15_RG_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2c574411-b874-48dc-91db-b71a4b0b558c" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R16_PC_Supplier" sector="NET" id="R16_PC" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="PC" connectedTo="PC_IP1" id="R16_PC_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R16_PC_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2ec400d8-e402-4862-8e20-a9e3d0f51088" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R17_HG_Supplier" sector="NET" id="R17_HG" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="HG" connectedTo="HG_IP1" id="R17_HG_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R17_HG_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b22508db-e3c6-47e2-a1f4-89cf347f6cbd" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R18_C_Supplier" sector="NET" id="R18_C" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="C" connectedTo="C_IP1" id="R18_C_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R18_C_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7f4634c9-0e67-4676-84f1-f1a018b926c6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R19_BM_Supplier" sector="NET" id="R19_BM" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="BM" connectedTo="BM_IP1" id="R19_BM_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R19_BM_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="fe9b19c4-5634-4127-8350-24219e104623" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R20_CO2_P_Supplier" sector="NET" id="R20_CO2_P" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="CO2_P" connectedTo="CO2_P_IP1" id="R20_CO2_P_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R20_CO2_P_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="dc3199e2-d8c8-4296-8b2d-798cbdd4faa3" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R23_PW_Supplier" sector="NET" id="R23_PW" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="PW" connectedTo="PW_IP1" id="R23_PW_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R23_PW_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="17502930-7d45-4040-a94a-cda455847f1b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R24_CO_Supplier" sector="NET" id="R24_CO" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="CO" connectedTo="CO_IP1" id="R24_CO_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R24_CO_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f06d7e40-b38a-4421-bbc5-f542ad539fa5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R25_MeOH_Supplier" sector="NET" id="R25_MeOH" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="MeOH" connectedTo="MeOH_IP1" id="R25_MeOH_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R25_MeOH_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="61b15b92-a9cc-432a-93aa-45a0b5eb7d3b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R26_OR_Supplier" sector="NET" id="R26_OR" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="OR" connectedTo="OR_IP1" id="R26_OR_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R26_OR_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="44b5b567-4114-4ab0-a9c2-aa7b7ace88b5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R27_RF_Supplier" sector="NET" id="R27_RF" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="RF" id="R27_RF_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R27_RF_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7d1d4959-3de3-4e1c-90f5-b86ac9b760f3" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:SourceProducer" name="R28_W_Supplier" sector="NET" id="R28_W" power="520000.0">
            <port xsi:type="esdl:OutPort" carrier="W" connectedTo="W_IP1" id="R28_W_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R28_W_Supplier_profile" value="520000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="91df2833-227a-4bb7-ba5d-8b23f0dac214" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R3_GM_Supplier" sector="NET" id="R3_GM" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="GM" connectedTo="GM_IP1" id="R3_GM_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R3_GM_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3591d0e5-fa23-4e10-8f85-c060317bc9ad" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatProducer" name="R9_S_Supplier" sector="NET" id="R9_S" power="1000000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="S_IP1" id="R9_S_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R9_S_Supplier_profile" value="1000000000000000.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f61180dc-0154-470c-aa93-ec7c42dfb4ac" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:Import" name="ImportH2_MV" sector="Exchange" id="S2_H2_new" power="100000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="H2_new" connectedTo="H2_new_IP1" id="S2_H2_new_OP1" name="Out"/>
            <costInformation xsi:type="esdl:CostInformation" id="68cc37b1-ace5-433a-be53-e79d50f9b84f">
              <marginalCosts xsi:type="esdl:SingleValue" id="6d0e75c9-3cba-4c69-9470-714f2df44f4f" value="0.99">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ff972b22-93d2-4341-a048-92a8c94d6c88" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
              </marginalCosts>
            </costInformation>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="LNGImport_MV" sector="Exchange" id="S3_CH4" power="16000000000.0">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="LNGImport_MV_CH4_Network_IP1" id="S3_CH4_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="LNGImport_profile" id="LNGImport_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="16000000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="LNGImport_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4c576050-2bc1-4c6d-b6ec-1bb6b2f66176" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:Import" name="CH4Import_Wijngaarden" sector="Exchange" id="D78_CH4" power="100000000000000.0">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4Import_Wijngaarden_Network_IP1" id="D78_CH4_OP1" name="Out"/>
            <costInformation xsi:type="esdl:CostInformation" id="1b967f4e-57b5-403f-b0fe-f2187c547a4d">
              <marginalCosts xsi:type="esdl:SingleValue" id="508bf255-5a2f-4b71-98fb-2959e2693f1c" value="0.99">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="df3af7d7-bfab-4411-8ec7-2cc6c8fdebc4" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
              </marginalCosts>
            </costInformation>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="ExportH2_new_Hinterland" sector="Exchange" id="D91_H2_new">
            <port xsi:type="esdl:InPort" name="In" carrier="H2_new" id="D91_H2_new_IP1" connectedTo="H2_new_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="ToBeCompleted_profile" id="ToBeCompleted_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="0.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="ToBeCompleted_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3ffbbee1-e197-4958-a22e-00840017f129" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R2_CH4_Supplier" sector="NET" id="R2_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R2_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R2_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="64e6658d-ae66-41eb-beab-e3b9579c6485" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R4_CH4_Supplier" sector="NET" id="R4_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R4_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R4_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="277a69ef-f374-4ce3-99a7-13e891bc7177" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R5_CH4_Supplier" sector="NET" id="R5_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R5_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R5_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="73930a86-7294-49a0-88fe-a2092e3813a9" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R6_CH4_Supplier" sector="NET" id="R6_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R6_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R6_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="79a782c1-0649-44f8-b3dc-740675d27f61" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R7_CH4_Supplier" sector="NET" id="R7_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R7_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R7_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8238a54e-2d7a-464c-97cd-bbb0ea729e04" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasProducer" name="R8_CH4_Supplier" sector="NET" id="R8_CH4">
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="R8_CH4_OP1" name="Out">
              <profile xsi:type="esdl:SingleValue" id="R8_CH4_Supplier_profile">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c4357c59-4460-474b-9ff1-c8551e1684fc" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C94" power="1e+19" sector="NET" id="C94" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C94IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C94OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C95" power="1e+19" sector="NET" id="C95" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C95IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C95OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C96" power="1e+19" sector="NET" id="C96" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C96IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C96OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C97" power="1e+19" sector="NET" id="C97" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C97IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C97OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C98" power="1e+19" sector="NET" id="C98" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C98IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C98OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="CH4_CH4_converter" controlStrategy="DbD_C99" power="1e+19" sector="NET" id="C99" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C99IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_IP1" id="C99OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasConversion" name="GM_CH4_converter" controlStrategy="DbD_C100" power="1e+19" sector="NET" id="C100" efficiency="1.0">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C100IP1" connectedTo="CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" connectedTo="GM_IP1" id="C100OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="BM_Network" sector="Industry_Refineries" id="BM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="BM" id="BM_IP1" connectedTo="R19_BM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="BM" name="Out1" id="BM_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="C_Network" sector="Other" id="C_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="C" id="C_IP1" connectedTo="R18_C_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="C" connectedTo="C3IP1 C6IP1" id="C_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Export_Import_CH4" sector="Exchange" id="Export_Import_CH4">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Export_Import_CH4_IP1" connectedTo="LNGImport_MV_CH4_Network_OP1 CH4Import_Wijngaarden_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="CH4_Network_IP1 CH4Export_Per_Network_IP1" id="Export_Import_CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="CO_Network" sector="Other" id="CO_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO" id="CO_IP1" connectedTo="R24_CO_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO" name="Out1" id="CO_OP1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CO2_P_Network" sector="Other" id="CO2_P_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_P" id="CO2_P_IP1" connectedTo="R20_CO2_P_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="CO2_P_OP1"/>
          </asset>
          <asset xsi:type="esdl:ElectricityNetwork" name="E_Network" sector="Other" id="E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="E_IP1" connectedTo="R1_E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Neste_MVB_E_Network_IP1 Bungeloders_MVB_E_Network_IP1 Lyondell_MVB_E_Network_IP1 BP_EurA_E_Network_IP1 Indorama_EurA_E_Network_IP1 ADM_EurA_E_Network_IP1 Gunvor_EurB_E_Network_IP1 AlcoEnergy_EurC_E_Network_IP1 Caldic_EurC_E_Network_IP1 Exxonmobil_EurC_E_Network_IP1 VPREnergy_EurC_E_Network_IP1 ShellRefinery_Per_E_Network_IP1 Ducor_BotA_E_Network_IP1 Invista_BotA_E_Network_IP1 Lucite_BotA_E_Network_IP1 Huntsman_BotA_E_Network_IP1 Almatis_BotA_E_Network_IP1 Climax_BotA_E_Network_IP1 Lyondell_BotA_E_Network_IP1 AirProducts_BotA_E_Network_IP1 Tronox_BotA_E_Network_IP1 Cabot_BotA_E_Network_IP1 EKC_BotA_E_Network_IP1 Nouryon_BotA_E_Network_IP1 Shinetsu_BotA_E_Network_IP1 Hexion_BotA_E_Network_IP1 AluchemieFormer_BotB_E_Network_IP1 Cerexagri_Per_E_Network_IP1 Arkema_Per_E_Network_IP1 Wilmar_Per_E_Network_IP1 Hexion_Per_E_Network_IP1 AVR_BotA_E_Network_IP1 AirLiquide_BotA_E_Network_IP1 UniperUCML_MVB_E_Network_IP1 UniperMPP3_MVB_E_Network_IP1 MaasStroom_Per_E_Network_IP1 ProRail_Eur_E_Network_IP1 AirLiquidePergen_Per_E_Network_IP1 Exxon_BotB_E_Network_IP1 Enecogen_MVB_E_Network_IP1 Offshore_MV_E_Network_IP1 Offshore_SH_E_Network_IP1 BaseloadMVoperator_MV66_E_Network_IP1 BaseloadMVoperator_Eur_E_Network_IP1 BaseloadMVoperator_Bot_E_Network_IP1 BaseloadMVoperator_Theems_E_Network_IP1 BaseloadMVoperator_Gerbrand_E_Network_IP1 BaseloadMVoperator_Oud_E_Network_IP1 BaseloadMVoperator_Geervl_E_Network_IP1 BaseloadMVoperator_Middelh_E_Network_IP1 BaseloadMVoperator_Tinte_E_Network_IP1 BaseloadMVoperator_MV25_E_Network_IP1 BaseloadMVoperator_MWW25_E_Network_IP1 ShoreShipPower_MV66_E_Network_IP1 ShoreShipPower_Eur_E_Network_IP1 ShoreShipPower_Bot_E_Network_IP1 ShoreShipPower_Theems_E_Network_IP1 ShoreShipPower_Gerbrand_E_Network_IP1 ShoreShipPower_Oud_E_Network_IP1 ShoreShipPower_Geervl_E_Network_IP1 ShoreShipPower_Middelh_E_Network_IP1 ShoreShipPower_Tinte_E_Network_IP1 ShoreShipPower_Merwe_E_Network_IP1 Others_MV_E_Network_IP1 Others_Eur_E_Network_IP1 Others_Bot_E_Network_IP1 ShellChem_Per_E_Network_IP1 Rijnmond_Per_E_Network_IP1 Others_Per_E_Network_IP1 OnshoreWind_Eur1_Network_IP1 OnshoreWind_Eur2_Network_IP1 OnshoreWind_Eur3_Network_IP1 OnshoreWind_Botl1_Network_IP1 OnshoreWind_Botl2_Network_IP1 OnshoreWind_MV1_Network_IP1 OnshoreWind_MV2_Network_IP1 OnshoreSolar_Botl1_Network_IP1 OnshoreSolar_Botl2_Network_IP1 OnshoreSolar_Botl3_Network_IP1 OnshoreSolar_Botl4_Network_IP1 OnshoreSolar_Botl5_Network_IP1 OnshoreSolar_Botl6_Network_IP1 OnshoreSolar_Botl7_Network_IP1 OnshoreSolar_Botl8_Network_IP1 OnshoreSolar_Botl9_Network_IP1 OnshoreSolar_Eur1_Network_IP1 OnshoreSolar_Eur2_Network_IP1 OnshoreSolar_MV1_Network_IP1 OnshoreSolar_MV2_Network_IP1 Free_MV_E_Network_IP1 Engie_MVB_E_Network_IP1 ENCI_Eur_E_Network_IP1 VopakMoezelwegNeckarwegTerminals_Eur_E_Network_IP1 Verolme_Bot_E_Network_IP1 Cargill_Bot_E_Network_IP1 Rubis_Bot_E_Network_IP1 Koole_Bot_E_Network_IP1 LBC_Bot_E_Network_IP1 VopakTerminals_Bot_E_Network_IP1 APTM_MV_E_Network_IP1 RWG_MV_E_Network_IP1 SIF_MV_E_Network_IP1 PorthosBooster_MV_E_Network_IP1 AirProductsCHP_BotA_E_Network_IP1 EnecoWind_MV_E_Network_IP1" id="E_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="GM_Network" sector="Other" id="GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="GM_IP1" connectedTo="R3_GM_OP1 C100OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" connectedTo="PeakShaver_MV_GM_Network_IP1 MixStation_Per_GM_Network_IP1 Neste_MVB_GM_Network_IP1 Bungeloders_MVB_GM_Network_IP1 Lyondell_MVB_GM_Network_IP1 BP_EurA_GM_Network_IP1 Indorama_EurA_GM_Network_IP1 ADM_EurA_GM_Network_IP1 Gunvor_EurB_GM_Network_IP1 AlcoEnergy_EurC_GM_Network_IP1 Caldic_EurC_GM_Network_IP1 Exxonmobil_EurC_GM_Network_IP1 VPREnergy_EurC_GM_Network_IP1 ShellRefinery_Per_GM_Network_IP1 Ducor_BotA_GM_Network_IP1 Invista_BotA_GM_Network_IP1 Lucite_BotA_GM_Network_IP1 Huntsman_BotA_GM_Network_IP1 Almatis_BotA_GM_Network_IP1 Climax_BotA_GM_Network_IP1 Lyondell_BotA_GM_Network_IP1 AirProducts_BotA_GM_Network_IP1 Tronox_BotA_GM_Network_IP1 Cabot_BotA_GM_Network_IP1 EKC_BotA_GM_Network_IP1 Nouryon_BotA_GM_Network_IP1 Shinetsu_BotA_GM_Network_IP1 Hexion_BotA_GM_Network_IP1 AluchemieFormer_BotB_GM_Network_IP1 Cerexagri_Per_GM_Network_IP1 Arkema_Per_GM_Network_IP1 Wilmar_Per_GM_Network_IP1 Hexion_Per_GM_Network_IP1 AVR_BotA_GM_Network_IP1 AirLiquide_BotA_GM_Network_IP1 Uniper_MVB_GM_Network_IP1 MaasStroom_Per_GM_Network_IP1 ProRail_Eur_GM_Network_IP1 AirLiquidePergen_Per_GM_Network_IP1 Exxon_BotB_GM_Network_IP1 Enecogen_MVB_GM_Network_IP1 Others_MV_GM_Network_IP1 Others_Eur_GM_Network_IP1 Others_Bot_GM_Network_IP1 ShellChem_Per_GM_Network_IP1 Rijnmond_Per_GM_Network_IP1 Others_Per_GM_Network_IP1 Free_MV_GM_Network_IP1 ENCI_Eur_GM_Network_IP1 VopakMoezelwegNeckarwegTerminals_Eur_GM_Network_IP1 Verolme_Bot_GM_Network_IP1 Cargill_Bot_GM_Network_IP1 Rubis_Bot_GM_Network_IP1 Koole_Bot_GM_Network_IP1 LBC_Bot_GM_Network_IP1 VopakTerminals_Bot_GM_Network_IP1 AsfaltCentrale_Bot_GM_Network_IP1 Hoyer_Bot_GM_Network_IP1 PernisWestland_Per_GM_Network_IP1 EuopoortWestland_Eur_GM_Network_IP1 Maffina_Eur_GM_Network_IP1 Greif_Bot_GM_Network_IP1 WatcoService_Bot_GM_Network_IP1 JBDEco_Bot_GM_Network_IP1 EuromaxTerminal_MV_GM_Network_IP1 AirProductsCHP_BotA_GM_Network_IP1" id="GM_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="H2_Hvision_Network" sector="Other" id="H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="H2_Hvision_IP1" connectedTo="R13_H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" connectedTo="Neste_MVB_H2_Hvision_Network_IP1 Bungeloders_MVB_H2_Hvision_Network_IP1 Lyondell_MVB_H2_Hvision_Network_IP1 BP_EurA_H2_Hvision_Network_IP1 Indorama_EurA_H2_Hvision_Network_IP1 ADM_EurA_H2_Hvision_Network_IP1 Gunvor_EurB_H2_Hvision_Network_IP1 AlcoEnergy_EurC_H2_Hvision_Network_IP1 Caldic_EurC_H2_Hvision_Network_IP1 Exxonmobil_EurC_H2_Hvision_Network_IP1 VPREnergy_EurC_H2_Hvision_Network_IP1 ShellRefinery_Per_H2_Hvision_Network_IP1 Ducor_BotA_H2_Hvision_Network_IP1 Invista_BotA_H2_Hvision_Network_IP1 Lucite_BotA_H2_Hvision_Network_IP1 Huntsman_BotA_H2_Hvision_Network_IP1 Almatis_BotA_H2_Hvision_Network_IP1 Climax_BotA_H2_Hvision_Network_IP1 Lyondell_BotA_H2_Hvision_Network_IP1 AirProducts_BotA_H2_Hvision_Network_IP1 Tronox_BotA_H2_Hvision_Network_IP1 Cabot_BotA_H2_Hvision_Network_IP1 EKC_BotA_H2_Hvision_Network_IP1 Nouryon_BotA_H2_Hvision_Network_IP1 Shinetsu_BotA_H2_Hvision_Network_IP1 Hexion_BotA_H2_Hvision_Network_IP1 AluchemieFormer_BotB_H2_Hvision_Network_IP1 Cerexagri_Per_H2_Hvision_Network_IP1 Arkema_Per_H2_Hvision_Network_IP1 Wilmar_Per_H2_Hvision_Network_IP1 Hexion_Per_H2_Hvision_Network_IP1 AVR_BotA_H2_Hvision_Network_IP1 AirLiquide_BotA_H2_Hvision_Network_IP1 Uniper_MVB_H2_Hvision_Network_IP1 MaasStroom_Per_H2_Hvision_Network_IP1 ProRail_Eur_H2_Hvision_Network_IP1 AirLiquidePergen_Per_H2_Hvision_Network_IP1 Exxon_BotB_H2_Hvision_Network_IP1 Enecogen_MVB_H2_Hvision_Network_IP1 Others_MV_H2_Hvision_Network_IP1 Others_Eur_H2_Hvision_Network_IP1 Others_Bot_H2_Hvision_Network_IP1 ShellChem_Per_H2_Hvision_Network_IP1 Rijnmond_Per_H2_Hvision_Network_IP1 Others_Per_H2_Hvision_Network_IP1 Free_MV_H2_Hvision_Network_IP1 AirProductsCHP_BotA_H2_Hvision_Network_IP1" id="H2_Hvision_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="H2_local_Network" sector="Other" id="H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="H2_local_IP1" connectedTo="Nouryon_BotA_H2_local_Network_OP1 AirLiquide_BotA_H2_local_Network_OP1 R12_H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" connectedTo="Neste_MVB_H2_local_Network_IP1 Bungeloders_MVB_H2_local_Network_IP1 Lyondell_MVB_H2_local_Network_IP1 BP_EurA_H2_local_Network_IP1 Indorama_EurA_H2_local_Network_IP1 ADM_EurA_H2_local_Network_IP1 Gunvor_EurB_H2_local_Network_IP1 AlcoEnergy_EurC_H2_local_Network_IP1 Caldic_EurC_H2_local_Network_IP1 Exxonmobil_EurC_H2_local_Network_IP1 VPREnergy_EurC_H2_local_Network_IP1 ShellRefinery_Per_H2_local_Network_IP1 Ducor_BotA_H2_local_Network_IP1 Invista_BotA_H2_local_Network_IP1 Lucite_BotA_H2_local_Network_IP1 Huntsman_BotA_H2_local_Network_IP1 Almatis_BotA_H2_local_Network_IP1 Climax_BotA_H2_local_Network_IP1 Lyondell_BotA_H2_local_Network_IP1 AirProducts_BotA_H2_local_Network_IP1 Tronox_BotA_H2_local_Network_IP1 Cabot_BotA_H2_local_Network_IP1 EKC_BotA_H2_local_Network_IP1 Shinetsu_BotA_H2_local_Network_IP1 Hexion_BotA_H2_local_Network_IP1 AluchemieFormer_BotB_H2_local_Network_IP1 Cerexagri_Per_H2_local_Network_IP1 Arkema_Per_H2_local_Network_IP1 Wilmar_Per_H2_local_Network_IP1 Hexion_Per_H2_local_Network_IP1 AVR_BotA_H2_local_Network_IP1 Uniper_MVB_H2_local_Network_IP1 MaasStroom_Per_H2_local_Network_IP1 ProRail_Eur_H2_local_Network_IP1 AirLiquidePergen_Per_H2_local_Network_IP1 Exxon_BotB_H2_local_Network_IP1 Enecogen_MVB_H2_local_Network_IP1 Others_MV_H2_local_Network_IP1 Others_Eur_H2_local_Network_IP1 Others_Bot_H2_local_Network_IP1 ShellChem_Per_H2_local_Network_IP1 Rijnmond_Per_H2_local_Network_IP1 Others_Per_H2_local_Network_IP1 Free_MV_H2_local_Network_IP1 AirProductsCHP_BotA_H2_local_Network_IP1" id="H2_local_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="Export_Import_H2_new" sector="Other" id="H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="H2_new_IP1" connectedTo="S2_H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" connectedTo="PeakShaver_MV_H2_new_Network_IP1 MixStation_Per_H2_new_Network_IP1 Neste_MVB_H2_new_Network_IP1 Bungeloders_MVB_H2_new_Network_IP1 Lyondell_MVB_H2_new_Network_IP1 BP_EurA_H2_new_Network_IP1 Indorama_EurA_H2_new_Network_IP1 ADM_EurA_H2_new_Network_IP1 Gunvor_EurB_H2_new_Network_IP1 AlcoEnergy_EurC_H2_new_Network_IP1 Caldic_EurC_H2_new_Network_IP1 Exxonmobil_EurC_H2_new_Network_IP1 VPREnergy_EurC_H2_new_Network_IP1 ShellRefinery_Per_H2_new_Network_IP1 Ducor_BotA_H2_new_Network_IP1 Invista_BotA_H2_new_Network_IP1 Lucite_BotA_H2_new_Network_IP1 Huntsman_BotA_H2_new_Network_IP1 Almatis_BotA_H2_new_Network_IP1 Climax_BotA_H2_new_Network_IP1 Lyondell_BotA_H2_new_Network_IP1 AirProducts_BotA_H2_new_Network_IP1 Tronox_BotA_H2_new_Network_IP1 Cabot_BotA_H2_new_Network_IP1 EKC_BotA_H2_new_Network_IP1 Nouryon_BotA_H2_new_Network_IP1 Shinetsu_BotA_H2_new_Network_IP1 Hexion_BotA_H2_new_Network_IP1 AluchemieFormer_BotB_H2_new_Network_IP1 Cerexagri_Per_H2_new_Network_IP1 Arkema_Per_H2_new_Network_IP1 Wilmar_Per_H2_new_Network_IP1 Hexion_Per_H2_new_Network_IP1 AVR_BotA_H2_new_Network_IP1 AirLiquide_BotA_H2_new_Network_IP1 Uniper_MVB_H2_new_Network_IP1 MaasStroom_Per_H2_new_Network_IP1 ProRail_Eur_H2_new_Network_IP1 AirLiquidePergen_Per_H2_new_Network_IP1 Exxon_BotB_H2_new_Network_IP1 Enecogen_MVB_H2_new_Network_IP1 Others_MV_H2_new_Network_IP1 Others_Eur_H2_new_Network_IP1 Others_Bot_H2_new_Network_IP1 ShellChem_Per_H2_new_Network_IP1 Rijnmond_Per_H2_new_Network_IP1 Others_Per_H2_new_Network_IP1 D73_H2_new_IP1 D91_H2_new_IP1 Free_MV_H2_new_Network_IP1 ENCI_Eur_H2_new_Network_IP1 VopakMoezelwegNeckarwegTerminals_Eur_H2_new_Network_IP1 Verolme_Bot_H2_new_Network_IP1 Cargill_Bot_H2_new_Network_IP1 Rubis_Bot_H2_new_Network_IP1 Koole_Bot_H2_new_Network_IP1 LBC_Bot_H2_new_Network_IP1 VopakTerminals_Bot_H2_new_Network_IP1 AsfaltCentrale_Bot_H2_new_Network_IP1 Hoyer_Bot_H2_new_Network_IP1 PernisWestland_Per_H2_new_Network_IP1 EuopoortWestland_Eur_H2_new_Network_IP1 Maffina_Eur_H2_new_Network_IP1 Greif_Bot_H2_new_Network_IP1 WatcoService_Bot_H2_new_Network_IP1 JBDEco_Bot_H2_new_Network_IP1 EuromaxTerminal_MV_H2_new_Network_IP1 AirProductsCHP_BotA_H2_new_Network_IP1" id="H2_new_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="HG_Network" sector="Other" id="HG_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="HG" id="HG_IP1" connectedTo="R17_HG_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HG" name="Out1" id="HG_OP1"/>
          </asset>
          <asset xsi:type="esdl:HeatNetwork" name="HTH_Network" sector="Other" id="HTH_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="HTH" id="HTH_IP1" connectedTo="R10_HTH_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" connectedTo="AirProductsCHP_BotA_HTH_Network_IP1" id="HTH_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R8_CH4_OP1 C99OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 Free_MV_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R7_CH4_OP1 C98OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="MixStation_Per_CH4_Network_IP1 PeakShaver_MV_CH4_Network_IP1 Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_Heracles_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 EuromaxTerminal_MV_CH4_Network_IP1 Free_MV_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="LNGImport_MV_CH4_Network" sector="Exchange" id="LNGImport_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="LNGImport_MV_CH4_Network_IP1" connectedTo="S3_CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Export_Import_CH4_IP1" id="LNGImport_MV_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:HeatNetwork" name="LTH_Network" sector="Other" id="LTH_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="LTH" id="LTH_IP1" connectedTo="R11_LTH_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="LTH" connectedTo="D72_LTH_IP1 AirProductsCHP_BotA_LTH_Network_IP1" id="LTH_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="MeOH_Network" sector="Other" id="MeOH_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="MeOH" id="MeOH_IP1" connectedTo="R25_MeOH_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="MeOH" name="Out1" id="MeOH_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="OR_Network" sector="Other" id="OR_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="OR" id="OR_IP1" connectedTo="R26_OR_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="OR" name="Out1" id="OR_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="PC_Network" sector="Other" id="PC_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="PC" id="PC_IP1" connectedTo="R16_PC_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="PC" name="Out1" id="PC_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="PW_Network" sector="Other" id="PW_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="PW" id="PW_IP1" connectedTo="R23_PW_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="PW" name="Out1" id="PW_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="RF_Network" sector="Other" id="RF_Network">
            <port xsi:type="esdl:InPort" carrier="RF" name="In1" id="RF_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="RF" name="Out1" id="RF_OP1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="RG_Network" sector="Other" id="RG_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="RG" id="RG_IP1" connectedTo="R15_RG_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="RG" name="Out1" id="RG_OP1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R6_CH4_OP1 C97OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 Free_MV_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R4_CH4_OP1 C95OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 Free_MV_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R5_CH4_OP1 C96OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 AirLiquideEnecal_BotA_CH4_Network_IP1 AirLiquideEurogen_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 Free_MV_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_IP1" connectedTo="R2_CH4_OP1 C94OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Neste_MVB_CH4_Network_IP1 Bungeloders_MVB_CH4_Network_IP1 Lyondell_MVB_CH4_Network_IP1 BP_EurA_CH4_Network_IP1 Indorama_EurA_CH4_Network_IP1 ADM_EurA_CH4_Network_IP1 Gunvor_EurB_CH4_Network_IP1 AlcoEnergy_EurC_CH4_Network_IP1 Caldic_EurC_CH4_Network_IP1 Exxonmobil_EurC_CH4_Network_IP1 VPREnergy_EurC_CH4_Network_IP1 ShellRefinery_Per_CH4_Network_IP1 Ducor_BotA_CH4_Network_IP1 Invista_BotA_CH4_Network_IP1 Lucite_BotA_CH4_Network_IP1 Huntsman_BotA_CH4_Network_IP1 Almatis_BotA_CH4_Network_IP1 Climax_BotA_CH4_Network_IP1 Lyondell_BotA_CH4_Network_IP1 AirProducts_BotA_CH4_Network_IP1 Tronox_BotA_CH4_Network_IP1 Cabot_BotA_CH4_Network_IP1 EKC_BotA_CH4_Network_IP1 Nouryon_BotA_CH4_Network_IP1 Shinetsu_BotA_CH4_Network_IP1 Hexion_BotA_CH4_Network_IP1 AluchemieFormer_BotB_CH4_Network_IP1 Cerexagri_Per_CH4_Network_IP1 Arkema_Per_CH4_Network_IP1 Wilmar_Per_CH4_Network_IP1 Hexion_Per_CH4_Network_IP1 AVR_BotA_CH4_Network_IP1 AirLiquide_BotA_CH4_Network_IP1 Uniper_MVB_CH4_Network_IP1 MaasStroom_Per_CH4_Network_IP1 ProRail_Eur_CH4_Network_IP1 AirLiquidePergen_Per_CH4_Network_IP1 Exxon_BotB_CH4_Network_IP1 Enecogen_MVB_CH4_Network_IP1 Others_MV_CH4_Network_IP1 Others_Eur_CH4_Network_IP1 Others_Bot_CH4_Network_IP1 ShellChem_Per_CH4_Network_IP1 Rijnmond_Per_CH4_Network_IP1 Others_Per_CH4_Network_IP1 Free_MV_CH4_Network_IP1 ENCI_Eur_CH4_Network_IP1 VopakMoezelwegNeckarwegTerminals_Eur_CH4_Network_IP1 Verolme_Bot_CH4_Network_IP1 Cargill_Bot_CH4_Network_IP1 Rubis_Bot_CH4_Network_IP1 Koole_Bot_CH4_Network_IP1 LBC_Bot_CH4_Network_IP1 VopakTerminals_Bot_CH4_Network_IP1 AsfaltCentrale_Bot_CH4_Network_IP1 Hoyer_Bot_CH4_Network_IP1 PernisWestland_Per_CH4_Network_IP1 EuopoortWestland_Eur_CH4_Network_IP1 Maffina_Eur_CH4_Network_IP1 Greif_Bot_CH4_Network_IP1 WatcoService_Bot_CH4_Network_IP1 JBDEco_Bot_CH4_Network_IP1 AirProductsCHP_BotA_CH4_Network_IP1" id="CH4_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:HeatNetwork" name="S_Network" sector="Other" id="S_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="S" id="S_IP1" connectedTo="R9_S_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" name="Out1" id="S_OP1"/>
          </asset>
          <asset xsi:type="esdl:EnergyNetwork" name="W_Network" sector="Other" id="W_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="W" id="W_IP1" connectedTo="R28_W_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="W" connectedTo="C38IP1" id="W_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasNetwork" name="CH4_Network" sector="Other" id="CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4_Network_IP1" connectedTo="Export_Import_CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C94IP1 C95IP1 C96IP1 C97IP1 C98IP1 C99IP1 C100IP1" id="CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="CH4Import_Wijngaarden_Network" sector="Other" id="CH4Import_Wijngaarden_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4Import_Wijngaarden_Network_IP1" connectedTo="D78_CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="Export_Import_CH4_IP1" id="CH4Import_Wijngaarden_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ImportH2_MV_Network" sector="Exchange" id="ImportH2_MV_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="ImportH2_MV_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ImportH2_MV_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ExportH2_Per_Network" sector="Exchange" id="ExportH2_Per_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="ExportH2_Per_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ExportH2_Per_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="ExportH2_Hinterland_Network" sector="Exchange" id="ExportH2_Hinterland_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="ExportH2_Hinterland_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="ExportH2_Hinterland_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="CH4Export_Per_Network" sector="Exchange" id="CH4Export_Per_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="CH4Export_Per_Network_IP1" connectedTo="Export_Import_CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="D72_CH4_IP1" id="CH4Export_Per_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.22887795225221" lat="51.8189082607462"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Engie_MVB" id="Engie_MVB_area" buildingDensity="4.0">
        <asset xsi:type="esdl:Building" name="Engie_MVB" sector="Power_Plant_Coal" id="Engie_MVB_building">
          <asset xsi:type="esdl:PowerPlant" name="Engiecoal_MVB_Powergen_baseload" power="1739000000.0" sector="Power_Plant_Coal" id="C6" efficiency="0.46" fullLoadHours="5404" assetType="Powergen_baseload">
            <port xsi:type="esdl:InPort" name="In1" carrier="C" id="C6IP1" connectedTo="C_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="Engie_MVB_E_Network_IP1" id="C6OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Engie_MVB_CO2_F_Network_IP1" id="C6OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C6" name="InputOutputRelation for Engiecoal_MVB_Powergen_baseload" mainPort="C6IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C6OP1" ratio="2.1739130434782608"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C6OP3" ratio="2936.3401456424713"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CO2_P_Network" sector="Power_Plant_Coal" id="Engie_MVB_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Engie_MVB_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Engie_MVB_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Engie_MVB_E_Network" sector="Power_Plant_Coal" id="Engie_MVB_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Engie_MVB_E_Network_IP1" connectedTo="E_OP1 C6OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Engie_MVB_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_GM_Network" sector="Power_Plant_Coal" id="Engie_MVB_GM_Network">
            <port xsi:type="esdl:InPort" carrier="GM" name="In1" id="Engie_MVB_GM_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Engie_MVB_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_H2_Hvision_Network" sector="Power_Plant_Coal" id="Engie_MVB_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" carrier="H2_Hvision" name="In1" id="Engie_MVB_H2_Hvision_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Engie_MVB_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_H2_local_Network" sector="Power_Plant_Coal" id="Engie_MVB_H2_local_Network">
            <port xsi:type="esdl:InPort" carrier="H2_local" name="In1" id="Engie_MVB_H2_local_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Engie_MVB_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_H2_new_Network" sector="Power_Plant_Coal" id="Engie_MVB_H2_new_Network">
            <port xsi:type="esdl:InPort" carrier="H2_new" name="In1" id="Engie_MVB_H2_new_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Engie_MVB_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Engie_MVB_CH4_Network" sector="Power_Plant_Coal" id="Engie_MVB_CH4_Network">
            <port xsi:type="esdl:InPort" carrier="CH4" name="In1" id="Engie_MVB_CH4_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Engie_MVB_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.05453437441689" lat="51.9434839128313"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="OnshoreWind" id="OnshoreWind_area">
        <asset xsi:type="esdl:Building" name="OnshoreWind" sector="Wind_Onshore" id="OnshoreWind_building">
          <asset xsi:type="esdl:WindTurbine" name="EnecoWind_MV" sector="Wind_Onshore" id="S1_E_OnshoreWind" power="100000000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="EnecoWind_MV_E_Network_IP1" id="S1_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="100000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c7ef0733-9395-4003-9691-64da1cc902d8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_Eur1" sector="Wind_Onshore" id="S8_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_Eur1_Network_IP1" id="S8_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c63c3558-f222-40d1-b6d5-97d94979176a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_Eur2" sector="Wind_Onshore" id="S9_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_Eur2_Network_IP1" id="S9_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9f1ca035-8ef8-439c-a1e1-98b589feceaf" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_Eur3" sector="Wind_Onshore" id="S10_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_Eur3_Network_IP1" id="S10_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ca8fdb2a-0593-40c0-a09f-8f64c2203ce7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_Botl1" sector="Wind_Onshore" id="S11_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_Botl1_Network_IP1" id="S11_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4f69341e-d3b7-4e7b-a809-bbbf118db8a4" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_Botl2" sector="Wind_Onshore" id="S12_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_Botl2_Network_IP1" id="S12_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4d5c4853-bc90-493a-978c-2fd03b08de16" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_MV1" sector="Wind_Onshore" id="S13_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_MV1_Network_IP1" id="S13_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b5091dbf-e907-4118-8a2e-242dddbd9ec8" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:WindTurbine" name="OnshoreWind_MV2" sector="Wind_Onshore" id="S14_E_OnshoreWind" power="31875000.0">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreWind_MV2_Network_IP1" id="S14_E_OnshoreWind_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreWind_profile" id="OnshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="31875000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreWind_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6159bade-2f44-4050-b55d-dd6e19595144" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="EnecoWind_MV_E_Network" sector="Wind_Onshore" id="EnecoWind_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="EnecoWind_MV_E_Network_IP1" connectedTo="E_OP1 S1_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="EnecoWind_MV_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_Botl1_Network" sector="Wind_Onshore" id="OnshoreWind_Botl1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_Botl1_Network_IP1" connectedTo="E_OP1 S11_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_Botl1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_Botl2_Network" sector="Wind_Onshore" id="OnshoreWind_Botl2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_Botl2_Network_IP1" connectedTo="E_OP1 S12_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_Botl2_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_Eur1_Network" sector="Wind_Onshore" id="OnshoreWind_Eur1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_Eur1_Network_IP1" connectedTo="E_OP1 S8_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_Eur1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_Eur2_Network" sector="Wind_Onshore" id="OnshoreWind_Eur2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_Eur2_Network_IP1" connectedTo="E_OP1 S9_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_Eur2_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_Eur3_Network" sector="Wind_Onshore" id="OnshoreWind_Eur3_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_Eur3_Network_IP1" connectedTo="E_OP1 S10_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_Eur3_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_MV1_Network" sector="Wind_Onshore" id="OnshoreWind_MV1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_MV1_Network_IP1" connectedTo="E_OP1 S13_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_MV1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreWind_MV2_Network" sector="Wind_Onshore" id="OnshoreWind_MV2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreWind_MV2_Network_IP1" connectedTo="E_OP1 S14_E_OnshoreWind_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreWind_MV2_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.09069055156834" lat="51.9095429675326"/>
        </asset>
        <asset xsi:type="esdl:Building" name="OnshoreSolar" sector="Wind_Onshore" id="OnshoreSolar_building">
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl1" sector="Wind_Onshore" id="S15_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl1_Network_IP1" id="S15_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="981ccd92-b92f-4286-aa09-be8f03234133" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl2" sector="Wind_Onshore" id="S16_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl2_Network_IP1" id="S16_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="85698e4e-6ef2-4975-8ab2-c59666978202" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl3" sector="Wind_Onshore" id="S17_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl3_Network_IP1" id="S17_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9ca17033-4ea8-45d5-b67b-5a2016aa03c5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl4" sector="Wind_Onshore" id="S18_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl4_Network_IP1" id="S18_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="06a2ea1c-7d6e-4e80-b576-06a47c4b7e63" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl5" sector="Wind_Onshore" id="S19_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl5_Network_IP1" id="S19_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="45337733-5af5-4ca8-acf2-6ad2f9c29803" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl6" sector="Wind_Onshore" id="S20_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl6_Network_IP1" id="S20_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="fa653adc-8778-43fd-bac6-4101a5e0ec9a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl7" sector="Wind_Onshore" id="S21_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl7_Network_IP1" id="S21_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a82b1d50-f71a-474b-936a-322928f27344" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl8" sector="Wind_Onshore" id="S22_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl8_Network_IP1" id="S22_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="543f5087-040b-4957-93b3-c140c35555c5" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Botl9" sector="Wind_Onshore" id="S23_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Botl9_Network_IP1" id="S23_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1333fcaf-dfdb-4b6b-992a-07cdd5efd917" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Eur1" sector="Wind_Onshore" id="S24_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Eur1_Network_IP1" id="S24_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6d61ab44-a1da-4da7-87b9-3a92d33761d1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_Eur2" sector="Wind_Onshore" id="S25_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_Eur2_Network_IP1" id="S25_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cd7d9aca-c858-4a8e-aabb-a2d3bf32ecc6" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_MV1" sector="Wind_Onshore" id="S26_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_MV1_Network_IP1" id="S26_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b221068f-a8e6-4a58-868e-cb992960d61a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:PVPark" name="OnshoreSolar_MV2" sector="Wind_Onshore" id="S27_E_OnshoreSolar" power="7692307.692307693">
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="OnshoreSolar_MV2_Network_IP1" id="S27_E_OnshoreSolar_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OnshoreSolar_profile" id="OnshoreSolar_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="7692307.692307693" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OnshoreSolar_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7832a5a7-17b4-4350-8b5a-7ddef9beb0c7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl1_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl1_Network_IP1" connectedTo="E_OP1 S15_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl2_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl2_Network_IP1" connectedTo="E_OP1 S16_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl2_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl3_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl3_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl3_Network_IP1" connectedTo="E_OP1 S17_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl3_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl4_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl4_Network_IP1" connectedTo="E_OP1 S18_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl5_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl5_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl5_Network_IP1" connectedTo="E_OP1 S19_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl5_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl6_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl6_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl6_Network_IP1" connectedTo="E_OP1 S20_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl6_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl7_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl7_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl7_Network_IP1" connectedTo="E_OP1 S21_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl7_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl8_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl8_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl8_Network_IP1" connectedTo="E_OP1 S22_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl8_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Botl9_Network" sector="Wind_Onshore" id="OnshoreSolar_Botl9_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Botl9_Network_IP1" connectedTo="E_OP1 S23_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Botl9_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Eur1_Network" sector="Wind_Onshore" id="OnshoreSolar_Eur1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Eur1_Network_IP1" connectedTo="E_OP1 S24_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Eur1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_Eur2_Network" sector="Wind_Onshore" id="OnshoreSolar_Eur2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_Eur2_Network_IP1" connectedTo="E_OP1 S25_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_Eur2_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_MV1_Network" sector="Wind_Onshore" id="OnshoreSolar_MV1_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_MV1_Network_IP1" connectedTo="E_OP1 S26_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_MV1_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="OnshoreSolar_MV2_Network" sector="Wind_Onshore" id="OnshoreSolar_MV2_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="OnshoreSolar_MV2_Network_IP1" connectedTo="E_OP1 S27_E_OnshoreSolar_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="OnshoreSolar_MV2_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.07609933452732" lat="51.9079544585348"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="OnshoreSolar" id="OnshoreSolar_area"/>
      <area xsi:type="esdl:Area" name="Free_MV" id="Free_MV_area" buildingDensity="20.0">
        <asset xsi:type="esdl:Building" name="Free_MV" sector="Other" id="Free_MV_building">
          <asset xsi:type="esdl:GConnection" name="Free_MV_CO2_B_Network" sector="Other" id="Free_MV_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_B" name="In1" id="Free_MV_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_B" name="Out1" id="Free_MV_CO2_B_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CO2_F_Network" sector="Other" id="Free_MV_CO2_F_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_F" name="In1" id="Free_MV_CO2_F_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="Free_MV_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CO2_P_Network" sector="Other" id="Free_MV_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="Free_MV_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" name="Out1" id="Free_MV_CO2_P_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Free_MV_E_Network" sector="Other" id="Free_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="Free_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="Free_MV_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_GM_Network" sector="Other" id="Free_MV_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="Free_MV_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="Free_MV_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_H2_Hvision_Network" sector="Other" id="Free_MV_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="Free_MV_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="Free_MV_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_H2_local_Network" sector="Industry_Other" id="Free_MV_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="Free_MV_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="Free_MV_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_H2_new_Network" sector="Other" id="Free_MV_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="Free_MV_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="Free_MV_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="Free_MV_CH4_Network" sector="Other" id="Free_MV_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="Free_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="Free_MV_CH4_Network_OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.00507444069866" lat="51.9834787547972"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="RWG_MV" id="RWG_MV_area">
        <asset xsi:type="esdl:Building" name="RWG_MV" sector="Industry_Other" id="RWG_MV_building">
          <asset xsi:type="esdl:ElectricityDemand" name="RWG_MV" sector="Industry_Other" id="D48_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D48_E_IP1" connectedTo="RWG_MV_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c6b890d-ac17-483a-aac1-95145619e59a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="RWG_MV_E_Network" sector="Industry_Other" id="RWG_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="RWG_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D48_E_IP1" id="RWG_MV_E_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="3.98758643811501" lat="51.9528082142387"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="APTM_MV" id="APTM_MV_area">
        <asset xsi:type="esdl:Building" name="APTM_MV" sector="Industry_Other" id="APTM_MV_building">
          <asset xsi:type="esdl:ElectricityDemand" name="APTM_MV" sector="Industry_Other" id="D49_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D49_E_IP1" connectedTo="APTM_MV_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="bb0e8d79-3f65-44e5-9173-50f5ec6c62a3" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="APTM_MV_E_Network" sector="Industry_Other" id="APTM_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="APTM_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D49_E_IP1" id="APTM_MV_E_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.0051817292527" lat="51.9534694385945"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="SIF_MV" id="SIF_MV_area">
        <asset xsi:type="esdl:Building" name="SIF_MV" sector="Industry_Other" id="SIF_MV_building">
          <asset xsi:type="esdl:ElectricityDemand" name="SIF_MV" sector="Industry_Other" id="D50_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D50_E_IP1" connectedTo="SIF_MV_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="e29d501e-9659-4c8e-ba44-9d44ace6288b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="SIF_MV_E_Network" sector="Industry_Other" id="SIF_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="SIF_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D50_E_IP1" id="SIF_MV_E_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.00840038021126" lat="51.9678156054365"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="PorthosBooster_MV" id="PorthosBooster_MV_area">
        <asset xsi:type="esdl:Building" name="PorthosBooster_MV" sector="Industry_Other" id="PorthosBooster_MV_building">
          <asset xsi:type="esdl:ElectricityDemand" name="PorthosBooster_MV" sector="Industry_Other" id="D51_E" power="10000000.0">
            <port xsi:type="esdl:InPort" name="In" carrier="E" id="D51_E_IP1" connectedTo="PorthosBooster_MV_E_Network_OP1">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="10000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f9f9070f-2e9e-4602-b87e-dd432328d38a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:EConnection" name="PorthosBooster_MV_E_Network" sector="Industry_Other" id="PorthosBooster_MV_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="PorthosBooster_MV_E_Network_IP1" connectedTo="E_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="D51_E_IP1" id="PorthosBooster_MV_E_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="3.98554796031245" lat="51.9893592826153"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="AirProductsCHP_BotA" id="AirProductsCHP_BotA_area">
        <asset xsi:type="esdl:Building" name="AirProductsCHP_BotA" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_building">
          <asset xsi:type="esdl:CHP" name="AirProducts_BotA_Cogen" controlStrategy="DbD_C36" power="312000000.0" sector="Power_Plant_CHP" id="C36" efficiency="0.45" fullLoadHours="4380" assetType="Cogen">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="C36IP1" connectedTo="AirProductsCHP_BotA_CH4_Network_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="S" connectedTo="D19_S_IP1" id="C36OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="AirProductsCHP_BotA_E_Network_IP1" id="C36OP2" name="Out2"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="AirProductsCHP_BotA_CO2_F_Network_IP1" id="C36OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C36" name="InputOutputRelation for AirProducts_BotA_Cogen" mainPort="C36IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C36OP1" ratio="2.2222222222222223"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C36OP2" ratio="3.2258064516129035"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C36OP3" ratio="4916.420845624385"/>
            </behaviour>
          </asset>
          <asset xsi:type="esdl:EConnection" name="AirProductsCHP_BotA_E_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_E_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="E" id="AirProductsCHP_BotA_E_Network_IP1" connectedTo="E_OP1 C36OP2"/>
            <port xsi:type="esdl:OutPort" carrier="E" name="Out1" id="AirProductsCHP_BotA_E_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProductsCHP_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_GM_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_GM_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="AirProductsCHP_BotA_GM_Network_IP1" connectedTo="GM_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="AirProductsCHP_BotA_GM_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProductsCHP_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProductsCHP_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProductsCHP_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="C36IP1" id="AirProductsCHP_BotA_CH4_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CH4_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CH4_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="AirProductsCHP_BotA_CH4_Network_IP1" connectedTo="CH4_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="CH4" name="Out1" id="AirProductsCHP_BotA_CH4_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_HTH_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_HTH_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="HTH" id="AirProductsCHP_BotA_HTH_Network_IP1" connectedTo="HTH_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="HTH" name="Out1" id="AirProductsCHP_BotA_HTH_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_LTH_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_LTH_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="LTH" id="AirProductsCHP_BotA_LTH_Network_IP1" connectedTo="LTH_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="LTH" name="Out1" id="AirProductsCHP_BotA_LTH_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_H2_local_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_H2_local_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_local" id="AirProductsCHP_BotA_H2_local_Network_IP1" connectedTo="H2_local_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_local" name="Out1" id="AirProductsCHP_BotA_H2_local_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_H2_Hvision_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_H2_Hvision_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_Hvision" id="AirProductsCHP_BotA_H2_Hvision_Network_IP1" connectedTo="H2_Hvision_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_Hvision" name="Out1" id="AirProductsCHP_BotA_H2_Hvision_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_H2_new_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_H2_new_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="AirProductsCHP_BotA_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="AirProductsCHP_BotA_H2_new_Network_OP1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CO2_P_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CO2_P_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_P" name="In1" id="AirProductsCHP_BotA_CO2_P_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_P" connectedTo="D76_CO2_P_IP1" id="AirProductsCHP_BotA_CO2_P_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CO2_B_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CO2_B_Network">
            <port xsi:type="esdl:InPort" carrier="CO2_B" name="In1" id="AirProductsCHP_BotA_CO2_B_Network_IP1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_B" connectedTo="D76_CO2_B_IP1" id="AirProductsCHP_BotA_CO2_B_Network_OP1" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GConnection" name="AirProductsCHP_BotA_CO2_F_Network" sector="Power_Plant_CHP" id="AirProductsCHP_BotA_CO2_F_Network">
            <port xsi:type="esdl:InPort" name="In1" carrier="CO2_F" id="AirProductsCHP_BotA_CO2_F_Network_IP1" connectedTo="C36OP3"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="D76_CO2_F_IP1" id="AirProductsCHP_BotA_CO2_F_Network_OP1" name="Out1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.26051" lat="51.8793"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="UniperMPP3_MVB" id="UniperMPP3_MVB_area" buildingDensity="17.0">
        <asset xsi:type="esdl:Building" name="UniperMPP3_MVB" sector="Power_Plant_Coal" id="UniperMPP3_MVB_building">
          <asset xsi:type="esdl:PowerPlant" name="Unipermpp3_MVB_Powergen_baseload" power="2391000000.0" sector="Power_Plant_Coal" id="C3" efficiency="0.46" fullLoadHours="5404" assetType="Powergen_baseload">
            <port xsi:type="esdl:InPort" name="In1" carrier="C" id="C3IP1" connectedTo="C_OP1"/>
            <port xsi:type="esdl:OutPort" carrier="E" connectedTo="UniperMPP3_MVB_E_Network_IP1" id="C3OP1" name="Out1"/>
            <port xsi:type="esdl:OutPort" carrier="CO2_F" connectedTo="Uniper_MVB_CO2_F_Network_IP1" id="C3OP3" name="Out3"/>
            <behaviour xsi:type="esdl:InputOutputRelation" id="IOR_C3" name="InputOutputRelation for Unipermpp3_MVB_Powergen_baseload" mainPort="C3IP1">
              <mainPortRelation xsi:type="esdl:PortRelation" port="C3OP1" ratio="2.1739130434782608"/>
              <mainPortRelation xsi:type="esdl:PortRelation" port="C3OP3" ratio="2936.3401456424713"/>
            </behaviour>
          </asset>
          <geometry xsi:type="esdl:Point" lon="4.022134" lat="51.96247"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" name="Toolbox" id="Toolbox_area">
        <asset xsi:type="esdl:Building" name="Toolbox" id="Toolbox_building">
          <asset xsi:type="esdl:GasDemand" name="Naphta1" sector="Industry_Chemicals" id="N00_GM" power="1000000000.0" surfaceArea="3">
            <port xsi:type="esdl:InPort" carrier="GM" id="N00_GM_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b6a0500e-306c-48ea-af06-d707b0bf7ae7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Naphta1" id="N00_CO2" power="1000.0">
            <port xsi:type="esdl:InPort" carrier="CO2_P" id="N00_CO2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="7cd7168c-7784-4c62-b187-8256caccc3eb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Synfuel1" sector="Industry_Refineries" id="N01_E" power="988000000.0" surfaceArea="62">
            <port xsi:type="esdl:InPort" carrier="E" id="N01_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="988000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4d69d520-6ed0-45c0-915c-5556858d1521" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Synfuel2" sector="Industry_Refineries" id="N02_CO2" power="1000.0">
            <port xsi:type="esdl:InPort" carrier="CO2_P" id="N02_CO2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1ead24ca-4678-4413-bf49-f4158b72482b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Synfuel2" sector="Industry_Refineries" id="N02_E" power="905000000.0" surfaceArea="17">
            <port xsi:type="esdl:InPort" carrier="E" id="N02_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="905000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="141cca69-17f0-4c92-9b67-276e9bd8cc79" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Synfuel3" sector="Industry_Refineries" id="NO3_H2" power="700000000.0" surfaceArea="5">
            <port xsi:type="esdl:InPort" carrier="H2_new" id="NO3_H2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="700000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2d9ebe0d-06f8-471f-a9d5-2da5f5b8ec98" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="Synfuel3" sector="Industry_Refineries" id="NO3_CO2" power="1000.0">
            <port xsi:type="esdl:InPort" carrier="CO2_P" id="NO3_CO2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c9ae6cb0-1ee0-460f-878e-7dde14691090" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityProducer" name="Synfuel3" sector="Industry_Refineries" id="NO3_E" power="54000000.0">
            <port xsi:type="esdl:OutPort" carrier="E" id="NO3_E_OP1" name="Out">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="54000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d3434743-d210-4eb1-ad20-d40b4a78db0a" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="SynMeOHolefin1" sector="Industry_Refineries" id="N04_E" power="600000000.0" surfaceArea="41">
            <port xsi:type="esdl:InPort" carrier="E" id="N04_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="600000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="ac52c602-ac8d-47ac-8d50-11ec16b61a0f" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin1" sector="Industry_Refineries" id="N04_CH4" power="250000000.0">
            <port xsi:type="esdl:InPort" carrier="CH4" id="N04_CH4_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="250000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="52beaeca-7981-4d0d-9d50-53e7563e35d2" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="SynMeOHolefin2" sector="Industry_Refineries" id="N05_E" power="580000000.0" surfaceArea="10">
            <port xsi:type="esdl:InPort" carrier="E" id="N05_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="580000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="123a8d8b-7dd9-422c-86ef-5e6607bc8dba" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin2" sector="Industry_Refineries" id="N05_CH4" power="112000000.0">
            <port xsi:type="esdl:InPort" carrier="CH4" id="N05_CH4_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="112000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3d388d91-ce4c-46b9-9b88-bf601c0e0594" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin2" sector="Industry_Refineries" id="N05_CO2" power="1000.0">
            <port xsi:type="esdl:InPort" carrier="CO2_P" id="N05_CO2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b9e0af26-0e8e-4db7-840e-3eac24c735cb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="SynMeOHolefin3" sector="Industry_Refineries" id="N06_E" power="38000000.0" surfaceArea="3">
            <port xsi:type="esdl:InPort" carrier="E" id="N06_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="38000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4c456bea-a6a1-40ba-95e7-cd7fabb84c75" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin3" sector="Industry_Refineries" id="N06_CH4" power="112000000.0">
            <port xsi:type="esdl:InPort" carrier="CH4" id="N06_CH4_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="112000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b31186f9-de29-41bd-b300-329bbb4fbb4e" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin3" sector="Industry_Refineries" id="N06_CO2" power="1000.0">
            <port xsi:type="esdl:InPort" carrier="CO2_P" id="N06_CO2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d3237846-ad43-4179-bde1-ef73efc63add" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="SynMeOHolefin3" sector="Industry_Refineries" id="N06_H2" power="396000000.0">
            <port xsi:type="esdl:InPort" carrier="H2_new" id="N06_H2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="396000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c9925d5c-94a3-40a0-b29c-ae546ead0de4" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="BioGasolefin1" sector="Industry_Refineries" id="N07_E" power="75000000.0" surfaceArea="5">
            <port xsi:type="esdl:InPort" carrier="E" id="N07_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="75000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f4b7660d-8182-46d1-901b-cd24dc4826e7" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="PlasticOlefin1" sector="Industry_Refineries" id="N08_E" power="289000000.0" surfaceArea="7">
            <port xsi:type="esdl:InPort" carrier="E" id="N08_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="289000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="5535a7e2-c356-4d7e-a17a-ce69823d243b" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="PlasticOlefin2" sector="Industry_Refineries" id="N09_E" power="38000000.0" surfaceArea="4">
            <port xsi:type="esdl:InPort" carrier="E" id="N09_E_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="38000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3e1cb9b4-f75b-428e-a390-20ad1e309cda" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="PlasticOlefin2" sector="Industry_Refineries" id="N09_H2" power="184000000.0">
            <port xsi:type="esdl:InPort" carrier="H2_new" id="N09_H2_IP1" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralA_profile" id="GeneralA_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="184000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralA_profile" measurement="gridmaster_profiles">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="dfe3fb9d-37c1-4055-a106-bec5e2bd647e" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:Electrolyzer" name="Electrolyzer" controlStrategy="DbP_N10" power="1000000000.0" sector="Power_to_Gas" id="N10" efficiency="0.73" fullLoadHours="7008" assetType="Electrolyzer" surfaceArea="12">
            <port xsi:type="esdl:InPort" carrier="E" name="In1" id="N10IP1"/>
            <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="N10OP1"/>
          </asset>
          <geometry xsi:type="esdl:Point" lon="3.9983" lat="51.90082"/>
        </asset>
      </area>
      <asset xsi:type="esdl:GasDemand" name="PeakShaver_MV" sector="Other" id="D70_CH4" power="9000000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="CH4" id="D70_CH4_IP1" connectedTo="PeakShaver_MV_CH4_Network_OP1">
          <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="PeakShaver_MV_profile" id="PeakShaver_MV_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="9000000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="PeakShaver_MV_profile" measurement="gridmaster_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0334dca7-f001-406b-8937-c83f951166e1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="3.97868150399212" lat="51.9456663695804"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" name="DemandMarket_LTH" sector="Households" id="D72_LTH" power="224000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="LTH" id="D72_LTH_IP1" connectedTo="LTH_OP1">
          <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="GeneralB_profile" id="GeneralB_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="224000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="GeneralB_profile" measurement="gridmaster_profiles">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c60ecbc4-8759-4e3a-9308-921f9c0286b2" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.25344699259202" lat="51.9021294453583"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" name="MixStation_Per" sector="Other" id="D74_CH4" power="2700000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="CH4" id="D74_CH4_IP1" connectedTo="MixStation_Per_CH4_Network_OP1">
          <profile xsi:type="esdl:SingleValue" id="MixStation_Per_profile" value="2700000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="10aa2dbc-f43b-4f7e-8653-83fd930e6fac" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.38723557641473" lat="51.8920662790081"/>
      </asset>
      <asset xsi:type="esdl:Export" name="CarbonEmissions_Biomass" sector="Other" id="D76_CO2_B" power="100000000000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="CO2_B" id="D76_CO2_B_IP1" connectedTo="AirProductsCHP_BotA_CO2_B_Network_OP1"/>
        <costInformation xsi:type="esdl:CostInformation" id="5e3acfe6-795b-444d-8802-a051eeb240d4">
          <marginalCosts xsi:type="esdl:SingleValue" id="e7f23340-c0ad-461f-8b69-ac1e51003471" value="0.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="8e22238f-4b20-4631-9942-b523954c3b6a" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
          </marginalCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" lon="4.26750176931847" lat="51.9894253522199"/>
      </asset>
      <asset xsi:type="esdl:Export" name="CarbonEmissions_Fossil" sector="Other" id="D76_CO2_F" power="100000000000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="CO2_F" id="D76_CO2_F_IP1" connectedTo="Neste_MVB_CO2_F_Network_OP1 Bungeloders_MVB_CO2_F_Network_OP1 Lyondell_MVB_CO2_F_Network_OP1 BP_EurA_CO2_F_Network_OP1 Indorama_EurA_CO2_F_Network_OP1 ADM_EurA_CO2_F_Network_OP1 Gunvor_EurB_CO2_F_Network_OP1 AlcoEnergy_EurC_CO2_F_Network_OP1 Caldic_EurC_CO2_F_Network_OP1 Exxonmobil_EurC_CO2_F_Network_OP1 VPREnergy_EurC_CO2_F_Network_OP1 ShellRefinery_Per_CO2_F_Network_OP1 Ducor_BotA_CO2_F_Network_OP1 Invista_BotA_CO2_F_Network_OP1 Lucite_BotA_CO2_F_Network_OP1 Huntsman_BotA_CO2_F_Network_OP1 Almatis_BotA_CO2_F_Network_OP1 Climax_BotA_CO2_F_Network_OP1 Lyondell_BotA_CO2_F_Network_OP1 AirProducts_BotA_CO2_F_Network_OP1 Tronox_BotA_CO2_F_Network_OP1 Cabot_BotA_CO2_F_Network_OP1 EKC_BotA_CO2_F_Network_OP1 Nouryon_BotA_CO2_F_Network_OP1 Shinetsu_BotA_CO2_F_Network_OP1 Hexion_BotA_CO2_F_Network_OP1 AluchemieFormer_BotB_CO2_F_Network_OP1 Cerexagri_Per_CO2_F_Network_OP1 Arkema_Per_CO2_F_Network_OP1 Wilmar_Per_CO2_F_Network_OP1 Hexion_Per_CO2_F_Network_OP1 AVR_BotA_CO2_F_Network_OP1 AirLiquide_BotA_CO2_F_Network_OP1 Uniper_MVB_CO2_F_Network_OP1 MaasStroom_Per_CO2_F_Network_OP1 ProRail_Eur_CO2_F_Network_OP1 AirLiquidePergen_Per_CO2_F_Network_OP1 Exxon_BotB_CO2_F_Network_OP1 Enecogen_MVB_CO2_F_Network_OP1 Others_MV_CO2_F_Network_OP1 Others_Eur_CO2_F_Network_OP1 Others_Bot_CO2_F_Network_OP1 ShellChem_Per_CO2_F_Network_OP1 Rijnmond_Per_CO2_F_Network_OP1 Others_Per_CO2_F_Network_OP1 Free_MV_CO2_F_Network_OP1 ENCI_Eur_CO2_F_Network_OP1 VopakMoezelwegNeckarwegTerminals_Eur_CO2_F_Network_OP1 Verolme_Bot_CO2_F_Network_OP1 Cargill_Bot_CO2_F_Network_OP1 Rubis_Bot_CO2_F_Network_OP1 Koole_Bot_CO2_F_Network_OP1 LBC_Bot_CO2_F_Network_OP1 VopakTerminals_Bot_CO2_F_Network_OP1 AsfaltCentrale_Bot_CO2_F_Network_OP1 Hoyer_Bot_CO2_F_Network_OP1 PernisWestland_Per_CO2_F_Network_OP1 EuopoortWestland_Eur_CO2_F_Network_OP1 Maffina_Eur_CO2_F_Network_OP1 Greif_Bot_CO2_F_Network_OP1 WatcoService_Bot_CO2_F_Network_OP1 JBDEco_Bot_CO2_F_Network_OP1 EuromaxTerminal_MV_CO2_F_Network_OP1 AirProductsCHP_BotA_CO2_F_Network_OP1"/>
        <costInformation xsi:type="esdl:CostInformation" id="86fa5d58-2f0f-4962-92b9-425b7c739c26">
          <marginalCosts xsi:type="esdl:SingleValue" id="f8c04aa8-8d5f-4543-b074-d6681e8f5962" value="0.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0ac7776e-5d3c-41b3-87ac-552eb20490a0" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
          </marginalCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" lon="4.24733155752647" lat="51.9899539004044"/>
      </asset>
      <asset xsi:type="esdl:Export" name="CarbonCaptured_Pure" sector="Other" id="D76_CO2_P" power="100000000000000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="CO2_P" id="D76_CO2_P_IP1" connectedTo="AirProductsCHP_BotA_CO2_P_Network_OP1"/>
        <costInformation xsi:type="esdl:CostInformation" id="1bd494a9-d49f-4187-ae72-767ade185d9c">
          <marginalCosts xsi:type="esdl:SingleValue" id="07e54098-438e-4cde-beaa-4f710b54f2e5" value="0.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="800148b2-9f3a-4266-aa0f-6522585783ce" description="COST in EURO" unit="EURO" physicalQuantity="COST"/>
          </marginalCosts>
        </costInformation>
        <geometry xsi:type="esdl:Point" lon="4.27758687181558" lat="51.984932439858"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" name="BritNed_MV_Export" sector="Exchange_UK" id="S7_E_Export">
        <port xsi:type="esdl:InPort" name="In" carrier="E" id="S7_E_Export_IP1" connectedTo="BritNed_MV_E_Network_OP1">
          <profile xsi:type="esdl:SingleValue" id="BritNed_MV_Export_profile">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b7ddb772-ee41-4bca-831f-6a941a52ba06" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.02165049280678" lat="51.96"/>
      </asset>
      <asset xsi:type="esdl:ElectricityProducer" name="BritNed_MV_Import" sector="Exchange_UK" id="S7_E_Import">
        <port xsi:type="esdl:OutPort" carrier="E" connectedTo="BritNed_MV_E_Network_IP1" id="S7_E_Import_OP1" name="Out">
          <profile xsi:type="esdl:SingleValue" id="BritNed_MV_Import_profile">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="428b9e2f-c3a9-4eb2-a1d4-d2c679720abb" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.02165049280678" lat="51.956800207855"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" name="BuiltEnvironment" sector="Households" id="D60_CH4" power="422000000.0">
        <port xsi:type="esdl:InPort" carrier="CH4" id="D60_CH4_IP1" name="In">
          <profile xsi:type="esdl:SingleValue" id="BuiltEnvironment_profile" value="422000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b100472b-a6a5-4b1d-9671-ddf619a0bdfa" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.24261086547481" lat="51.9046448849292"/>
      </asset>
      <asset xsi:type="esdl:EConnection" name="BritNed_MV_E_Network" sector="Exchange_UK" id="BritNed_MV_E_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="E" id="BritNed_MV_E_Network_IP1" connectedTo="S7_E_Import_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="E" connectedTo="S7_E_Export_IP1" id="BritNed_MV_E_Network_OP1" name="Out1"/>
        <geometry xsi:type="esdl:Point" lon="4.02165049280678" lat="51.958"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="MixStation_Per_CH4_Network" sector="Other" id="MixStation_Per_CH4_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="MixStation_Per_CH4_Network_IP1" connectedTo="CH4_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="D74_CH4_IP1" id="MixStation_Per_CH4_Network_OP1" name="Out1"/>
        <geometry xsi:type="esdl:Point" lon="4.38723557641473" lat="51.8920662790081"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="PeakShaver_MV_CH4_Network" sector="Other" id="PeakShaver_MV_CH4_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="CH4" id="PeakShaver_MV_CH4_Network_IP1" connectedTo="CH4_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="CH4" connectedTo="D70_CH4_IP1" id="PeakShaver_MV_CH4_Network_OP1" name="Out1"/>
        <geometry xsi:type="esdl:Point" lon="3.97868150399212" lat="51.9456663695804"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="PeakShaver_MV_GM_Network" sector="Other" id="PeakShaver_MV_GM_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="PeakShaver_MV_GM_Network_IP1" connectedTo="GM_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="PeakShaver_MV_GM_Network_OP1"/>
        <geometry xsi:type="esdl:Point" lon="3.979" lat="51.9457"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="PeakShaver_MV_H2_new_Network" sector="Other" id="PeakShaver_MV_H2_new_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="PeakShaver_MV_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="PeakShaver_MV_H2_New_Network_OP1"/>
        <geometry xsi:type="esdl:Point" lon="3.98" lat="51.946"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="MixStation_Per_GM_Network" sector="Other" id="MixStation_Per_GM_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="GM" id="MixStation_Per_GM_Network_IP1" connectedTo="GM_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="GM" name="Out1" id="MixStation_Per_GM_Network_OP1"/>
        <geometry xsi:type="esdl:Point" lon="4.3873" lat="51.893"/>
      </asset>
      <asset xsi:type="esdl:GConnection" name="MixStation_Per_H2_new_Network" sector="Other" id="MixStation_Per_H2_new_Network">
        <port xsi:type="esdl:InPort" name="In1" carrier="H2_new" id="MixStation_Per_H2_new_Network_IP1" connectedTo="H2_new_OP1"/>
        <port xsi:type="esdl:OutPort" carrier="H2_new" name="Out1" id="MixStation_Per_H2_New_Network_OP1"/>
        <geometry xsi:type="esdl:Point" lon="4.3874" lat="51.894"/>
      </asset>
    </area>
    <date xsi:type="esdl:InstanceDate" date="2025-01-01T00:00:00.000000"/>
  </instance>
  <services xsi:type="esdl:Services" id="b0fb746c-9f74-4ccf-a7ab-b867dd41fd70">
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C14" outPort="C14OP1" energyAsset="C14"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C15" outPort="C15OP1" energyAsset="C15"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C23" outPort="C23OP1" energyAsset="C23"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C29" outPort="C29OP1" energyAsset="C29"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C30" outPort="C30OP1" energyAsset="C30"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C36" outPort="C36OP1" energyAsset="C36"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C37" outPort="C37OP1" energyAsset="C37"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C4" outPort="C4OP1" energyAsset="C4"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C44" outPort="C44OP1" energyAsset="C44"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C52" inPort="C52IP1" energyAsset="C52"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C63" inPort="C63IP1" energyAsset="C63"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C64" inPort="C64IP1" energyAsset="C64"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C31" outPort="C31OP1" energyAsset="C31"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C32" outPort="C32OP1" energyAsset="C32"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C46" outPort="C46OP1" energyAsset="C46"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C48" outPort="C48OP1" energyAsset="C48"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C49" inPort="C49IP1" energyAsset="C49"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C62" outPort="C62OP1" energyAsset="C62"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C94" outPort="C94OP1" energyAsset="C94"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C95" outPort="C95OP1" energyAsset="C95"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C96" outPort="C96OP1" energyAsset="C96"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C97" outPort="C97OP1" energyAsset="C97"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C98" outPort="C98OP1" energyAsset="C98"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C99" outPort="C99OP1" energyAsset="C99"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C1" outPort="C1OP1" energyAsset="C1"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C10" outPort="C10OP1" energyAsset="C10"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C11" inPort="C11IP1" energyAsset="C11"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C12" inPort="C12IP1" energyAsset="C12"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C16" outPort="C16OP1" energyAsset="C16"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C17" outPort="C17OP1" energyAsset="C17"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C18" inPort="C18IP1" energyAsset="C18"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C19" inPort="C19IP1" energyAsset="C19"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C2" outPort="C2OP1" energyAsset="C2"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C20" outPort="C20OP1" energyAsset="C20"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C21" inPort="C21IP1" energyAsset="C21"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C22" inPort="C22IP1" energyAsset="C22"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C24" outPort="C24OP1" energyAsset="C24"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C25" outPort="C25OP1" energyAsset="C25"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C26" outPort="" energyAsset=""/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C27" outPort="" energyAsset=""/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C28" outPort="C28OP1" energyAsset="C28"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C33" outPort="C33OP1" energyAsset="C33"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C34" outPort="C34OP1" energyAsset="C34"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C35" outPort="C35OP1" energyAsset="C35"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C39" outPort="C39OP1" energyAsset="C39"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C41" inPort="C41IP1" energyAsset="C41"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C42" outPort="C42OP1" energyAsset="C42"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C43" outPort="C43OP1" energyAsset="C43"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C45" outPort="C45OP1" energyAsset="C45"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C47" outPort="C47OP1" energyAsset="C47"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C5" outPort="C5OP1" energyAsset="C5"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C50" inPort="C50IP1" energyAsset="C50"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C51" inPort="C51IP1" energyAsset="C51"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C53" outPort="C53OP1" energyAsset="C53"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C56" outPort="C56OP1" energyAsset="C56"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C57" outPort="C57OP1" energyAsset="C57"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C58" outPort="C58OP1" energyAsset="C58"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C59" outPort="C59OP1" energyAsset="C59"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C69" outPort="C69OP1" energyAsset="C69"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C7" outPort="C7OP1" energyAsset="C7"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C70" inPort="C70IP1" energyAsset="C70"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C71" inPort="C71IP1" energyAsset="C71"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C72" outPort="C72OP1" energyAsset="C72"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C73" inPort="C73IP1" energyAsset="C73"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C74" inPort="C74IP1" energyAsset="C74"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C8" inPort="C8IP1" energyAsset="C8"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C9" inPort="C9IP1" energyAsset="C9"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C75" outPort="C75OP1" energyAsset="C75"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C76" outPort="C76OP1" energyAsset="C76"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C77" outPort="C77OP1" energyAsset="C77"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C78" outPort="C78OP1" energyAsset="C78"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C79" outPort="C79OP1" energyAsset="C79"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C80" outPort="C80OP1" energyAsset="C80"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C81" outPort="C81OP1" energyAsset="C81"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C82" outPort="C82OP1" energyAsset="C82"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C83" outPort="C83OP1" energyAsset="C83"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C84" outPort="C84OP1" energyAsset="C84"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C85" outPort="C85OP1" energyAsset="C85"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C86" outPort="C86OP1" energyAsset="C86"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C87" outPort="C87OP1" energyAsset="C87"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C88" outPort="C88OP1" energyAsset="C88"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C89" outPort="C89OP1" energyAsset="C89"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C90" outPort="C90OP1" energyAsset="C90"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C91" outPort="C91OP1" energyAsset="C91"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C92" outPort="C92OP1" energyAsset="C92"/>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C93" outPort="C93OP1" energyAsset="C93"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C65" inPort="C65IP1" energyAsset="C65"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C40" inPort="C40IP1" energyAsset="C40"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C67" inPort="C67IP1" energyAsset="C67"/>
    <service xsi:type="esdl:DrivenBySupply" id="DbS_C68" inPort="C68IP1" energyAsset="C68"/>
    <service xsi:type="esdl:DrivenByProfile" id="DbP_N10" port="N10OP1" energyAsset="N10">
      <profile xsi:type="esdl:InfluxDBProfile" host="http://influxdb" name="OffshoreWind_profile" id="OffshoreWind_profile" startDate="2018-12-31T23:00:00.000000" port="8086" multiplier="1000000000.0" endDate="2019-12-31T22:00:00.000000" database="energy_profiles" field="OffshoreWind_profile" measurement="gridmaster_profiles">
        <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d0fdc89e-2e90-4c7b-ac95-adca0eef25a1" description="POWER in W" unit="WATT" physicalQuantity="POWER"/>
      </profile>
    </service>
    <service xsi:type="esdl:DrivenByDemand" id="DbD_C100" outPort="C100OP1" energyAsset="C100"/>
  </services>
</esdl:EnergySystem>
