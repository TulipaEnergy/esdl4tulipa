<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="18ad2dce-9d0b-4614-93ac-6f959a03c1b6" description="" esdlVersion="v2303" name="Untitled EnergySystem" version="16">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="224db916-1e4f-4b08-8d09-acb1f6e60afe">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="630ab370-880b-4461-b11f-62dd795564d8">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" description="Energy in GJ" physicalQuantity="ENERGY" multiplier="GIGA"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" id="12c481c0-f81e-49b6-9767-90457684d24a" description="Energy in kWh" physicalQuantity="ENERGY" multiplier="KILO"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" physicalQuantity="POWER" multiplier="MEGA"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" description="Power in kW" physicalQuantity="POWER" multiplier="KILO"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="699691f6-cc23-446d-bc3e-ae677768c0e5">
      <carrier xsi:type="esdl:ElectricityCommodity" name="E" id="c0d4f233-4552-4d35-a353-c4987b5fe9b5"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="54aa974a-5ceb-4fa9-b5d4-1321d3bf7ae3" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="e2e61938-640a-475c-91df-1bc9574628dc" name="Untitled Area">
      <asset xsi:type="esdl:Transformer" name="TRAFO1" voltageSecundary="400.0" voltagePrimary="10000.0" id="af954d00-4675-4b1b-a8ec-832181ec2155" capacity="2200000.0">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="PrimIn" connectedTo="8b32d5e8-de18-4a23-b352-c93ac3545ea7" id="5a552a67-10c3-4d79-b13f-0f7f43c38df3"/>
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="SecOut" connectedTo="80611f56-d901-478d-af82-7f11dab14cff b2546c24-3598-4267-8199-95d675b790bb 75bffa32-f8be-4552-9e80-447b9a442eba" id="a2e8ed4b-e5bd-49fc-a169-d16c55510b70"/>
        <geometry xsi:type="esdl:Point" lon="5.322591662406921" lat="51.868472482757866"/>
      </asset>
      <asset xsi:type="esdl:Transformer" name="TRAFO2" voltageSecundary="400.0" voltagePrimary="10000.0" id="448af1d3-c4bf-4229-bcae-d538115f95af" capacity="2200000.0">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="PrimIn" connectedTo="8b32d5e8-de18-4a23-b352-c93ac3545ea7" id="a11196dc-4c94-49b7-94a8-fd727726376b"/>
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="SecOut" connectedTo="519085a1-30d7-4754-bff4-1bdef2e18a7d 8d4be910-f154-4e4f-b7df-69ddd3a3133c 7b64523d-6dc4-44a7-8042-d761274f40fd" id="f8ddb205-9002-4e77-8cae-dd5d989ab1b4"/>
        <geometry xsi:type="esdl:Point" lon="5.322580933570863" lat="51.86796896752792"/>
      </asset>
      <asset xsi:type="esdl:Transformer" name="TRAFO3" voltageSecundary="400.0" voltagePrimary="10000.0" id="124f44b1-56c6-40fa-9b5c-c9f73be3561b" capacity="1000000.0">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="PrimIn" connectedTo="8b32d5e8-de18-4a23-b352-c93ac3545ea7" id="801ceeac-b7c9-4e96-9dd0-7b9fe57fd2bb"/>
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="SecOut" connectedTo="2627fa5f-0839-43e2-96a5-cf9a810ed7db" id="69cc08ae-1012-4a50-ba4b-9035c1f43469"/>
        <geometry xsi:type="esdl:Point" lon="5.322570204734802" lat="51.86753836465916"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_1-6" power="600000.0" id="bcd4dcb6-7b3b-43a6-94d4-f5af8cefa688">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="a2e8ed4b-e5bd-49fc-a169-d16c55510b70" id="80611f56-d901-478d-af82-7f11dab14cff">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E1A" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="4f2b795e-52a3-4a82-a5eb-864f32334657" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322843790054322" lat="51.868608285147154"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_7-12" power="600000.0" id="05ce6b38-b340-4c1a-bc88-a499955afd4f">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="a2e8ed4b-e5bd-49fc-a169-d16c55510b70" id="b2546c24-3598-4267-8199-95d675b790bb">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E1B" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="7e3d2598-bae5-450a-9cf4-1cb0a710b0a0" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322838425636292" lat="51.86847247100638"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_13-18" power="600000.0" id="16e28fdf-5150-4638-ad44-03271516483e">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="a2e8ed4b-e5bd-49fc-a169-d16c55510b70" id="75bffa32-f8be-4552-9e80-447b9a442eba">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E1C" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="1b91936f-c1e6-4e70-ace5-1a7d1481dcc5" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322838425636292" lat="51.86833665309794"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_19-24" power="600000.0" id="e61f7375-102f-4960-b0a8-caa1539b6c98">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="f8ddb205-9002-4e77-8cae-dd5d989ab1b4" id="519085a1-30d7-4754-bff4-1bdef2e18a7d">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E2A" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="d6e72298-38d0-47f7-b7d3-d72adc6169be" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322833061218262" lat="51.86811140796427"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_25-30" power="600000.0" id="f28dd83d-3389-420c-adb7-7d8c0182b9c5">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="f8ddb205-9002-4e77-8cae-dd5d989ab1b4" id="8d4be910-f154-4e4f-b7df-69ddd3a3133c">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E3A" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="057250bc-d48c-4cfa-bb81-344a850df690" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322827696800233" lat="51.867972279086246"/>
      </asset>
      <asset xsi:type="esdl:EVChargingStation" name="EVChargingStations_31-36" power="600000.0" id="0493a4b3-cc5b-453b-bdfd-3374db4837e6">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="f8ddb205-9002-4e77-8cae-dd5d989ab1b4" id="7b64523d-6dc4-44a7-8042-d761274f40fd">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="G1A" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="9431b392-94de-40f8-8e63-a6953b458642" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322822332382203" lat="51.86783314809903"/>
      </asset>
      <asset xsi:type="esdl:GenericConsumer" name="Power_Locks-6" power="750000.0" id="9629cdb5-1131-45b3-93dc-7951a0d06af5">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="69cc08ae-1012-4a50-ba4b-9035c1f43469" id="2627fa5f-0839-43e2-96a5-cf9a810ed7db">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="NEDU" field="E4A" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="97e9b479-3bb6-4806-aa33-4ceb04a61be0" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="12c481c0-f81e-49b6-9767-90457684d24a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="5.322822332382203" lat="51.86753505222947"/>
      </asset>
      <asset xsi:type="esdl:PVPark" name="SolarFarm" power="10000000.0" id="672f91b9-2ff5-4573-92b1-aabaee2ce5a7" surfaceArea="14449">
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="Out" id="b1207dd5-bf63-44a0-9dff-5715bf1b2d7f"/>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="5.323824048286708" lat="51.86877701783065"/>
            <point xsi:type="esdl:Point" lon="5.323807959222867" lat="51.867209939558"/>
            <point xsi:type="esdl:Point" lon="5.325148714543993" lat="51.86719006083598"/>
            <point xsi:type="esdl:Point" lon="5.324730398883802" lat="51.868955919700106"/>
          </exterior>
        </geometry>
      </asset>
      <asset xsi:type="esdl:WindPark" name="Betuwe_Wind_Park" power="10800000.0" id="2290450a-653a-4eaf-b1b9-62e15066f006" numberOfTurbines="3" surfaceArea="925" type="WIND_ON_LAND">
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="Out" connectedTo="402befc5-60c6-43bf-8bcb-f01b228ed8c9 1d036d92-069d-4ed4-83bd-a00348ba6119" id="dc28295a-3ce9-4895-bf77-79d75d115024">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2015-01-01T00:00:00.000000+0000" measurement="profile_kW_2015_Hub_east_160m" field="power_kW" database="edr-profiles" endDate="2015-12-31T23:00:00.000000+0000" id="b4f4b6ca-cf9a-49c6-8dea-7c60186b09d4" multiplier="0.8" port="443" host="edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="5.3223553228247775" lat="51.867259891337376"/>
            <point xsi:type="esdl:Point" lon="5.322923803080966" lat="51.867249951988505"/>
            <point xsi:type="esdl:Point" lon="5.32292648459158" lat="51.86704122515486"/>
            <point xsi:type="esdl:Point" lon="5.322336552250284" lat="51.867051164549885"/>
          </exterior>
        </geometry>
        <costInformation xsi:type="esdl:CostInformation"/>
      </asset>
      <asset xsi:type="esdl:Import" name="Import_from_Grid" power="100000000.0" id="97a3a2c2-c238-4e3f-9b21-83359add5ec2">
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="Out" connectedTo="1d036d92-069d-4ed4-83bd-a00348ba6119" id="29e68a49-3936-4612-8f6a-626863bf8b8a"/>
        <geometry xsi:type="esdl:Point" lon="5.321534872055055" lat="51.86759798835163"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="d6632166-bb09-473c-a1cb-9f58f064bfe5" value="0.9" name="Import_97a3-MarginalCosts"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Export" name="Export_to_Grid" power="100000000.0" id="10e0231d-46dd-4ee7-82db-58cc3e7601cf">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="fbfb30f0-af34-41d9-83f2-a727f4971b6f" id="bced7fee-f8df-4143-bd78-520e6d900c87"/>
        <geometry xsi:type="esdl:Point" lon="5.321529507637024" lat="51.867833169923514"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="fdc1be99-3146-4a44-9d9c-d7a0d74d207b" value="0.1" name="Export_10e0-MarginalCosts"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="Secundair (SAP)" id="cbb7e03a-9014-4687-859a-0a82ba4cff6a" capacity="5000000.0">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="dc28295a-3ce9-4895-bf77-79d75d115024 fbfb30f0-af34-41d9-83f2-a727f4971b6f" id="402befc5-60c6-43bf-8bcb-f01b228ed8c9"/>
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="Out" connectedTo="5a552a67-10c3-4d79-b13f-0f7f43c38df3 a11196dc-4c94-49b7-94a8-fd727726376b 801ceeac-b7c9-4e96-9dd0-7b9fe57fd2bb 1d036d92-069d-4ed4-83bd-a00348ba6119" id="8b32d5e8-de18-4a23-b352-c93ac3545ea7"/>
        <geometry xsi:type="esdl:Point" lon="5.322183966636658" lat="51.867730485163094"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="Primair (PAP)" id="28aa992e-39bb-41be-877f-64df096389d9" capacity="10000000.0">
        <port xsi:type="esdl:InPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="In" connectedTo="dc28295a-3ce9-4895-bf77-79d75d115024 29e68a49-3936-4612-8f6a-626863bf8b8a 8b32d5e8-de18-4a23-b352-c93ac3545ea7" id="1d036d92-069d-4ed4-83bd-a00348ba6119"/>
        <port xsi:type="esdl:OutPort" carrier="c0d4f233-4552-4d35-a353-c4987b5fe9b5" name="Out" connectedTo="bced7fee-f8df-4143-bd78-520e6d900c87 402befc5-60c6-43bf-8bcb-f01b228ed8c9" id="fbfb30f0-af34-41d9-83f2-a727f4971b6f"/>
        <geometry xsi:type="esdl:Point" lon="5.32187283039093" lat="51.86773379757838"/>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
