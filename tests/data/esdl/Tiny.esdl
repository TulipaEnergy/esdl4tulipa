<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="TinyTest" description="" id="51323171-8245-41e1-a0d0-3623fb34f3ce" esdlVersion="v2303" version="3">
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:CurtailmentStrategy" name="CurtailmentStrategy for WindTurbine_d4b9" energyAsset="d4b9814f-c2d5-4146-b36e-047fc494f9f3" id="3fc88737-c8e0-4b6d-ae5f-250d1a8cbbfd" maxPower="50000000.0"/>
    <service xsi:type="esdl:CurtailmentStrategy" name="CurtailmentStrategy for PVPanel_fb42" energyAsset="fb42f805-5700-4e61-888e-b4e454c4df7a" id="6efdb6a5-b984-485a-9afc-24d5a7beca83" maxPower="10000000.0"/>
  </services>
  <instance xsi:type="esdl:Instance" id="924dc50d-e5dd-4388-8ec2-390485518d6a" name="Untitled instance">
    <area xsi:type="esdl:Area" id="d89556f6-83e8-4493-81f6-9bd94ffd9646" name="Untitled area">
      <asset xsi:type="esdl:ElectricityDemand" name="ElectricityDemand_43ec" id="43ec5a61-2172-4e11-ac45-0238c83a3393">
        <geometry xsi:type="esdl:Point" lat="52.281601868071434" lon="4.883422851562501" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" connectedTo="4ec3a3c0-3ef5-4cf4-b515-a476c70410db 9a8a362c-4ef9-4819-8dfa-9284597349b2 825d197b-d69d-4753-aa52-fb5843c7c5ff 9268c316-ca2d-4772-9548-50cd0d19a1e9" name="In" id="158afc5c-e4f6-4bd4-8d9d-44b566b58158">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2023-10-03T23:00:00.000000+0000" measurement="tiny_test_profiles_csv" multiplier="0.0" startDate="2023-10-01T00:00:00.000000+0000" field="demand" filters="" port="8086" host="http://10.30.2.1" database="energy_profiles" id="6b62558c-65fd-4424-b8cb-f72b8f4864d7">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="" id="3b64ea2f-93c8-4082-ad80-abf712b1775b"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:WindTurbine" controlStrategy="3fc88737-c8e0-4b6d-ae5f-250d1a8cbbfd" name="WindTurbine_d4b9" id="d4b9814f-c2d5-4146-b36e-047fc494f9f3">
        <geometry xsi:type="esdl:Point" lat="52.243358395343456" lon="4.989166259765626" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" name="Out" id="9268c316-ca2d-4772-9548-50cd0d19a1e9">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2023-10-03T23:00:00.000000+0000" measurement="tiny_test_profiles_csv" multiplier="0.0" startDate="2023-10-01T00:00:00.000000+0000" field="wind" filters="" port="8086" host="http://10.30.2.1" database="energy_profiles" id="a931c8ad-9ce9-484b-b050-4abcd7118447">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="" id="36f71006-8039-40dc-b124-79468a1e52a2"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation" id="d5392626-1995-43a0-8279-e5c7c1ae64cd">
          <investmentCosts xsi:type="esdl:SingleValue" id="56f7761d-8447-46ff-a418-a583d16ab843" value="70.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perUnit="WATT" id="b6cc6461-b0cf-48be-80ca-f068c78ec9d7" unit="EURO" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PVPanel" controlStrategy="6efdb6a5-b984-485a-9afc-24d5a7beca83" name="PVPanel_fb42" id="fb42f805-5700-4e61-888e-b4e454c4df7a">
        <geometry xsi:type="esdl:Point" lat="52.21265572004473" lon="4.901275634765625" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" name="Out" id="825d197b-d69d-4753-aa52-fb5843c7c5ff">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2023-10-03T23:00:00.000000+0000" measurement="tiny_test_profiles_csv" multiplier="0.0" startDate="2023-10-01T00:00:00.000000+0000" field="solar" filters="" port="8086" host="http://10.30.2.1" database="energy_profiles" id="f0734904-762f-4078-bb7a-ce8eee289e2e">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="" id="39c304ed-c182-43cf-b31d-ff85ae33d6e2"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation" id="423634ca-decd-4103-9346-0ab0f8d3f258">
          <investmentCosts xsi:type="esdl:SingleValue" id="b645a957-5593-4c3a-a0bf-fff8001e9420" value="50.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perUnit="WATT" id="3cc76b5c-a29b-4de4-9823-fa9721810dc9" unit="EURO" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PowerPlant" maxLoad="100000000" name="PowerPlant_OCGT" id="13c73ee3-0162-4589-86b3-31e596c0f975">
        <geometry xsi:type="esdl:Point" lat="52.22864058406609" lon="4.781799316406251" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" name="In" id="488787f4-15d9-41bb-a5d2-92241f044a83"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" id="9a8a362c-4ef9-4819-8dfa-9284597349b2"/>
        <costInformation xsi:type="esdl:CostInformation" id="00f32eda-ec1f-4450-a1e7-a959a464665e">
          <investmentCosts xsi:type="esdl:SingleValue" id="708e5e31-987d-40bb-8217-6d0e02b69428" value="25.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perUnit="WATT" id="19e0f63b-42bd-4021-9aeb-7c95a588b743" unit="EURO" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PowerPlant" maxLoad="400000000" name="PowerPlant_CCGT" id="828396cc-d505-47a7-8416-11c9588ff32e">
        <geometry xsi:type="esdl:Point" lat="52.20844822057699" lon="4.801712036132813" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" name="In" id="e71ff9ca-5977-476f-83bc-a689003027c4"/>
        <port xsi:type="esdl:OutPort" name="Out" connectedTo="158afc5c-e4f6-4bd4-8d9d-44b566b58158" id="4ec3a3c0-3ef5-4cf4-b515-a476c70410db"/>
        <costInformation xsi:type="esdl:CostInformation" id="74485c89-476c-4388-a1da-808f5b404c4b">
          <investmentCosts xsi:type="esdl:SingleValue" id="28e4e077-0265-4097-b109-f6c08e0051c0" value="40.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MW" perUnit="WATT" id="a2851468-f913-4dba-8c1d-b391f7e331f5" unit="EURO" perMultiplier="MEGA" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
