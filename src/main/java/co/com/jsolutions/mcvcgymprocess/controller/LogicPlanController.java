package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.controller.http.requests.LogicPlanRequest;
import co.com.jsolutions.mcvcgymprocess.mappers.LogicPlanRequestToLogicPlan;
import co.com.jsolutions.mcvcgymprocess.model.LogicPlan;
import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;
import co.com.jsolutions.mcvcgymprocess.service.LogicPlanService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(path = "/planes/")
@CrossOrigin(origins = "http://localhost")
public class LogicPlanController {

    @Autowired
    private LogicPlanService logicPlanService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ResponseEntity<?> listar() {
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        try {
            List<LogicPlan> listarPlanes = logicPlanService.listarPlanes();
            if (!listarPlanes.isEmpty()) {
                map.put("Status", 1);
                map.put("Data", listarPlanes);
                return new ResponseEntity<>(map, HttpStatus.OK);
            } else {
                map.put("Status", 0);
                map.put("Message", "Planes no Encontrados");
                return new ResponseEntity<>(map, HttpStatus.NOT_FOUND)
                        ;
            }
        } catch (Exception e) {
            map.clear();
            map.put("Status", 0);
            map.put("Message", "Error en tiempo de ejecución");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> BuscarById(@PathVariable Integer id) {
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        try {
            LogicPlan plan = logicPlanService.buscarid(id);
            map.put("Status", 1);
            map.put("Data", plan);
            return new ResponseEntity<>(map, HttpStatus.OK);
        } catch (Exception e) {
            map.put("Status", 0);
            map.put("Message", "Plan no encontrado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/crear")
    public ResponseEntity<?> crear(@RequestBody @NotNull LogicPlan plan) {
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        try {
            logicPlanService.guardar(plan);
            map.put("Status", 1);
            map.put("Data", plan);
            return new ResponseEntity<>(map, HttpStatus.OK);
        } catch (Exception e) {
            map.put("Status", 0);
            map.put("Message", "Plan no encontrado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/actualizar", method = RequestMethod.PUT)
    public ResponseEntity<?> actualizar(@PathVariable Integer id, @RequestBody LogicPlan planUdt) {
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        try {
            LogicPlan plan = logicPlanService.buscarid(id);
            plan.setNombre(planUdt.getNombre());
            plan.setId_tarifa(planUdt.getId_tarifa());
            logicPlanService.guardar(plan);
            map.put("status", 1);
            map.put("message", "Plan Actualizado");
            return new ResponseEntity<>(map, HttpStatus.OK);
        } catch (Exception e) {
            map.put("status", 0);
            map.put("message", "Tipo de Plan no Actualizado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> eliminar(@PathVariable Integer id) {
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        try {
            LogicPlan plan = logicPlanService.buscarid(id);
            logicPlanService.eliminar(plan);
            map.put("Status", 1);
            map.put("Message", "Plan Eliminado");
            return new ResponseEntity<>(map, HttpStatus.OK);
        } catch (Exception e) {
            map.put("Status", 0);
            map.put("Message", "Plan no pudo ser Eliminado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }
}