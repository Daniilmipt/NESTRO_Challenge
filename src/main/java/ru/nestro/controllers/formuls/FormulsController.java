package ru.nestro.controllers.formuls;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Transactional
@RequiredArgsConstructor
public class FormulsController {
    @Autowired
    @Qualifier("firstJdbcTemplate")
    private JdbcTemplate firstJdbcTemplate;

    @PutMapping("/api/formulas/{nameTable}")
    public void addToTable(@PathVariable("nameTable") String nameTable,
                                             @RequestParam(value="energy_cons", required = false)
                                             Float energy_cons,
                                             @RequestParam(value="coef", required = false)
                                                 Float coef,
                                               @RequestParam(value="enterprise_id", required = false)
                                                   Integer enterprise_id,
                           @RequestParam(value="fuel_consumption", required = false)
                               Float fuel_consumption,
                           @RequestParam(value="CO2_coef", required = false)
                               Float CO2_coef,
                           @RequestParam(value="CH4_coef", required = false)
                               Float CH4_coef,
                           @RequestParam(value="fuel_emissions", required = false)
                               Float fuel_emissions,
                           @RequestParam(value="trans_coef", required = false)
                               Float trans_coef,
                           @RequestParam(value="oxi_coef", required = false)
                               Float oxi_coef,
                           @RequestParam(value="gas_coef_id", required = false)
                               Integer gas_coef_id,
                           @RequestParam(value="id", required = false)
                               String id,
                           @RequestParam(value="Name", required = false)
                               String Name,
                           @RequestParam(value="chem_formula", required = false)
                               String chem_formula,
                           @RequestParam(value="chem_content", required = false)
                               Float chem_content,
                           @RequestParam(value="coef_id", required = false)
                               Integer coef_id,
                           @RequestParam(value="name", required = false)
                               String name,
                           @RequestParam(value="carbon_units", required = false)
                               Integer carbon_units,
                           @RequestParam(value="fuel_volume", required = false)
                               Float fuel_volume,
                           @RequestParam(value="rho", required = false)
                               Float rho,
                           @RequestParam(value="mass", required = false)
                               Float mass,
                           @RequestParam(value="carbon_coef", required = false)
                               Float carbon_coef,
                           @RequestParam(value="comp", required = false)
                               String comp,
                           @RequestParam(value="portion", required = false)
                               Float portion,
                           @RequestParam(value="dry_coef", required = false)
                               Float dry_coef,
                           @RequestParam(value="fossil_coef", required = false)
                               Float fossil_coef,
                           @RequestParam(value="emission_coef", required = false)
                               Float emission_coef,
                           @RequestParam(value="volume", required = false)
                               Float volume,
                           @RequestParam(value="organic_coef", required = false)
                               Float organic_coef,
                           @RequestParam(value="organic_waste", required = false)
                               Float organic_waste,
                           @RequestParam(value="prot", required = false)
                               Float prot

    ){
        String sql;
        if (nameTable.equals("acquired_emienergy_emissions")){
            sql = "INSERT INTO acquired_emienergy_emissions (energy_cons, coef, enterprise_id) VALUES (?, ?, ?);";
            firstJdbcTemplate.update(sql, energy_cons, coef, enterprise_id);
        } else if (nameTable.equals("fugitive_emissions")) {
            sql = "INSERT INTO fugitive_emissions (fuel_consumption,CO2_coef,CH4_coef,enterprise_id) VALUES (?, ?,?,?);";
            firstJdbcTemplate.update(sql, fuel_consumption,CO2_coef,CH4_coef,enterprise_id);
        } else if (nameTable.equals("stationary_fuel_burn")) {
            sql = "INSERT INTO stationary_fuel_burn (fuel_consumption,fuel_emissions,oxi_coef,trans_coef,enterprise_id) VALUES (?, ?,?,?,?);";
            firstJdbcTemplate.update(sql, fuel_consumption,fuel_emissions,oxi_coef,trans_coef,enterprise_id);
        } else if (nameTable.equals("stationary_gas_burn")) {
            sql = "INSERT INTO stationary_gas_burn (fuel_consumption,oxi_coef,enterprise_id,gas_coef_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql, fuel_consumption,oxi_coef,enterprise_id,gas_coef_id);
        } else if (nameTable.equals("mixed_coefs")) {
            sql = "INSERT INTO mixed_coefs (chem_formula, name,carbon_units) VALUES (?, ?, ?);";
            firstJdbcTemplate.update(sql, chem_formula, name,carbon_units);
        } else if (nameTable.equals("stationary_gas_coef")) {
            sql = "INSERT INTO mixed_coefs (chem_formula, name,carbon_units) VALUES (?, ?, ?);";
            firstJdbcTemplate.update(sql, chem_formula, name,carbon_units);

            sql = "INSERT INTO stationary_gas_coef (id, Name,chem_formula,chem_content) VALUES (?, ?,?,?);";
            firstJdbcTemplate.update(sql, id, Name,chem_formula,chem_content);
        } else if (nameTable.equals("torch_fuel_burn")) {
            sql = "INSERT INTO torch_fuel_burn (fuel_consumption,enterprise_id,coef_id) VALUES (?,?,?);";
            firstJdbcTemplate.update(sql,fuel_consumption,enterprise_id,coef_id);
        }
        else if (nameTable.equals("torch_fuel_content")) {
            sql = "INSERT INTO mixed_coefs (chem_formula, name,carbon_units) VALUES (?, ?, ?);";
            firstJdbcTemplate.update(sql, chem_formula, name,carbon_units);

            sql = "INSERT INTO torch_fuel_content (id,chem_formula,chem_content, enterprise_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,id,chem_formula,chem_content, enterprise_id);
        }
        else if (nameTable.equals("transport")) {
            sql = "INSERT INTO transport (fuel_volume,rho,CO2_coef,enterprise_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,fuel_volume,rho,CO2_coef,enterprise_id);
        }
        else if (nameTable.equals("waste_burn_co2_liquid")) {
            sql = "INSERT INTO waste_burn_co2_liquid (mass,carbon_coef,oxi_coef,enterprise_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,mass,carbon_coef,oxi_coef,enterprise_id);
        }
        else if (nameTable.equals("waste_burn_coef")) {
            sql = "INSERT INTO waste_burn_coef (comp,dry_coef,carbon_coef,fossil_coef) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,comp,dry_coef,carbon_coef,fossil_coef);
        }
        else if (nameTable.equals("waste_burn_mixed_coef")) {
            sql = "INSERT INTO waste_burn_coef (comp,dry_coef,carbon_coef,fossil_coef) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,comp,dry_coef,carbon_coef,fossil_coef);

            sql = "INSERT INTO waste_burn_mixed_coef (id,comp,portion) VALUES (?,?,?);";
            firstJdbcTemplate.update(sql,id,comp,portion);
        }
        else if (nameTable.equals("waste_burn_co2_mixed")) {
            sql = "INSERT INTO waste_burn_coef (comp,dry_coef,carbon_coef,fossil_coef) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,comp,dry_coef,carbon_coef,fossil_coef);

            sql = "INSERT INTO waste_burn_mixed_coef (id,comp,portion) VALUES (?,?,?);";
            firstJdbcTemplate.update(sql,id,comp,portion);

            sql = "INSERT INTO waste_burn_co2_mixed (mass,oxi_coef,coef_id,enterprise_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,mass,oxi_coef,coef_id,enterprise_id);
        }
        else if (nameTable.equals("waste_burn_co2_solid")) {
            sql = "INSERT INTO waste_burn_co2_solid (mass,dry_coef,carbon_coef,fossil_coef,oxi_coef,enterprise_id) VALUES (?,?,?,?,?,?);";
            firstJdbcTemplate.update(sql,mass,dry_coef,carbon_coef,fossil_coef,oxi_coef,enterprise_id);
        }
        else if (nameTable.equals("waste_burn_n2o")) {
            sql = "INSERT INTO waste_burn_n2o (mass,emission_coef,enterprise_id) VALUES (?,?,?);";
            firstJdbcTemplate.update(sql,mass,emission_coef,enterprise_id);
        }
        else if (nameTable.equals("waste_water_ch4")) {
            sql = "INSERT INTO waste_water_ch4 (volume,organic_coef,organic_waste,enterprise_id) VALUES (?,?,?,?);";
            firstJdbcTemplate.update(sql,volume,organic_coef,organic_waste,enterprise_id);
        }
        else if (nameTable.equals("waste_water_n2o")) {
            sql = "INSERT INTO waste_water_n2o (prot, enterprise_id) VALUES (?,?);";
            firstJdbcTemplate.update(sql, prot, enterprise_id);
        }
    }





