<?xml version="1.0" encoding="UTF-8"?>
<esdl:EnergySystem
    xmi:version="2.0"
    xmlns:xmi="http://www.omg.org/XMI"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:esdl="http://www.tno.nl/esdl">
  <instance
      id="instance1">
    <area id="area1"
        name="NL">
      <asset xsi:type="esdl:Import" id="otc_import_electricity_market" name="import_otc_contracts" description='Portfolio of all OTC contracts' commissioningDate="2020-01-01T00:00:00.000+0100" decommissioningDate="2050-01-01T00:00:00.000+0100" >
        <port xsi:type="esdl:OutPort" id="engieBelgium1_import" carrier="electricity" maxPower="100e6">
          <profile xsi:type="esdl:SingleValue" name="EngieBelgiumAddOnPrice" id="EngieBelgiumAddOnPrice1" value="50">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="uniperBelgium1_import" carrier="electricity" maxPower="20e6">
          <profile xsi:type="esdl:SingleValue" name="UniperBelgiumAddOnPrice" id="UniperBelgiumAddOnPrice1" value="80" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="rweGermany1_import" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="rweGermanyAddOnPrice" id="rweGermanyAddOnPrice1" value="30" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="rweGermany2_import" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="rweGermanyAddOnPrice" id="rweGermanyAddOnPrice2" value="50" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="uniperGermany1_import" carrier="electricity" maxPower="100e6">
          <profile xsi:type="esdl:SingleValue" name="UniperGermanyAddOnPrice1" id="UniperGermanyAddOnPrice1" value="30" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="uniperGermany2_import" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="UniperGermanyAddOnPrice2" id="UniperGermanyAddOnPrice2" value="60" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="ENWB_import" carrier="electricity" maxPower="150e6">
          <profile xsi:type="esdl:SingleValue" name="ENWBAddOnPrice1" id="ENWBAddOnPrice1" value="40" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="COBRA_import" carrier="electricity" maxPower="679e6">
          <profile xsi:type="esdl:SingleValue" name="COBRAAddOnPrice1" id="COBRAAddOnPrice1" value="0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="BritNed_import" carrier="electricity" maxPower="970e6">
          <profile xsi:type="esdl:SingleValue" name="BritNedAddOnPrice1" id="BritNedAddOnPrice1" value="0" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="NorNed_import" carrier="electricity" maxPower="679e6">
          <profile xsi:type="esdl:SingleValue" name="NorNedAddOnPrice1" id="NorNedAddOnPrice1" value="-60" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="frequencyControlCapacityGermany_import" carrier="electricity" maxPower="4000e6">
          <profile xsi:type="esdl:SingleValue" name="frequencyControlCapacityGermanyAddOnPrice1" id="frequencyControlCapacityGermanyAddOnPrice1" value="100">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:OutPort" id="frequencyControlCapacityBelgium_import" carrier="electricity" maxPower="1100e6">
          <profile xsi:type="esdl:SingleValue" name="frequencyControlCapacityBelgiumAddOnPrice1" id="frequencyControlCapacityBelgiumAddOnPrice1" value="110" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
         </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Export" id="otc_export_electricity_market" name="export_otc_contracts" description='Portfolio of all OTC contracts' commissioningDate="2020-01-01T00:00:00.000+0100" decommissioningDate="2050-01-01T00:00:00.000+0100" >
        <port xsi:type="esdl:InPort" id="engieBelgium1_export" carrier="electricity" maxPower="100e6">
          <profile xsi:type="esdl:SingleValue" name="EngieBelgiumAddOnPrice" id="EngieBelgiumAddOnPrice1" value="50">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="uniperBelgium1_export" carrier="electricity" maxPower="20e6">
          <profile xsi:type="esdl:SingleValue" name="UniperBelgiumAddOnPrice" id="UniperBelgiumAddOnPrice1" value="80" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:InPort" id="rweGermany1_export" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="rweGermanyAddOnPrice" id="rweGermanyAddOnPrice1" value="30" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="rweGermany2_export" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="rweGermanyAddOnPrice" id="rweGermanyAddOnPrice2" value="50" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="uniperGermany1_export" carrier="electricity" maxPower="100e6">
          <profile xsi:type="esdl:SingleValue" name="UniperGermanyAddOnPrice1" id="UniperGermanyAddOnPrice1" value="30" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="uniperGermany2_export" carrier="electricity" maxPower="200e6">
          <profile xsi:type="esdl:SingleValue" name="UniperGermanyAddOnPrice2" id="UniperGermanyAddOnPrice2" value="60" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="ENWB_export" carrier="electricity" maxPower="150e6">
          <profile xsi:type="esdl:SingleValue" name="ENWBAddOnPrice1" id="ENWBAddOnPrice1" value="40" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:InPort" id="COBRA_export" carrier="electricity" maxPower="679e6">
          <profile xsi:type="esdl:SingleValue" name="COBRAAddOnPrice1" id="COBRAAddOnPrice1" value="0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:InPort" id="BritNed_export" carrier="electricity" maxPower="970e6">
          <profile xsi:type="esdl:SingleValue" name="BritNedAddOnPrice1" id="BritNedAddOnPrice1" value="0" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:InPort" id="NorNed_export" carrier="electricity" maxPower="679e6">
          <profile xsi:type="esdl:SingleValue" name="NorNedAddOnPrice1" id="NorNedAddOnPrice1" value="-60" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </profile>
        </port>
        <port xsi:type="esdl:InPort" id="frequencyControlCapacityGermany_export" carrier="electricity" maxPower="4000e6">
          <profile xsi:type="esdl:SingleValue" name="frequencyControlCapacityGermanyAddOnPrice1" id="frequencyControlCapacityGermanyAddOnPrice1" value="100">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" id="frequencyControlCapacityBelgium_export" carrier="electricity" maxPower="1100e6">
          <profile xsi:type="esdl:SingleValue" name="frequencyControlCapacityBelgiumAddOnPrice1" id="frequencyControlCapacityBelgiumAddOnPrice1" value="110" >
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
         </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries20"
          name="batteries"
          description="battery20"
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          capacity="1210.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="14.0e6"
          maxDischargeRate="14.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries21"
          name="Batteries"
          description="battery21"
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2022-01-01T00:00:00.000+0100"
          capacity="1728.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="20.0e6"
          maxDischargeRate="20.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries22"
          name="Batteries"
          description="battery22"
          commissioningDate="2022-01-01T00:00:00.000+0100"
          decommissioningDate="2023-01-01T00:00:00.000+0100"
          capacity="3456.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="40.0e6"
          maxDischargeRate="40.0e6"
          fillLevel="40">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries23"
          name="Batteries"
          description="battery23"
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          capacity="5184.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="60.0e6"
          maxDischargeRate="60.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries24"
          name="Batteries"
          description="battery24"
          commissioningDate="2024-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          capacity="6912.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="80.0e6"
          maxDischargeRate="80.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries25"
          name="Batteries"
          description="battery25"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2026-01-01T00:00:00.000+0100"
          capacity="8640.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="100.0e6"
          maxDischargeRate="100.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries26"
          name="Batteries"
          description="battery26"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2027-01-01T00:00:00.000+0100"
          capacity="12960.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="150.0e6"
          maxDischargeRate="150.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries27"
          name="Batteries"
          description="battery27"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2028-01-01T00:00:00.000+0100"
          capacity="17280.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="200.0e6"
          maxDischargeRate="200.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries28"
          name="Batteries"
          description="battery28"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2029-01-01T00:00:00.000+0100"
          capacity="21600.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="250.0e6"
          maxDischargeRate="250.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries29"
          name="Batteries"
          description="battery29"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          capacity="25920.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="300.0e6"
          maxDischargeRate="300.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries30"
          name="Batteries"
          description="battery30"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2031-01-01T00:00:00.000+0100"
          capacity="34560.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="400.0e6"
          maxDischargeRate="400.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries31"
          name="Batteries"
          description="battery31"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          capacity="43200.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="500.0e6"
          maxDischargeRate="500.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries32"
          name="Batteries"
          description="battery32"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2033-01-01T00:00:00.000+0100"
          capacity="51840.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="600.0e6"
          maxDischargeRate="600.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries33"
          name="Batteries"
          description="battery33"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2034-01-01T00:00:00.000+0100"
          capacity="60480.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="700.0e6"
          maxDischargeRate="700.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries34"
          name="Batteries"
          description="battery34"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          capacity="69120.0e9"
          selfDischargeRate="0.001"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="800.0e6"
          maxDischargeRate="800.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries35"
          name="Batteries"
          description="battery35"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2036-01-01T00:00:00.000+0100"
          capacity="86400.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="1000.0e6"
          maxDischargeRate="1000.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries36"
          name="Batteries"
          description="battery36"
          commissioningDate="2036-01-01T00:00:00.000+0100"
          decommissioningDate="2037-01-01T00:00:00.000+0100"
          capacity="103680.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="1200.0e6"
          maxDischargeRate="1200.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries37"
          name="Batteries"
          description="battery37"
          commissioningDate="2037-01-01T00:00:00.000+0100"
          decommissioningDate="2038-01-01T00:00:00.000+0100"
          capacity="120960.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="1400.0e6"
          maxDischargeRate="1400.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries38"
          name="Batteries"
          description="battery38"
          commissioningDate="2038-01-01T00:00:00.000+0100"
          decommissioningDate="2039-01-01T00:00:00.000+0100"
          capacity="138240.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="1600.0e6"
          maxDischargeRate="1600.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries39"
          name="Batteries"
          description="battery39"
          commissioningDate="2039-01-01T00:00:00.000+0100"
          decommissioningDate="2040-01-01T00:00:00.000+0100"
          capacity="155520.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="1800.0e6"
          maxDischargeRate="1800.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Battery"
          id="batteries40"
          name="Batteries"
          description="battery40"
          commissioningDate="2040-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          capacity="172800.0e9"
          selfDischargeRate="0.000"
          chargeEfficiency="0.89"
          dischargeEfficiency="0.89"
          maxChargeRate="2000.0e6"
          maxDischargeRate="2000.0e6"
          fillLevel="50">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer25"
          name="Electrolyzers-25"
          description="electrolyzers"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="250.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer26"
          name="Electrolyzers-26"
          description="electrolyzers"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="350.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer27"
          name="Electrolyzers-27"
          description="electrolyzers"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="350.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer28"
          name="Electrolyzers-28"
          description="electrolyzers"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer29"
          name="Electrolyzers-29"
          description="electrolyzers-29"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer30"
          name="Electrolyzers-30"
          description="electrolyzers"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1350.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer31"
          name="Electrolyzers-31"
          description="electrolyzers"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer32"
          name="Electrolyzers-32"
          description="electrolyzers"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer33"
          name="Electrolyzers-33"
          description="electrolyzers"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer34"
          name="Electrolyzers-34"
          description="electrolyzers"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer35"
          name="Electrolyzers-35"
          description="electrolyzers"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer36"
          name="Electrolyzers-36"
          description="electrolyzers"
          commissioningDate="2036-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer37"
          name="Electrolyzers-37"
          description="electrolyzers"
          commissioningDate="2037-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer38"
          name="Electrolyzers-38"
          description="electrolyzers"
          commissioningDate="2038-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer39"
          name="Electrolyzers-39"
          description="electrolyzers"
          commissioningDate="2039-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="1000.0e6">
      </asset>
      <asset
          xsi:type="esdl:Electrolyzer"
          id="electrolyzer40"
          name="Electrolyzers-40"
          description="electrolyzers"
          commissioningDate="2040-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="0.67"
          minLoad="0"
          power="5000.0e6">
      </asset>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler20"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="33.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler21"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2022-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="67.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler22"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2022-01-01T00:00:00.000+0100"
          decommissioningDate="2023-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="100.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler23"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="133.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler24"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2024-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="167.0e6"/>
      <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler25"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2026-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="200.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler26"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2027-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="360.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler27"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2028-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="520.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler28"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2029-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="680.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler29"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="840.0e6"/>
      <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler30"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2031-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1000.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler31"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1040.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler32"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2033-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1080.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler33"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2034-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1120.0e6"/>
	  <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler34"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1160.0e6"/>
      <asset
          xsi:type="esdl:PowerToX"
          id="hybridBoiler35_40"
          name="Hybrid Boilers"
          description='electric boiler'
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="1200.0e6"/>
      <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps19"
          name="Industrial Heat Pumps"
          commissioningDate="2019-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="20.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps20"
          name="Industrial Heat Pumps"
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="20.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps21"
          name="Industrial Heat Pumps"
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2022-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="87.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps22"
          name="Industrial Heat Pumps"
          commissioningDate="2022-01-01T00:00:00.000+0100"
          decommissioningDate="2023-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="153.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps23"
          name="Industrial Heat Pumps"
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="220.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps24"
          name="Industrial Heat Pumps"
          commissioningDate="2024-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="287.0e6"
          COP="3"/>
      <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps25"
          name="Industrial Heat Pumps"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2026-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="420.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps26"
          name="Industrial Heat Pumps"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2027-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="476.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps27"
          name="Industrial Heat Pumps"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2028-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="532.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps28"
          name="Industrial Heat Pumps"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2029-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="588.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps29"
          name="Industrial Heat Pumps"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="644.0e6"
          COP="3"/>
      <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps30"
          name="Industrial Heat Pumps"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2031-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="700.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps31"
          name="Industrial Heat Pumps"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="730.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps32"
          name="Industrial Heat Pumps"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2033-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="760.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps33"
          name="Industrial Heat Pumps"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2034-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="790.0e6"
          COP="3"/>
	  <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps34"
          name="Industrial Heat Pumps"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="820.0e6"
          COP="3"/>
      <asset
          xsi:type="esdl:HeatPump"
          id="industrialHeatPumps35_40"
          name="Industrial Heat Pumps"
          description='industrial heat pump'
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          efficiency="1.0"
          power="850.0e6"
          COP="3"/>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel19"
          name="PV Panel 19"
          commissioningDate="2019-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          power="5336.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts
            xsi:type="esdl:DateTimeProfile"
            name="Marginal Cost PV panel 1"
            interpolationMethod="PREVIOUS"
            id="zeroPriceProfile">
            <element
                from="2015-01-01T00:00:00.000+0100"
                to="2051-01-01T00:00:00.000+0100"
                value="0.0"/>
            <profileQuantityAndUnit
                xsi:type="esdl:QuantityAndUnitReference"
                reference="eur_per_MWh"/>
          </marginalCosts>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="PV Production Profile"
              id="pvProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="solar_2016"
              multiplier="5336.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel20"
          name="PV Panel 20"
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          power="8005.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2020"
              id="pvProfile2020"
              reference="pvProfile"
              multiplier="8005.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel21"
          name="PV Panel 21"
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2022-01-01T00:00:00.000+0100"
          power="10228.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2021"
              id="pvProfile2021"
              reference="pvProfile"
              multiplier="10228.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel22"
          name="PV Panel 22"
          commissioningDate="2022-01-01T00:00:00.000+0100"
          decommissioningDate="2023-01-01T00:00:00.000+0100"
          power="12674.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2022"
              id="pvProfile2022"
              reference="pvProfile"
              multiplier="12674.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel23"
          name="PV Panel 23"
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          power="14119.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2023"
              id="pvProfile2023"
              reference="pvProfile"
              multiplier="14119.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel24"
          name="PV Panel 24"
          commissioningDate="2024-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          power="15872.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2024"
              id="pvProfile2024"
              reference="pvProfile"
              multiplier="15872.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel25"
          name="PV Panel 25"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2026-01-01T00:00:00.000+0100"
          power="17514.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2025"
              id="pvProfile2025"
              reference="pvProfile"
              multiplier="17514.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel26"
          name="PV Panel 26"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2027-01-01T00:00:00.000+0100"
          power="19267.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2026"
              id="pvProfile2026"
              reference="pvProfile"
              multiplier="19267.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel27"
          name="PV Panel 27"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2028-01-01T00:00:00.000+0100"
          power="21020.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2027"
              id="pvProfile2027"
              reference="pvProfile"
              multiplier="21020.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel28"
          name="PV Panel 28"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2029-01-01T00:00:00.000+0100"
          power="22773.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2028"
              id="pvProfile2028"
              reference="pvProfile"
              multiplier="22773.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel29"
          name="PV Panel 29"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          power="24414.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:ProfileReference"
              name="PV Production Profile 2029"
              id="pvProfile2029"
              reference="pvProfile"
              multiplier="24414.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel30"
          name="PV Panel 30"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2031-01-01T00:00:00.000+0100"
          power="26166.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2030"
                id="pvProfile2030"
                reference="pvProfile"
                multiplier="26166.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel31"
          name="PV Panel 31"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          power="26558.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2031"
                id="pvProfile2031"
                reference="pvProfile"
                multiplier="26558.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel32"
          name="PV Panel 32"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2033-01-01T00:00:00.000+0100"
          power="26950.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2032"
                id="pvProfile2032"
                reference="pvProfile"
                multiplier="26950.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel33"
          name="PV Panel 33"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2034-01-01T00:00:00.000+0100"
          power="27342.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2033"
                id="pvProfile2033"
                reference="pvProfile"
                multiplier="27342.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel34"
          name="PV Panel 34"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          power="27734.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2034"
                id="pvProfile2034"
                reference="pvProfile"
                multiplier="27734.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel35"
          name="PV Panel 35"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2036-01-01T00:00:00.000+0100"
          power="28126.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2035"
                id="pvProfile2035"
                reference="pvProfile"
                multiplier="28126.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel36"
          name="PV Panel 36"
          commissioningDate="2036-01-01T00:00:00.000+0100"
          decommissioningDate="2037-01-01T00:00:00.000+0100"
          power="28518.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2036"
                id="pvProfile2036"
                reference="pvProfile"
                multiplier="28518.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel37"
          name="PV Panel 37"
          commissioningDate="2037-01-01T00:00:00.000+0100"
          decommissioningDate="2038-01-01T00:00:00.000+0100"
          power="28910.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2037"
                id="pvProfile2037"
                reference="pvProfile"
                multiplier="28910.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel38"
          name="PV Panel 38"
          commissioningDate="2038-01-01T00:00:00.000+0100"
          decommissioningDate="2039-01-01T00:00:00.000+0100"
          power="29302.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2038"
                id="pvProfile2038"
                reference="pvProfile"
                multiplier="29302.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel39"
          name="PV Panel 39"
          commissioningDate="2039-01-01T00:00:00.000+0100"
          decommissioningDate="2040-01-01T00:00:00.000+0100"
          power="29694.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2039"
                id="pvProfile2039"
                reference="pvProfile"
                multiplier="29694.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PVPanel"
          id="pvpanel40"
          name="PV Panel 40"
          commissioningDate="2040-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="30086.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
            <profile
                xsi:type="esdl:ProfileReference"
                name="PV Production Profile 2040"
                id="pvProfile2040"
                reference="pvProfile"
                multiplier="30086.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind19"
          name="Onshore Wind 19"
          description="Onshore Wind 19"
          commissioningDate="2019-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          power="3401.0e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="On Shore Wind Production Profile 19"
              id="onShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="onshore_wind_2016"
              multiplier="3401">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind20"
          name="Onshore Wind 20"
          description="Onshore Wind 20"
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          power="4192e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 20"
                id="onShoreWindProfile2020"
                reference="onShoreWindProfile"
                multiplier="4192">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind21"
          name="Onshore Wind 21"
          description="Onshore Wind 21"
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2022-01-01T00:00:00.000+0100"
          power="4944e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 21"
                id="onShoreWindProfile2021"
                reference="onShoreWindProfile"
                multiplier="4944">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind22"
          name="Onshore Wind 22"
          description="Onshore Wind 2022"
          commissioningDate="2022-01-01T00:00:00.000+0100"
          decommissioningDate="2023-01-01T00:00:00.000+0100"
          power="5655e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 22"
                id="onShoreWindProfile2022"
                reference="onShoreWindProfile"
                multiplier="5655">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind23"
          name="Onshore Wind 23"
          description="Onshore Wind 2023"
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          power="6407e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 23"
                id="onShoreWindProfile2023"
                reference="onShoreWindProfile"
                multiplier="6407">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind24"
          name="Onshore Wind 24"
          description="Onshore Wind 2024"
          commissioningDate="2024-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          power="6563e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 24"
                id="onShoreWindProfile2024"
                reference="onShoreWindProfile"
                multiplier="6563">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind25"
          name="Onshore Wind 25"
          description="Onshore Wind 2025"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2026-01-01T00:00:00.000+0100"
          power="6719e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 25"
                id="onShoreWindProfile2025"
                reference="onShoreWindProfile"
                multiplier="6719">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind26"
          name="Onshore Wind 26"
          description="Onshore Wind 2026"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2027-01-01T00:00:00.000+0100"
          power="6825e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 26"
                id="onShoreWindProfile2026"
                reference="onShoreWindProfile"
                multiplier="6825">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind27"
          name="Onshore Wind 27"
          description="Onshore Wind 2027"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2028-01-01T00:00:00.000+0100"
          power="7031e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 27"
                id="onShoreWindProfile2027"
                reference="onShoreWindProfile"
                multiplier="7031">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind28"
          name="Onshore Wind 28"
          description="Onshore Wind 2028"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2029-01-01T00:00:00.000+0100"
          power="7188e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 28"
                id="onShoreWindProfile2028"
                reference="onShoreWindProfile"
                multiplier="7188">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind29"
          name="Onshore Wind 29"
          description="Onshore Wind 2029"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          power="7344e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 29"
                id="onShoreWindProfile2029"
                reference="onShoreWindProfile"
                multiplier="7344">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind30"
          name="Onshore Wind 30"
          description="Onshore Wind 2030"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2031-01-01T00:00:00.000+0100"
          power="7500e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 30"
                id="onShoreWindProfile2030"
                reference="onShoreWindProfile"
                multiplier="7500">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind31"
          name="Onshore Wind 31"
          description="Onshore Wind 2031"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          power="7650.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 31"
                id="onShoreWindProfile2031"
                reference="onShoreWindProfile"
                multiplier="7650">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind32"
          name="Onshore Wind 32"
          description="Onshore Wind 2032"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2033-01-01T00:00:00.000+0100"
          power="7800.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 33"
                id="onShoreWindProfile2033"
                reference="onShoreWindProfile"
                multiplier="7680">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind33"
          name="Onshore Wind 33"
          description="Onshore Wind 2033"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2034-01-01T00:00:00.000+0100"
          power="7950.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 33"
                id="onShoreWindProfile2033"
                reference="onShoreWindProfile"
                multiplier="7950">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind34"
          name="Onshore Wind 34"
          description="Onshore Wind 2034"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          power="8100.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 34"
                id="onShoreWindProfile2034"
                reference="onShoreWindProfile"
                multiplier="8100">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind35"
          name="Onshore Wind 35"
          description="Onshore Wind 2035"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2036-01-01T00:00:00.000+0100"
          power="8250.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 35"
                id="onShoreWindProfile2035"
                reference="onShoreWindProfile"
                multiplier="8250">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind36"
          name="Onshore Wind 36"
          description="Onshore Wind 2036"
          commissioningDate="2036-01-01T00:00:00.000+0100"
          decommissioningDate="2037-01-01T00:00:00.000+0100"
          power="8400.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 36"
                id="onShoreWindProfile2036"
                reference="onShoreWindProfile"
                multiplier="8400">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind37"
          name="Onshore Wind 37"
          description="Onshore Wind 2037"
          commissioningDate="2037-01-01T00:00:00.000+0100"
          decommissioningDate="2038-01-01T00:00:00.000+0100"
          power="8550.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 37"
                id="onShoreWindProfile2037"
                reference="onShoreWindProfile"
                multiplier="8550">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind38"
          name="Onshore Wind 38"
          description="Onshore Wind 2038"
          commissioningDate="2038-01-01T00:00:00.000+0100"
          decommissioningDate="2039-01-01T00:00:00.000+0100"
          power="8700.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 38"
                id="onShoreWindProfile2038"
                reference="onShoreWindProfile"
                multiplier="8700">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind39"
          name="Onshore Wind 39"
          description="Onshore Wind 2039"
          commissioningDate="2039-01-01T00:00:00.000+0100"
          decommissioningDate="2040-01-01T00:00:00.000+0100"
          power="8850.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 39"
                id="onShoreWindProfile2039"
                reference="onShoreWindProfile"
                multiplier="8850">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="onshoreWind40"
          name="Onshore Wind 40"
          description="Onshore Wind 2040"
          commissioningDate="2040-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="9000.0E6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
                xsi:type="esdl:ProfileReference"
                name="On Shore Wind Production Profile 40"
                id="onShoreWindProfile2040"
                reference="onShoreWindProfile"
                multiplier="9000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_Gemini"
          name="Offshore Wind Gemini"
          description="Offshore Wind Gemini"
          commissioningDate="2018-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="957e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2018"
              multiplier="957">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_Borssele"
          name="Offshore Wind Borssele"
          description="Offshore Wind Borssele"
          commissioningDate="2021-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="1400e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2011_borssele"
              multiplier="1400">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKZ_HKN"
          name="Offshore Wind HKZ HKN"
          description="Offshore Wind HKZ HKN"
          commissioningDate="2023-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2100e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2023_HKZ_HKN"
              multiplier="2100">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKW"
          name="Offshore Wind HKW"
          description="Offshore Wind HKW"
          commissioningDate="2026-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="1400e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2026_HKW"
              multiplier="1400">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_TNW"
          name="Offshore Wind TNW"
          description="Offshore Wind TNW"
          commissioningDate="2027-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="700e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2026_TNW"
              multiplier="700">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_IJV12"
          name="Offshore Wind IJV12"
          description="Offshore Wind IJV12"
          commissioningDate="2028-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_IJV34"
          name="Offshore Wind IJV34"
          description="Offshore Wind IJV34"
          commissioningDate="2029-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_extra_2030"
          name="Offshore Wind extra 2030"
          description="Offshore Wind extra 2030"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="700e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="700">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKZW_2030"
          name="Offshore Wind Hollandse Kust Zuidwest 2030"
          description="Offshore Wind Hollandse Kust Zuidwest 2030"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKZW_2031"
          name="Offshore Wind Hollandse Kust Zuidwest 2031"
          description="Offshore Wind Hollandse Kust Zuidwest 2031"
          commissioningDate="2031-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKNW_2032"
          name="Offshore Wind Hollandse Kust Zuidwest 2032"
          description="Offshore Wind Hollandse Kust Zuidwest 2032"
          commissioningDate="2032-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_HKNW_2033"
          name="Offshore Wind Hollandse Kust Zuidwest 2033"
          description="Offshore Wind Hollandse Kust Zuidwest 2033"
          commissioningDate="2033-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_2034"
          name="Offshore Wind 2034"
          description="Offshore Wind 2034"
          commissioningDate="2034-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_2035"
          name="Offshore Wind 2035"
          description="Offshore Wind 2035"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_2036"
          name="Offshore Wind 2036"
          description="Offshore Wind 2036"
          commissioningDate="2036-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_2037"
          name="Offshore Wind 2037"
          description="Offshore Wind 2037"
          commissioningDate="2037-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2030_IJV"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_Doggersbank_2038"
          name="Offshore Wind Doggersbank 2038"
          description="Offshore Wind Doggersbank 2038"
          commissioningDate="2038-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2026_TNW"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_Doggersbank_2039"
          name="Offshore Wind Doggersbank 2039"
          description="Offshore Wind Doggersbank 2039"
          commissioningDate="2039-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="2000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2026_TNW"
              multiplier="2000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
	  <asset
          xsi:type="esdl:WindTurbine"
          id="offshoreWind_NorthH2_2040"
          name="Offshore Wind NorthH2 2040"
          description="Offshore Wind NorthH2 2040"
          commissioningDate="2040-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          power="10000e6">
		<costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:ProfileReference" reference="zeroPriceProfile"/>
        </costInformation>
        <port
            xsi:type="esdl:OutPort"
            carrier="electricity">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Off Shore Wind Production Profile"
              id="offShoreWindProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="MWp_normalized"
              field="offshorewind_2026_TNW"
              multiplier="10000">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:ElectricityDemand"
          id="electricityDemand1"
          name="Dutch Electricity Demand 1"
          description="Dutch Electricity Demand"
          commissioningDate="2019-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          >
        <port
            xsi:type="esdl:InPort"
            id="electricityDemand1Port"
            maxPower="119444.0e9">
          <profile
              xsi:type="esdl:InfluxDBProfile"
              name="Electricity Demand Profile"
              id="electricityDemandProfile"
              host="acuity.sensorlab.tno.nl"
              port="8087"
              database="powerstats"
              measurement="yearly_energy_normalized"
              field="demand_2016"
              multiplier="119444.0e3">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
              </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:ElectricityDemand"
          id="electricityDemand2"
          name="Dutch Electricity Demand"
          description="Dutch Electricity Demand 2"
          commissioningDate="2020-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          >
        <port
            xsi:type="esdl:InPort"
            id="electrcityDemand2Port"
            maxPower="119444.0e9">
          <profile
                xsi:type="esdl:ProfileReference"
                reference="electricityDemandProfile"
                name="Electricity Demand Profile"
                id="electricityDemandProfile2020_2025"
                multiplier="119444.0e3">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
              </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:ElectricityDemand"
          id="electricityDemand3"
          name="Dutch Electricity Demand"
          description="Dutch Electricity Demand 3"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          >
        <port
            xsi:type="esdl:InPort"
            id="electrcityDemand3Port"
            maxPower="119166.0e9">
          <profile
          xsi:type="esdl:ProfileReference"
          reference="electricityDemandProfile"
          name="Electricity Demand Profile"
          id="electricityDemandProfile2025_2030"
              multiplier="119166.0e3">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
              </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:ElectricityDemand"
          id="electricityDemand4"
          name="Dutch Electricity Demand"
          description="Dutch Electricity Demand 4"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2035-01-01T00:00:00.000+0100"
          >
        <port
            xsi:type="esdl:InPort"
            id="electrcityDemand4Port"
            maxPower="122778.0e9">
          <profile
                xsi:type="esdl:ProfileReference"
                reference="electricityDemandProfile"
                name="Electricity Demand Profile"
                id="electricityDemandProfile2030_2035"
                multiplier="122778.0e3">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
            </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:ElectricityDemand"
          id="electricityDemand5"
          name="Dutch Electricity Demand"
          description="Dutch Electricity Demand 5"
          commissioningDate="2035-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          >
        <port
            xsi:type="esdl:InPort"
            id="electrcityDemand5Port"
            maxPower="122778.0e9">
          <profile
                xsi:type="esdl:ProfileReference"
                reference="electricityDemandProfile"
                name="Electricity Demand Profile"
                id="electricityDemandProfile2035_2040"
                multiplier="122778.0e3">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="power_MW"/>
              </profile>
        </port>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="IJmuiden1"
          name="IJmond-1"
          commissioningDate="1997-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="bls_gas_fuel"
          maxLoad="145000000"
          minLoad="116000000"
          effMaxLoad="0.47"
          effMinLoad="0.4321978">
        <mustRun 
            xsi:type="esdl:DateTimeProfile"
            name="AlwaysMustRunProfile"
            id="AlwaysMustRunProfile">
            <element
                from="1997-01-01T00:00:00.000+0100"
                to="2026-01-01T00:00:00.000+0100"
                value="1.0"/>
            <element
                from="2026-01-01T00:00:00.000+0100"
                to="2051-01-01T00:00:00.000+0100"
                value="0.0"/>
        </mustRun>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Velsen-24"
          name="Velsen-24"
          commissioningDate="1974-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="bls_gas_fuel"
          maxLoad="459000000"
          minLoad="275000000"
          effMaxLoad="0.378"
          effMinLoad="0.3375476"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Velsen-25"
          name="Velsen-25"
          commissioningDate="1986-01-01T00:00:00.000+0100"
          decommissioningDate="2032-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="bls_gas_fuel"
          maxLoad="361000000"
          minLoad="216000000"
          effMaxLoad="0.404"
          effMinLoad="0.357033">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Amer-91"
          name="Amer-91"
          commissioningDate="1993-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="coal"
          maxLoad="600000000"
          minLoad="360000000"
          effMaxLoad="0.405"
          effMinLoad="0.36">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Amer-91-Bio"
          name="Amer-91-Bio"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="biomassLQ"
          maxLoad="420000000"
          minLoad="300000000"
          effMaxLoad="0.385"
          effMinLoad="0.35">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Hemweg-8h"
          name="Hemweg-8h"
          commissioningDate="1994-01-01T00:00:00.000+0100"
          decommissioningDate="2019-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="coal"
          maxLoad="640000000"
          minLoad="378000000"
          effMaxLoad="0.41"
          effMinLoad="0.3757611"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Maasvlakte-MPP3"
          name="Maasvlakte Power Plant 3"
          commissioningDate="2016-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="Uniper"
          energyCarrier="coal"
          maxLoad="1070000000"
          minLoad="640000000"
          effMaxLoad="0.45"
          effMinLoad="0.4"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="RWE-EEMS-1"
          name="RWE-EEMS-1"
          commissioningDate="2015-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="coal"
          maxLoad="780000000"
          minLoad="200000000"
          effMaxLoad="0.45"
          effMinLoad="0.37"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="RWE-EEMS-1-fic"
          name="RWE-EEMS-1-fic"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="biomassLQ"
          maxLoad="450000000"
          minLoad="150000000"
          effMaxLoad="0.43"
          effMinLoad="0.38"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="RWE-EEMS-2"
          name="RWE-EEMS-2"
          commissioningDate="2015-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="coal"
          maxLoad="790000000"
          minLoad="150000000"
          effMaxLoad="0.45"
          effMinLoad="0.38"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="RWE-EEMS-2-fic"
          name="RWE-EEMS-2-fic"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="biomassLQ"
          maxLoad="450000000"
          minLoad="150000000"
          effMaxLoad="0.43"
          effMinLoad="0.38"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Maasvlakte-Onyx"
          name="Maasvlakte-Onyx"
          commissioningDate="2015-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          owner="Engie"
          energyCarrier="coal"
          maxLoad="750000000"
          minLoad="188000000"
          effMaxLoad="0.45"
          effMinLoad="0.37"/>
      <asset
          xsi:type="esdl:BuildingUnit"
          id="Maasvlakte-Onyx-new"
          name="Maasvlakte-Onyx-new"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          assetType="UTILITY">
        <asset
            xsi:type="esdl:PowerPlant"
            id="Maasvlakte-Onyx-fic"
            name="Maasvlakte-Onyx-fic"
            commissioningDate="2021-01-01T00:00:00.000+0100"
            decommissioningDate="2051-01-01T00:00:00.000+0100"
            owner="Onyx"
            energyCarrier="biomassLQ"
            maxLoad="600000000"
            minLoad="300000000"
            effMaxLoad="0.43"
            effMinLoad="0.38"/>
        <asset
            xsi:type="esdl:PowerPlant"
            id="Maasvlakte-Onyx-fic-H"
            name="Maasvlakte-Onyx-fic-H"
            commissioningDate="2030-01-01T00:00:00.000+0100"
            decommissioningDate="2051-01-01T00:00:00.000+0100"
            owner="Onyx"
            energyCarrier="hydrogen_fuel"
            maxLoad="150000000"
            minLoad="0"
            effMaxLoad="0.60"
            effMinLoad="0.60"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="CHP-Residential-Services"
          name="CHP-Residential-Services"
          commissioningDate="2000-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Various"
          energyCarrier="naturalGas"
          maxLoad="350000000"
          minLoad="300000000"
          effMaxLoad="0.38"
          effMinLoad="0.32">
        <mustRun xsi:type="esdl:ProfileReference" reference="Q1Q4MustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Diemen-34"
          name="Diemen-34"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="440000000"
          minLoad="264000000"
          effMaxLoad="0.58"
          effMinLoad="0.52">
          <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Eems-30"
          name="Eems-30"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="335000000"
          minLoad="170000000"
          effMaxLoad="0.541"
          effMinLoad="0.501"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Eems-40"
          name="Eems-40"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="335000000"
          minLoad="170000000"
          effMaxLoad="0.542"
          effMinLoad="0.502"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Eems-50"
          name="Eems-50"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="335000000"
          minLoad="170000000"
          effMaxLoad="0.539"
          effMinLoad="0.499"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Eems-60"
          name="Eems-60"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="335000000"
          minLoad="170000000"
          effMaxLoad="0.538"
          effMinLoad="0.498"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Eems-70"
          name="Eems-70"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="335000000"
          minLoad="170000000"
          effMaxLoad="0.537"
          effMinLoad="0.497"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Flevo-1"
          name="Flevo-1"
          commissioningDate="2010-01-01T00:00:00.000+0100"
          decommissioningDate="2050-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="430000000"
          minLoad="240000000"
          effMaxLoad="0.59"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Flevo-2"
          name="Flevo-2"
          commissioningDate="2010-01-01T00:00:00.000+0100"
          decommissioningDate="2050-01-01T00:00:00.000+0100"
          owner="Electrabel"
          energyCarrier="naturalGas"
          maxLoad="430000000"
          minLoad="240000000"
          effMaxLoad="0.59"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Gas-Engines1"
          name="Gas-Engines-1"
          commissioningDate="2000-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Various"
          energyCarrier="naturalGas"
          maxLoad="1100000000"
          minLoad="1100000000"
          effMaxLoad="0.25"
          effMinLoad="0.25">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Gas-Engines2"
          name="Gas-Engines-2"
          commissioningDate="2000-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Various"
          energyCarrier="naturalGas"
          maxLoad="1100000000"
          minLoad="1100000000"
          effMaxLoad="0.25"
          effMinLoad="0.25">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Gas-Engines3"
          name="Gas-Engines-3"
          commissioningDate="2000-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Various"
          energyCarrier="naturalGas"
          maxLoad="1100000000"
          minLoad="1100000000"
          effMaxLoad="0.25"
          effMinLoad="0.25">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Geleen-Swentibold"
          name="Geleen-Swentibold"
          commissioningDate="1999-01-01T00:00:00.000+0100"
          decommissioningDate="2024-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="naturalGas"
          maxLoad="80000000"
          minLoad="40000000"
          effMaxLoad="0.35"
          effMinLoad="0.32">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Hemweg-9"
          name="Hemweg-9"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="440000000"
          minLoad="264000000"
          effMaxLoad="0.582"
          effMinLoad="0.522"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Industria-CHP"
          name="Industria-CHP"
          commissioningDate="2000-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Various"
          energyCarrier="naturalGas"
          maxLoad="700000000"
          minLoad="350000000"
          effMaxLoad="0.44"
          effMinLoad="0.32">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="L.Weide-6"
          name="L.Weide-6"
          commissioningDate="1995-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="247000000"
          minLoad="148000000"
          effMaxLoad="0.53"
          effMinLoad="0.48">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-1"
          name="Magnum-Emshave-1"
          commissioningDate="2012-01-01T00:00:00.000+0100"
          decommissioningDate="2025-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.561"
          effMinLoad="0.511"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-1-H"
          name="Magnum-Emshave-1-H"
          commissioningDate="2025-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="hydrogen_fuel"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.561"
          effMinLoad="0.511"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-2"
          name="Magnum-Emshave-2"
          commissioningDate="2012-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.559"
          effMinLoad="0.509"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-2-H"
          name="Magnum-Emshave-2-H"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="hydrogen_fuel"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.56"
          effMinLoad="0.51"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-3"
          name="Magnum-Emshave-3"
          commissioningDate="2012-01-01T00:00:00.000+0100"
          decommissioningDate="2030-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.561"
          effMinLoad="0.511"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Magnum-Emshave-3-H"
          name="Magnum-Emshave-3-H"
          commissioningDate="2030-01-01T00:00:00.000+0100"
          decommissioningDate="2051-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="hydrogen_fuel"
          maxLoad="437000000"
          minLoad="200000000"
          effMaxLoad="0.559"
          effMinLoad="0.509"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Merwede-11"
          name="Merwede-11"
          commissioningDate="1984-01-01T00:00:00.000+0100"
          decommissioningDate="2020-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="103000000"
          minLoad="61000000"
          effMaxLoad="0.43"
          effMinLoad="0.3831442"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Merwede-12"
          name="Merwede-12"
          commissioningDate="1989-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Vattenfall-NUON"
          energyCarrier="naturalGas"
          maxLoad="224000000"
          minLoad="134000000"
          effMaxLoad="0.5"
          effMinLoad="0.4516971">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Moerdijk-1"
          name="Moerdijk-1"
          commissioningDate="1997-01-01T00:00:00.000+0100"
          decommissioningDate="2018-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="naturalGas"
          maxLoad="339000000"
          minLoad="203000000"
          effMaxLoad="0.52"
          effMinLoad="0.47">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Moerdijk-2"
          name="Moerdijk-2"
          commissioningDate="2010-01-01T00:00:00.000+0100"
          decommissioningDate="2050-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="naturalGas"
          maxLoad="400000000"
          minLoad="240000000"
          effMaxLoad="0.58"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Rijnmond1"
          name="Rijnmond1"
          commissioningDate="2005-01-01T00:00:00.000+0100"
          decommissioningDate="2045-01-01T00:00:00.000+0100"
          owner="Intergen"
          energyCarrier="naturalGas"
          maxLoad="790000000"
          minLoad="474000000"
          effMaxLoad="0.55"
          effMinLoad="0.5"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Rijnmond2"
          name="Maasstroom Energie"
          commissioningDate="2010-01-01T00:00:00.000+0100"
          decommissioningDate="2050-01-01T00:00:00.000+0100"
          owner="Intergen"
          energyCarrier="naturalGas"
          maxLoad="420000000"
          minLoad="225000000"
          effMaxLoad="0.56"
          effMinLoad="0.5"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Roca-3"
          name="Roca-3"
          commissioningDate="1996-01-01T00:00:00.000+0100"
          decommissioningDate="2021-01-01T00:00:00.000+0100"
          owner="EON"
          energyCarrier="naturalGas"
          maxLoad="225000000"
          minLoad="135000000"
          effMaxLoad="0.51"
          effMinLoad="0.4639583">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Rotterdam-EP-1"
          name="Rotterdam-EP-1"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2053-01-01T00:00:00.000+0100"
          owner="EnecoGen"
          energyCarrier="naturalGas"
          maxLoad="420000000"
          minLoad="252000000"
          effMaxLoad="0.56"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Rotterdam-EP-2"
          name="Rotterdam-EP-2"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2053-01-01T00:00:00.000+0100"
          owner="EnecoGen"
          energyCarrier="naturalGas"
          maxLoad="420000000"
          minLoad="252000000"
          effMaxLoad="0.56"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Borssele-30"
          name="Borssele-30"
          commissioningDate="1973-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="RWE-ESSENT"
          energyCarrier="uranium"
          maxLoad="449000000"
          minLoad="269000000"
          effMaxLoad="0.3"
          effMinLoad="0.3"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Sloe-10"
          name="Sloe-10"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="EDF/PZEM"
          energyCarrier="naturalGas"
          maxLoad="435000000"
          minLoad="261000000"
          effMaxLoad="0.56"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Sloe-20"
          name="Sloe-20"
          commissioningDate="2013-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="EDF/PZEM"
          energyCarrier="naturalGas"
          maxLoad="435000000"
          minLoad="26000000"
          effMaxLoad="0.56"
          effMinLoad="0.52"/>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Elsta"
          name="Elsta"
          commissioningDate="1998-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Dow"
          energyCarrier="naturalGas"
          maxLoad="455000000"
          minLoad="455000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Pergen-1"
          name="Pergen-1"
          commissioningDate="1994-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="AirLiquide"
          energyCarrier="naturalGas"
          maxLoad="130000000"
          minLoad="130000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Pergen-2"
          name="Pergen-2"
          commissioningDate="2007-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="AirLiquide"
          energyCarrier="naturalGas"
          maxLoad="130000000"
          minLoad="130000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="NAM-Schoonebeek"
          name="NAM Schoonebeek"
          commissioningDate="2011-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="AirLiquide"
          energyCarrier="naturalGas"
          maxLoad="128000000"
          minLoad="128000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Corus-1"
          name="Corus-1"
          commissioningDate="1980-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Tata"
          energyCarrier="naturalGas"
          maxLoad="72000000"
          minLoad="72000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Corus-2"
          name="Corus-2"
          commissioningDate="1980-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Tata"
          energyCarrier="naturalGas"
          maxLoad="72000000"
          minLoad="72000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
      <asset
          xsi:type="esdl:PowerPlant"
          id="Delesto"
          name="Delesto"
          commissioningDate="1980-01-01T00:00:00.000+0100"
          decommissioningDate="2041-01-01T00:00:00.000+0100"
          owner="Tata"
          energyCarrier="naturalGas"
          maxLoad="530000000"
          minLoad="530000000"
          effMaxLoad="0.57"
          effMinLoad="0.52">
        <mustRun xsi:type="esdl:ProfileReference" reference="AlwaysMustRunProfile"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation>
    <carriers>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Coal"
          id="coal"
          energyCarrierType="FOSSIL"
          emission='0.34'
          stateOfMatter="SOLID">
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Coal Cost Profile"
            interpolationMethod="PREVIOUS"
            id="coalCostProfile">
          <element
              from="2020-01-01T00:00:00.000+0100"
              to="2025-01-01T00:00:00.000+0100"
              value="6.34"/>
          <element
              from="2025-01-01T00:00:00.000+0100"
              to="2030-01-01T00:00:00.000+0100"
              value="7.28"/>
          <element
              from="2030-01-01T00:00:00.000+0100"
              to="2041-01-01T00:00:00.000+0100"
              value="9.70"/>
           <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Hydrogen fuel"
          id="hydrogen_fuel"
          emission='0.0'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Hydrogen Cost Profile"
            interpolationMethod="PREVIOUS"
            id="hydrogenCostProfile">
          <element
              from="2000-01-01T00:00:00.000+0100"
              to="2000-01-01T00:00:00.000+0100"
              value="0.0"/>
           <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Uranium"
          id="uranium" emission='0.0'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Uranium Cost Profile"
            interpolationMethod="PREVIOUS"
            id="uraniumCostProfile">
          <element
              from="2015-01-01T00:00:00.000+0100"
              to="2020-01-01T00:00:00.000+0100"
              value="25.0"/>
          <element
              from="2020-01-01T00:00:00.000+0100"
              to="2041-01-01T00:00:00.000+0100"
              value="12.0"/>
           <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Energy Carrier Natural Gas"
          id="naturalGas"
          energyCarrierType="FOSSIL"
          emission='0.20'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Natural Gas Cost Profile"
            interpolationMethod="PREVIOUS"
            id="naturalGasCostProfile">
          <element
              from="2020-01-01T00:00:00.000+0100"
              to="2027-01-01T00:00:00.000+0100"
              value="26.6"/>
          <element
              from="2027-01-01T00:00:00.000+0100"
              to="2028-01-01T00:00:00.000+0100"
              value="27.1"/>
          <element
              from="2028-01-01T00:00:00.000+0100"
              to="2029-01-01T00:00:00.000+0100"
              value="27.5"/>
          <element
              from="2029-01-01T00:00:00.000+0100"
              to="2030-01-01T00:00:00.000+0100"
              value="28.0"/>
          <element
              from="2030-01-01T00:00:00.000+0100"
              to="2031-01-01T00:00:00.000+0100"
              value="28.4"/>
          <element
              from="2031-01-01T00:00:00.000+0100"
              to="2032-01-01T00:00:00.000+0100"
              value="28.6"/>
          <element
              from="2032-01-01T00:00:00.000+0100"
              to="2033-01-01T00:00:00.000+0100"
              value="28.9"/>
          <element
              from="2033-01-01T00:00:00.000+0100"
              to="2034-01-01T00:00:00.000+0100"
              value="29.1"/>
          <element
              from="2034-01-01T00:00:00.000+0100"
              to="2035-01-01T00:00:00.000+0100"
              value="29.3"/>
          <element
              from="2035-01-01T00:00:00.000+0100"
              to="2036-01-01T00:00:00.000+0100"
              value="29.5"/>
          <element
              from="2036-01-01T00:00:00.000+0100"
              to="2037-01-01T00:00:00.000+0100"
              value="29.8"/>
          <element
              from="2037-01-01T00:00:00.000+0100"
              to="2038-01-01T00:00:00.000+0100"
              value="30.1"/>
          <element
              from="2038-01-01T00:00:00.000+0100"
              to="2039-01-01T00:00:00.000+0100"
              value="30.3"/>
          <element
              from="2039-01-01T00:00:00.000+0100"
              to="2040-01-01T00:00:00.000+0100"
              value="30.6"/>
          <element
              from="2040-01-01T00:00:00.000+0100"
              to="2041-01-01T00:00:00.000+0100"
              value="30.9"/>
           <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Energy Carrier BLS Gas"
          id="bls_gas_fuel"
          energyCarrierType="FOSSIL"
          emission='0.20'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="BLS Gas Cost Profile"
            interpolationMethod="PREVIOUS"
            id="bls_gas_fuelCostProfile">
          <element
              from="2000-01-01T00:00:00.000+0100"
              to="2000-01-01T00:00:00.000+0100"
              value="6.00"/>
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Biomass Low Quality"
          id="biomassLQ"
          energyContent="15.0"
          emission='0.0'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Biomass LQ Cost Profile"
            interpolationMethod="PREVIOUS"
            id="biomassLQCostProfile">
          <element
              from="2015-01-01T00:00:00.000+0100"
              to="2051-01-01T00:00:00.000+0100"
              value="28.8"/>
           <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:EnergyCarrier"
          name="Biomass High Quality"
          id="biomassHQ"
          energyContent="15.0"
          emission='0.0'>
          <emissionUnit xsi:type="esdl:QuantityAndUnitReference" reference="co2Emission"/>
        <cost
            xsi:type="esdl:DateTimeProfile"
            name="Biomass HQ Cost Profile"
            interpolationMethod="PREVIOUS"
            id="biomassHQCostProfile">
          <element
              from="2015-01-01T00:00:00.000+0100"
              to="2051-01-01T00:00:00.000+0100"
              value="36.0"/>
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
        </cost>
      </carrier>
      <carrier
          xsi:type="esdl:ElectricityCommodity"
          name="Electricity Commodity"
          id="electricity"/>
      <carrier
          xsi:type="esdl:GasCommodity"
          name="Hydrogen Commodity"
          id="hydrogen"/>    
    </carriers>
   <profiles>
        <profile xsi:type="esdl:ProfileReference" id="naturalGasCost" reference="naturalGasCostProfile" />
        <profile xsi:type="esdl:SingleValue" id="smrEfficiency" value="0.72" />
        <profile xsi:type="esdl:SingleValue" id="smrCo2Emission" value="0.27" />
        <profile xsi:type="esdl:SingleValue" id="co2Captured" value="0.9" />
        <profile xsi:type="esdl:SingleValue" id="gasEmission" value="0.2" />
        <profile xsi:type="esdl:SingleValue" id="costOfAvoidedCo2" value="135" />
        <profile xsi:type="esdl:SingleValue" id="marginalProductionCost" value="0" />
        <profile xsi:type="esdl:DateTimeProfile" name="CO2 Price Profile" interpolationMethod="PREVIOUS" id="co2Price">
            <element from="2020-01-01T00:00:00.000+0100" to="2027-01-01T00:00:00.000+0100" value="35.8" />
            <element from="2027-01-01T00:00:00.000+0100" to="2028-01-01T00:00:00.000+0100" value="38.6" />
            <element from="2028-01-01T00:00:00.000+0100" to="2029-01-01T00:00:00.000+0100" value="41.4" />
            <element from="2029-01-01T00:00:00.000+0100" to="2030-01-01T00:00:00.000+0100" value="44.2" />
            <element from="2030-01-01T00:00:00.000+0100" to="2031-01-01T00:00:00.000+0100" value="47.0" />
            <element from="2031-01-01T00:00:00.000+0100" to="2032-01-01T00:00:00.000+0100" value="49.0" />
            <element from="2032-01-01T00:00:00.000+0100" to="2033-01-01T00:00:00.000+0100" value="51.1" />
            <element from="2033-01-01T00:00:00.000+0100" to="2034-01-01T00:00:00.000+0100" value="53.1" />
            <element from="2034-01-01T00:00:00.000+0100" to="2035-01-01T00:00:00.000+0100" value="55.2" />
            <element from="2035-01-01T00:00:00.000+0100" to="2036-01-01T00:00:00.000+0100" value="57.2" />
            <element from="2036-01-01T00:00:00.000+0100" to="2037-01-01T00:00:00.000+0100" value="59.5" />
            <element from="2037-01-01T00:00:00.000+0100" to="2038-01-01T00:00:00.000+0100" value="61.8" />
            <element from="2038-01-01T00:00:00.000+0100" to="2039-01-01T00:00:00.000+0100" value="64.1" />
            <element from="2039-01-01T00:00:00.000+0100" to="2040-01-01T00:00:00.000+0100" value="66.4" />
            <element from="2040-01-01T00:00:00.000+0100" to="2041-01-01T00:00:00.000+0100" value="68.7" />
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eur_per_MWh"/>
          </profile>
        <profile xsi:type="esdl:DateTimeProfile"
            name="Q1Q4MustRunProfile"
            id="Q1Q4MustRunProfile">
          <element
              from="2009-10-01T01:00:00.000+0200"
              to="2026-01-01T01:00:00.000+0200"
              value="1.0"/>
          <element
              from="2026-10-01T01:00:00.000+0200"
              to="2051-01-01T01:00:00.000+0200"
              value="0.0"/>
        </profile>
    </profiles>
    <quantityAndUnits>
        <quantityAndUnit
          physicalQuantity="POWER"
          unit="WATT"
          multiplier="MEGA"
          description="Power in MW"
          id="power_MW"/>
        <quantityAndUnit
          physicalQuantity="EMISSION"
          unit="GRAM"
          multiplier="KILO"
          perMultiplier="KILO"
          perUnit="WATTHOUR"
          description="CO2 emission in kg/kWh"
          id="co2Emission"/>
      <quantityAndUnit
          physicalQuantity="COST"
          unit="EURO"
          perMultiplier="MEGA"
          perUnit="WATTHOUR"
          description="Euro per MWh"
          id="eur_per_MWh"/>
    </quantityAndUnits>
  </energySystemInformation>
  <services>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA27"
        name="Wind PPA 27"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer27 offshoreWind_TNW"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA28"
        name="Wind PPA 28"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer28 offshoreWind_IJV12"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA29"
        name="Wind PPA 29"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer29 offshoreWind_IJV34"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA30A"
        name="Wind PPA 30A"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer30 offshoreWind_extra_2030"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA30b"
        name="Wind PPA 30b"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer30 offshoreWind_HKZW_2030"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA31"
        name="Wind PPA 31"
        description="Wind PPA for electrolyzers in Rotterdam-Moerdijk area."
        asset="electrolyzer31 offshoreWind_HKZW_2031"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA32"
        name="Wind PPA 32"
        description="Wind PPA for windparks installed in ..."
        asset="electrolyzer32 offshoreWind_HKNW_2032"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA33"
        name="Wind PPA 33"
        description="Wind PPA for windparks installed in ..."
        asset="electrolyzer33 offshoreWind_HKNW_2033"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA34"
        name="Wind PPA 34"
        description="Wind PPA for windparks installed in 2034"
        asset="electrolyzer34 offshoreWind_2034"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA35"
        name="Wind PPA 35"
        description="Wind PPA for windparks installed in 2035"
        asset="electrolyzer35 offshoreWind_2035"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA36"
        name="Wind PPA 36"
        description="Wind PPA for windparks installed in 2036"
        asset="electrolyzer36 offshoreWind_2036"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA37"
        name="Wind PPA 37"
        description="Wind PPA for windparks installed in 2037"
        asset="electrolyzer37 offshoreWind_2037"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA38"
        name="Wind PPA 38"
        description="Wind PPA for windparks installed in 2038"
        asset="electrolyzer38 offshoreWind_Doggersbank_2038"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA39"
        name="Wind PPA 39"
        description="Wind PPA for windparks installed in 2039"
        asset="electrolyzer39 offshoreWind_Doggersbank_2039"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
     <service
        xsi:type="esdl:EnergyMarket"
        id="WindPPA40"
        name="Wind PPA 40"
        description="Wind PPA for windparks installed in 2040"
        asset="electrolyzer40 offshoreWind_NorthH2_2040"
        carrier="electricity">
      <parameters
          xsi:type="esdl:StringParameter"
          name="price_profile"
          value="hydrogen_to_storage_bhf"/>
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="part"
          value="0.5"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="min_consumption"
          value="0.0"/>
    </service>
    <service
        xsi:type="esdl:EnergyMarket"
        id="electricitymarket1"
        name="Electricity Market 1"
        description="Dutch Electricity Market"
        asset="otc_import_electricity_market otc_export_electricity_market batteries20 batteries21 batteries22 batteries23 batteries24 batteries25 batteries26 batteries27 batteries28 batteries29 batteries30 batteries31 batteries32 batteries33 batteries34 batteries35 batteries36 batteries37 batteries38 batteries39 batteries40 electrolyzer25 electrolyzer26 electrolyzer27 electrolyzer28 electrolyzer29 electrolyzer30 electrolyzer31 electrolyzer32 electrolyzer33 electrolyzer34 electrolyzer35 electrolyzer36 electrolyzer37 electrolyzer38 electrolyzer39 electrolyzer40 industrialHeatPumps19 industrialHeatPumps20 industrialHeatPumps21 industrialHeatPumps22 industrialHeatPumps23 industrialHeatPumps24 industrialHeatPumps25 industrialHeatPumps26 industrialHeatPumps27 industrialHeatPumps28 industrialHeatPumps29 industrialHeatPumps30 industrialHeatPumps31 industrialHeatPumps32 industrialHeatPumps33 industrialHeatPumps34 industrialHeatPumps35_40 hybridBoiler20 hybridBoiler21 hybridBoiler22 hybridBoiler23 hybridBoiler24 hybridBoiler25 hybridBoiler26 hybridBoiler27 hybridBoiler28 hybridBoiler29 hybridBoiler30 hybridBoiler31 hybridBoiler32 hybridBoiler33 hybridBoiler34 hybridBoiler35_40 pvpanel19 pvpanel20 pvpanel21 pvpanel22 pvpanel23 pvpanel24 pvpanel25 pvpanel26 pvpanel27 pvpanel28 pvpanel29 pvpanel30 pvpanel31 pvpanel32 pvpanel33 pvpanel34 pvpanel35 pvpanel36 pvpanel37 pvpanel38 pvpanel39 pvpanel40 onshoreWind19 onshoreWind20 onshoreWind21 onshoreWind22 onshoreWind23 onshoreWind24 onshoreWind25 onshoreWind26 onshoreWind27 onshoreWind28 onshoreWind29 onshoreWind30 onshoreWind31 onshoreWind32 onshoreWind33 onshoreWind34 onshoreWind35 onshoreWind36 onshoreWind37 onshoreWind38 onshoreWind39 onshoreWind40 offshoreWind_Gemini offshoreWind_Borssele offshoreWind_HKZ_HKN offshoreWind_HKW offshoreWind_TNW offshoreWind_IJV12 offshoreWind_IJV34 offshoreWind_extra_2030 offshoreWind_HKZW_2030 offshoreWind_HKZW_2031 offshoreWind_HKNW_2032 offshoreWind_HKNW_2033 offshoreWind_2034 offshoreWind_2035 offshoreWind_2036 offshoreWind_2037 offshoreWind_Doggersbank_2038 offshoreWind_Doggersbank_2039 offshoreWind_NorthH2_2040 electricityDemand1 electricityDemand2 electricityDemand3 electricityDemand4 electricityDemand5 IJmuiden1 Velsen-24 Velsen-25 Amer-91 Amer-91-Bio Maasvlakte-MPP3 RWE-EEMS-1 RWE-EEMS-2 RWE-EEMS-1-fic RWE-EEMS-2-fic Maasvlakte-Onyx Maasvlakte-Onyx-fic Maasvlakte-Onyx-fic-H CHP-Residential-Services Diemen-34 Flevo-1 Flevo-2 Gas-Engines1 Gas-Engines2 Gas-Engines3 Geleen-Swentibold Hemweg-8h Hemweg-9 Industria-CHP L.Weide-6 Magnum-Emshave-1 Magnum-Emshave-3-H Magnum-Emshave-2-H Magnum-Emshave-1-H Magnum-Emshave-2 Magnum-Emshave-3 Merwede-11 Moerdijk-1 Moerdijk-2 Rijnmond1 Rijnmond2 Roca-3 Rotterdam-EP-1 Rotterdam-EP-2 Borssele-30 Sloe-10 Sloe-20 Elsta NAM-Schoonebeek Pergen-1 Pergen-2 Merwede-12 Eems-30 Eems-40 Eems-50 Eems-60 Eems-70 Corus-1 Corus-2 Delesto"
        carrier="electricity">
      <parameters
          xsi:type="esdl:DoubleParameter"
          name="minPrice"
          value="-100.0"/>
      <parameters 
          xsi:type="esdl:DoubleParameter"
          name="maxPrice"
          value="300.0"/>
    </service>
  </services>
</esdl:EnergySystem>
