package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.controller.http.requests.LogicPlanRequest;
import co.com.jsolutions.mcvcgymprocess.mappers.LogicPlanRequestToLogicPlan;
import co.com.jsolutions.mcvcgymprocess.model.LogicPlan;
import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.service.LogicPlanService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/planes/")
@CrossOrigin(origins = "http://localhost")
public class LogicPlanController {

    @Autowired
    private LogicPlanService logicPlanService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<LogicPlan> listar() {
        return logicPlanService.listarPlanes();
    }
    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public LogicPlan BuscarById(@PathVariable LogicPlan plan){
        LogicPlan BPlan = logicPlanService.buscarid(plan);
        if (BPlan == null){
            throw new RuntimeException("Tarifa no encontrada-"+plan);
        }
        return BPlan;
    }

    @PostMapping(value = "/crear")
    public ResponseEntity<LogicPlan> crear(@RequestBody @NotNull LogicPlanRequest request){
        LogicPlan plan = LogicPlanRequestToLogicPlan.INSTANCE.logicPlanRequestToLogicPlan(request);
        LogicPlan response = logicPlanService.guardar(plan);
        return ResponseEntity.ok(response);
    }

    @RequestMapping(value = "/actualizar", method = RequestMethod.PUT)
    public LogicPlan actualizar(@RequestBody LogicPlan plan) {
        logicPlanService.guardar(plan);
        return plan;
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public boolean eliminar(@PathVariable Integer id){
        logicPlanService.eliminar(id);
        return true;
    }
}