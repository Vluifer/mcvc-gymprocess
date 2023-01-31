package co.com.jsolutions.mcvcgymprocess.controller;


import co.com.jsolutions.mcvcgymprocess.model.LogicTipoServicio;
import co.com.jsolutions.mcvcgymprocess.service.LogicTipoServicioService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(path = "/tipo-servicio/")
@CrossOrigin(origins = "http://localhost")
public class LogicTipoServicioController {

    @Autowired
    private LogicTipoServicioService logicTipoServicioService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ResponseEntity<?> listar(){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            List<LogicTipoServicio> listarTipoServicio = logicTipoServicioService.listarTiposServicios();
            if(!listarTipoServicio.isEmpty()){
                map.put("status",1);
                map.put("data",listarTipoServicio);
                return new ResponseEntity<>(map, HttpStatus.OK);
            }else{
                map.clear();
                map.put("status",0);
                map.put("message","Tipo Servicio no Encontrados");
                return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
            }
        }catch (Exception e){
            map.put("status",0);
            map.put("message","Error en tiempo de ejecución");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/listarI/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> BuscarById(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTipoServicio tipoServicio = logicTipoServicioService.buscarid(id);
            map.put("status",1);
            map.put("message",tipoServicio);
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.clear();
            map.put("status", 0);
            map.put("message","Tipo Servicio no Encontrado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    public ResponseEntity<?> crear(@RequestBody @NotNull LogicTipoServicio tipoServicio){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            logicTipoServicioService.guardar(tipoServicio);
            map.put("status",1);
            map.put("message","Tipo Servicio Guardado");
            return new ResponseEntity<>(map,HttpStatus.CREATED);
        }catch (Exception e){
            map.clear();
            map.put("status", 0);
            map.put("message","Tipo Servicio No Guardado " +e.getMessage());
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/actualizar/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> actulizar(@PathVariable Integer id,@RequestBody LogicTipoServicio tipoServicioUdt) {
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTipoServicio tipoServicio = logicTipoServicioService.buscarid(id);
            tipoServicio.setNombre(tipoServicioUdt.getNombre());
            tipoServicio.setDescripcion(tipoServicioUdt.getDescripcion());
            logicTipoServicioService.guardar(tipoServicio);
            map.put("status",1);
            map.put("message","Tipo Servicio de Actualizado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("status",0);
            map.put("message","Tipo Servicio  no Actualizado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> eliminar(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTipoServicio tipoServicio = logicTipoServicioService.buscarid(id);
            logicTipoServicioService.eliminar(tipoServicio);
            map.put("Status",1);
            map.put("Message","Tipo Servicio Eliminado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("Status",0);
            map.put("Message","Tipo Servicion no pudo ser Eliminado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }
}
