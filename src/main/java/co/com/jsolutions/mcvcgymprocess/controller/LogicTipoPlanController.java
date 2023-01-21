package co.com.jsolutions.mcvcgymprocess.controller;


import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;
import co.com.jsolutions.mcvcgymprocess.service.LogicTipoPlanService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/tipo-plan/")
@CrossOrigin(origins = "http://localhost")
public class LogicTipoPlanController {

    @Autowired
    private LogicTipoPlanService logicTipoPlanService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<LogicTipoPlan> listar(){
        return logicTipoPlanService.listarTiposPlanes();
    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public LogicTipoPlan BuscarById(@PathVariable LogicTipoPlan tipoPlan){
        LogicTipoPlan BtipoPlan = logicTipoPlanService.buscarid(tipoPlan);
        if (BtipoPlan == null){
            throw new RuntimeException("Tipo de Plan no encontrado-"+tipoPlan);
        }
        return BtipoPlan;
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    public LogicTipoPlan crear(@RequestBody @NotNull LogicTipoPlan tipoPlan){
        logicTipoPlanService.guardar(tipoPlan);
        return tipoPlan;
    }

    @RequestMapping(value = "/actualizar", method = RequestMethod.PUT)
    public LogicTipoPlan actulizar(@RequestBody LogicTipoPlan tipoPlan) {
        logicTipoPlanService.guardar(tipoPlan);
        return tipoPlan;
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public boolean eliminar(@PathVariable Integer id){
        logicTipoPlanService.eliminar(id);
        return true;
    }
}