    @PostMapping("/api/formulas/{idEnterprise}")
    public ResponseEntity<Object> getFromTable(@PathVariable("idEnterprise") Integer idEnterprise){
        String sqlTransport = "select * from transport where enterprise_id = ?";
        String sqlWasteBurnN2O = "select * from waste_burn_n2o where enterprise_id = ?";
        String sqlAcquiredEmienergyEmissions = "select * from acquired_emienergy_emissions where enterprise_id = ?";
        String sqlStationaryFuelBurn = "select * from stationary_fuel_burn where enterprise_id = ?";
        String sqlWasteWaterCh4 = "select * from waste_water_ch4 where enterprise_id = ?";
        String sqlWasteBurnCo2Solid = "select * from waste_burn_co2_solid where enterprise_id = ?";
        String sqlWasteBurnCo2Mixed = "select wc.*, wm.portion, wm.comp from waste_burn_co2_mixed as wc inner join waste_burn_mixed_coef as wm on wm.id = wc.coef_id where enterprise_id = ?";
        String sqlWasteBurnCo2Liquid = "select * from waste_burn_co2_liquid where enterprise_id = ?";
        String sqlFugitiveEmissions = "select * from fugitive_emissions where enterprise_id = ?";
        String sqlWasteWaterN2o = "select * from waste_water_n2o where enterprise_id = ?";
        String sqlAllGasEmissions = "select * from all_gas_emissions where enterprise_id = ?";
        String sqlTorchFuelContent = "select * from torch_fuel_content where enterprise_id = ?";
        String sqlStationaryGasBurn = "select * from stationary_gas_burn where enterprise_id = ?";

        List<Map<String, Object>> resultTransport = firstJdbcTemplate.queryForList(sqlTransport, idEnterprise);
        List<Map<String, Object>> resultWasteBurnN2O = firstJdbcTemplate.queryForList(sqlWasteBurnN2O, idEnterprise);
        List<Map<String, Object>> resultAcquiredEmienergyEmissions = firstJdbcTemplate.queryForList(sqlAcquiredEmienergyEmissions, idEnterprise);
        List<Map<String, Object>> resultStationaryFuelBurn = firstJdbcTemplate.queryForList(sqlStationaryFuelBurn, idEnterprise);
        List<Map<String, Object>> resultWasteWaterCh4 = firstJdbcTemplate.queryForList(sqlWasteWaterCh4, idEnterprise);
        List<Map<String, Object>> resultWasteBurnCo2Solid = firstJdbcTemplate.queryForList(sqlWasteBurnCo2Solid, idEnterprise);
        List<Map<String, Object>> resultWasteBurnCo2Liquid = firstJdbcTemplate.queryForList(sqlWasteBurnCo2Liquid, idEnterprise);
        List<Map<String, Object>> resultWasteBurnCo2Mixed = firstJdbcTemplate.queryForList(sqlWasteBurnCo2Mixed, idEnterprise);
        List<Map<String, Object>> resultFugitiveEmissions = firstJdbcTemplate.queryForList(sqlFugitiveEmissions, idEnterprise);
        List<Map<String, Object>> resultWasteWaterN2o = firstJdbcTemplate.queryForList(sqlWasteWaterN2o, idEnterprise);
        List<Map<String, Object>> resultAllGasEmissions = firstJdbcTemplate.queryForList(sqlAllGasEmissions, idEnterprise);
        List<Map<String, Object>> resultTorchFuelContent = firstJdbcTemplate.queryForList(sqlTorchFuelContent, idEnterprise);
        List<Map<String, Object>> resultStationaryGasBurn = firstJdbcTemplate.queryForList(sqlStationaryGasBurn, idEnterprise);

        Map<String, List<Map<String, Object>>> mapResult = new HashMap<>();
        mapResult.put("resultTransport", resultTransport);
        mapResult.put("resultWasteBurnN2O", resultWasteBurnN2O);
        mapResult.put("resultAcquiredEmienergyEmissions", resultAcquiredEmienergyEmissions);
        mapResult.put("resultStationaryFuelBurn", resultStationaryFuelBurn);
        mapResult.put("resultWasteWaterCh4", resultWasteWaterCh4);
        mapResult.put("resultWasteBurnCo2Solid", resultWasteBurnCo2Solid);
        mapResult.put("resultWasteBurnCo2Liquid", resultWasteBurnCo2Liquid);
        mapResult.put("resultWasteBurnCo2Mixed", resultWasteBurnCo2Mixed);
        mapResult.put("resultFugitiveEmissions", resultFugitiveEmissions);
        mapResult.put("resultWasteWaterN2o", resultWasteWaterN2o);
        mapResult.put("resultAllGasEmissions", resultAllGasEmissions);
        mapResult.put("resultTorchFuelContent", resultTorchFuelContent);
        mapResult.put("resultStationaryGasBurn", resultStationaryGasBurn);
        return new ResponseEntity<>(mapResult, HttpStatus.OK);
    }


    @GetMapping("/api/enterprise")
    public ResponseEntity<Object> getEnterprise(){
        String sql = "select * from enterprise";
        List<Map<String, Object>> result = firstJdbcTemplate.queryForList(sql);
        Map<String, List<Map<String, Object>>> mapResult = new HashMap<>();
        mapResult.put("enterprises", result);
        return new ResponseEntity<>(mapResult, HttpStatus.OK);
    }
}
