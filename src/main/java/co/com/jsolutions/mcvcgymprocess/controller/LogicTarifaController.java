package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.service.LogicTarifaService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/tarifas/")
@CrossOrigin(origins = "http://localhost")

public class LogicTarifaController {

    @Autowired
    private LogicTarifaService logicTarifaService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<LogicTarifa> listar(){
        return logicTarifaService.listarTarifas();
    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public LogicTarifa BuscarById(@PathVariable LogicTarifa tarifa){
        LogicTarifa Btarifa = logicTarifaService.buscarid(tarifa);
        if (Btarifa == null){
            throw new RuntimeException("Tarifa no encontrada-"+tarifa);
        }
        return Btarifa;
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    private ResponseEntity<LogicTarifa> crear(@RequestBody @NotNull LogicTarifa tarifa){
        logicTarifaService.guardar(tarifa);
        return ResponseEntity.ok(tarifa);
    }

    @RequestMapping(value = "/actualizar", method = RequestMethod.PUT)
    public LogicTarifa actulizar(@RequestBody LogicTarifa tarifa) {
        logicTarifaService.guardar(tarifa);
        return tarifa;
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public boolean eliminar(@PathVariable Integer id){
            logicTarifaService.eliminar(id);
            return true;
    }
    }
