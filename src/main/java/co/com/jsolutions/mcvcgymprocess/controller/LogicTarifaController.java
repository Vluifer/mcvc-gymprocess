package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.service.LogicTarifaService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping(path = "/tarifas/")
@CrossOrigin(origins = "http://localhost")

public class LogicTarifaController {

    @Autowired
    private LogicTarifaService logicTarifaService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ResponseEntity<?> listar(){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            List<LogicTarifa>listaTarifas = logicTarifaService.listarTarifas();
            if (!listaTarifas.isEmpty()){
                map.put("Status",1);
                map.put("Data",listaTarifas);
                return new ResponseEntity<>(map, HttpStatus.OK);
            }else {
                map.clear();
                map.put("Status", 0);
                map.put("Message","Tarifas no encontradas");
                return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
            }
        }catch (Exception e){
            map.clear();
            map.put("Status", 0);
            map.put("Message","Error en tiempo de ejecución");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }

    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> BuscarById(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTarifa tarifa = logicTarifaService.buscarid(id);
            map.put("Status",1);
            map.put("Data",tarifa);
            return new ResponseEntity<>(map, HttpStatus.OK);
        }catch(Exception e){
            map.clear();
            map.put("Status", 0);
            map.put("Message","Tarifa no encontrada");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    private ResponseEntity<?> crear(@RequestBody @NotNull LogicTarifa tarifa){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
       try {
           logicTarifaService.guardar(tarifa);
           map.put("Status",1);
           map.put("Message","Tarifa guardada");
           return new ResponseEntity<>(map,HttpStatus.CREATED);
       }catch (Exception e) {
           map.put("Status", 0);
           map.put("Message", "Tarifa no Guardada");
           return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
       }
    }

    @RequestMapping(value = "/actualizar/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> actulizar(@PathVariable Integer id, @RequestBody LogicTarifa tarifaUdt) {
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTarifa tarifa = logicTarifaService.buscarid(id);
            tarifa.setPrecio(tarifaUdt.getPrecio());
            tarifa.setFecha_inicial(tarifaUdt.getFecha_inicial());
            tarifa.setFecha_final(tarifaUdt.getFecha_final());
            tarifa.setDescuento(tarifaUdt.getDescuento());
            tarifa.setDescripcion(tarifaUdt.getDescripcion());
            logicTarifaService.guardar(tarifa);
            map.put("Status",1);
            map.put("Data",logicTarifaService.buscarid(id));
            return new ResponseEntity<>(map, HttpStatus.OK);
        }catch (Exception e){
            map.clear();
            map.put("Status", 0);
            map.put("Message","Tarifa pudo ser actualizada");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }

    }
    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> eliminar(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
            try {
                LogicTarifa tarifa = logicTarifaService.buscarid(id);
                logicTarifaService.eliminar(tarifa);
                map.put("Status", 1);
                map.put("Message","Tarifa Eliminada");
                return new ResponseEntity<>(map, HttpStatus.OK);
            }catch (Exception e){
                map.clear();
                map.put("Status", 0);
                map.put("Message","La tarifa no pudo ser Eliminada");
                return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
            }
    }
    }
