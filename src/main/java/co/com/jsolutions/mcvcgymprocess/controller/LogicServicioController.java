package co.com.jsolutions.mcvcgymprocess.controller;

import co.com.jsolutions.mcvcgymprocess.model.LogicServicio;
import co.com.jsolutions.mcvcgymprocess.model.LogicTipoServicio;
import co.com.jsolutions.mcvcgymprocess.service.LogicServicioService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(path = "/servicio/")
@CrossOrigin(origins = "http://localhost")
public class LogicServicioController {

    @Autowired
    private LogicServicioService logicServicioService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ResponseEntity<?> listar(){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            List<LogicServicio> listarServicios = logicServicioService.listarServicios();
            if(!listarServicios.isEmpty()){
                map.put("status",1);
                map.put("data",listarServicios);
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
            LogicServicio listarServico = logicServicioService.buscarid(id);
            map.put("status",1);
            map.put("message",listarServico);
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.clear();
            map.put("status", 0);
            map.put("message","Tipo Servicio no Encontrado");
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    public ResponseEntity<?> crear(@RequestBody @NotNull LogicServicio Servicio){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            logicServicioService.guardar(Servicio);
            map.put("status",1);
            map.put("message","Servicio Guardado");
            return new ResponseEntity<>(map,HttpStatus.CREATED);
        }catch (Exception e){
            map.clear();
            map.put("status", 0);
            map.put("message","Servicio No Guardado " +e.getMessage());
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/actualizar/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> actulizar(@PathVariable Integer id,@RequestBody LogicServicio ServicioUdt) {
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicServicio Servicio = logicServicioService.buscarid(id);
            Servicio.setNombre(ServicioUdt.getNombre());
            Servicio.setDescripcion(ServicioUdt.getDescripcion());
            logicServicioService.guardar(Servicio);
            map.put("status",1);
            map.put("message","Servicio Actualizado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("status",0);
            map.put("message","Servicio no Actualizado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> eliminar(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicServicio servicio = logicServicioService.buscarid(id);
            logicServicioService.eliminar(servicio);
            map.put("Status",1);
            map.put("Message","Servicio Eliminado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("Status",0);
            map.put("Message","Servicion no pudo ser Eliminado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }
}
