package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.model.LogicMembresia;
import co.com.jsolutions.mcvcgymprocess.model.LogicMembresia;
import co.com.jsolutions.mcvcgymprocess.model.LogicMembresia;
import co.com.jsolutions.mcvcgymprocess.service.LogicMembresiaService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/membresia/")
@CrossOrigin(origins = "http://localhost")
public class LogicMembresiaController {

    @Autowired
    private LogicMembresiaService logicMembresiaService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<LogicMembresia> listar() {
        return logicMembresiaService.listarMebresias();
    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public LogicMembresia BuscarById(@PathVariable LogicMembresia membresia) {
        LogicMembresia Bmembresia = logicMembresiaService.buscarid(membresia);
        if (Bmembresia == null) {
            throw new RuntimeException("Tarifa no encontrada-" + membresia);
        }
        return Bmembresia;
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    public LogicMembresia crear(@RequestBody @NotNull LogicMembresia membresia) {
        logicMembresiaService.guardar(membresia);
        return membresia;
    }

    @RequestMapping(value = "/actualizar", method = RequestMethod.PUT)
    public LogicMembresia actulizar(@RequestBody LogicMembresia membresia) {
        logicMembresiaService.guardar(membresia);
        return membresia;
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public boolean eliminar(@PathVariable Integer id) {
        logicMembresiaService.eliminar(id);
        return true;
    }
}