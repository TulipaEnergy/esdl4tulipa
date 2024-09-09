<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="51323171-8245-41e1-a0d0-3623fb34f3ce" description="" esdlVersion="v2303" name="TinyTest" version="4">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="97799044-b7b7-4256-8997-1a3287231c69">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="97fef304-ba54-4e6b-b90d-7dcd805e5b81">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATTHOUR" id="12c481c0-f81e-49b6-9767-90457684d24a" description="Energy in kWh" physicalQuantity="ENERGY" multiplier="KILO"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="WATT" id="e9405fc8-5e57-4df5-8584-4babee7cdf1a" description="Power in kW" physicalQuantity="POWER" multiplier="KILO"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="924dc50d-e5dd-4388-8ec2-390485518d6a" name="Untitled instance">
    <area xsi:type="esdl:Area" id="d89556f6-83e8-4493-81f6-9bd94ffd9646" name="Untitled area">
      <asset xsi:type="esdl:ElectricityDemand" name="ElectricityDemand_43ec" id="43ec5a61-2172-4e11-ac45-0238c83a3393">
        <port xsi:type="esdl:InPort" name="In" connectedTo="4ec3a3c0-3ef5-4cf4-b515-a476c70410db 9a8a362c-4ef9-4819-8dfa-9284597349b2 825d197b-d69d-4753-aa52-fb5843c7c5ff 9268c316-ca2d-4772-9548-50cd0d19a1e9" id="158afc5c-e4f6-4bd4-8d9d-44b566b58158">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" measurement="RvE_profiles_test" field="Utiliteiten" database="edr-profiles" endDate="2019-12-31T22:00:00.000000+0000" id="89ef7ea2-79db-4d2e-9c9a-34b46a7c392f" multiplier="100.0" port="443" host="https://edr-profiles.hesi.energy" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1a"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.883422851562501" lat="52.281601868071434"/>
      </asset>
      <asset xsi:type="esdl:WindTurbine" name="WindTurbine_d4b9" power="5000.0" controlStrategy="3fc88737-c8e0-4b6d-ae5f-250d1a8cbbfd" id="d4b9814f-c2d5-4146-b36e-047fc494f9f3">
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" id="9268c316-ca2d-4772-9548-50cd0d19a1e9">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2023-10-01T00:00:00.000000+0000" measurement="tiny_test_profiles_csv" field="wind" database="energy_profiles" endDate="2023-10-03T23:00:00.000000+0000" id="a931c8ad-9ce9-484b-b050-4abcd7118447" multiplier="0.0" port="8086" host="http://10.30.2.1" filters="">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="" id="36f71006-8039-40dc-b124-79468a1e52a2"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.989166259765626" lat="52.243358395343456"/>
        <costInformation xsi:type="esdl:CostInformation" id="d5392626-1995-43a0-8279-e5c7c1ae64cd">
          <investmentCosts xsi:type="esdl:SingleValue" id="56f7761d-8447-46ff-a418-a583d16ab843" value="70.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" id="b6cc6461-b0cf-48be-80ca-f068c78ec9d7" description="Cost in EUR/MW" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PVPanel" name="PVPanel_fb42" power="5000.0" controlStrategy="6efdb6a5-b984-485a-9afc-24d5a7beca83" id="fb42f805-5700-4e61-888e-b4e454c4df7a">
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" id="825d197b-d69d-4753-aa52-fb5843c7c5ff"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.901275634765625" lat="52.21265572004473"/>
        <costInformation xsi:type="esdl:CostInformation" id="423634ca-decd-4103-9346-0ab0f8d3f258">
          <investmentCosts xsi:type="esdl:SingleValue" id="b645a957-5593-4c3a-a0bf-fff8001e9420" value="50.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" id="3cc76b5c-a29b-4de4-9823-fa9721810dc9" description="Cost in EUR/MW" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PowerPlant" name="PowerPlant_OCGT" maxLoad="100000000" id="13c73ee3-0162-4589-86b3-31e596c0f975" power="10000.0">
        <port xsi:type="esdl:InPort" name="In" id="488787f4-15d9-41bb-a5d2-92241f044a83"/>
        <port xsi:type="esdl:OutPort" name="Out" id="9a8a362c-4ef9-4819-8dfa-9284597349b2" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.781799316406251" lat="52.22864058406609"/>
        <costInformation xsi:type="esdl:CostInformation" id="00f32eda-ec1f-4450-a1e7-a959a464665e">
          <investmentCosts xsi:type="esdl:SingleValue" id="708e5e31-987d-40bb-8217-6d0e02b69428" value="25.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" id="19e0f63b-42bd-4021-9aeb-7c95a588b743" description="Cost in EUR/MW" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PowerPlant" name="PowerPlant_CCGT" maxLoad="400000000" id="828396cc-d505-47a7-8416-11c9588ff32e" power="5000.0">
        <port xsi:type="esdl:InPort" name="In" id="e71ff9ca-5977-476f-83bc-a689003027c4"/>
        <port xsi:type="esdl:OutPort" name="Out" id="4ec3a3c0-3ef5-4cf4-b515-a476c70410db" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.801712036132813" lat="52.20844822057699"/>
        <costInformation xsi:type="esdl:CostInformation" id="74485c89-476c-4388-a1da-808f5b404c4b">
          <investmentCosts xsi:type="esdl:SingleValue" id="28e4e077-0265-4097-b109-f6c08e0051c0" value="40.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" unit="EURO" id="a2851468-f913-4dba-8c1d-b391f7e331f5" description="Cost in EUR/MW" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:CurtailmentStrategy" id="3fc88737-c8e0-4b6d-ae5f-250d1a8cbbfd" energyAsset="d4b9814f-c2d5-4146-b36e-047fc494f9f3" name="CurtailmentStrategy for WindTurbine_d4b9" maxPower="50000000.0"/>
    <service xsi:type="esdl:CurtailmentStrategy" id="6efdb6a5-b984-485a-9afc-24d5a7beca83" energyAsset="fb42f805-5700-4e61-888e-b4e454c4df7a" name="CurtailmentStrategy for PVPanel_fb42" maxPower="10000000.0"/>
  </services>
</esdl:EnergySystem>
