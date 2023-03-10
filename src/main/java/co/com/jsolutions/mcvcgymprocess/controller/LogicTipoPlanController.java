package co.com.jsolutions.mcvcgymprocess.controller;


import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;
import co.com.jsolutions.mcvcgymprocess.service.LogicTipoPlanService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping(path = "/tipo-plan/")
@CrossOrigin(origins = "http://localhost")
public class LogicTipoPlanController {

    @Autowired
    private LogicTipoPlanService logicTipoPlanService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ResponseEntity<?> listar(){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            List<LogicTipoPlan> listarTipoPlanes = logicTipoPlanService.listarTiposPlanes();
            if(!listarTipoPlanes.isEmpty()){
                map.put("status",1);
                map.put("data",listarTipoPlanes);
                return new ResponseEntity<>(map,HttpStatus.OK);
            }else{
                map.clear();
                map.put("status",0);
                map.put("message","Planes no Encontrados");
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
          LogicTipoPlan tipoPlan = logicTipoPlanService.buscarid(id);
          map.put("status",1);
          map.put("message",tipoPlan);
          return new ResponseEntity<>(map,HttpStatus.OK);
      }catch (Exception e){
          map.clear();
          map.put("status", 0);
          map.put("message","Tipo de Plan no Encontrado");
          return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
      }
    }

    @RequestMapping(value = "/crear", method = RequestMethod.POST)
    public ResponseEntity<?> crear(@RequestBody @NotNull LogicTipoPlan tipoPlan){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            logicTipoPlanService.guardar(tipoPlan);
            map.put("status",1);
            map.put("message","Tipo de Plan Guardado");
            return new ResponseEntity<>(map,HttpStatus.CREATED);
        }catch (Exception e){
            map.clear();
            map.put("status", 0);
            map.put("message","tipo de Plan no Guardado " +e.getMessage());
            return new ResponseEntity<>(map, HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/actualizar/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> actulizar(@PathVariable Integer id,@RequestBody LogicTipoPlan tipoPlanUdt) {
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTipoPlan tipoPlan = logicTipoPlanService.buscarid(id);
            tipoPlan.setNombre(tipoPlanUdt.getNombre());
            tipoPlan.setDescripcion(tipoPlanUdt.getDescripcion());
            logicTipoPlanService.guardar(tipoPlan);
            map.put("status",1);
            map.put("message","Tipo de Plan Actualizado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("status",0);
            map.put("message","Tipo de Plan no Actualizado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> eliminar(@PathVariable Integer id){
        Map<String,Object> map = new LinkedHashMap<String,Object>();
        try {
            LogicTipoPlan tipoPlan = logicTipoPlanService.buscarid(id);
            logicTipoPlanService.eliminar(tipoPlan);
            map.put("Status",1);
            map.put("Message","Tipo de plan Eliminado");
            return new ResponseEntity<>(map,HttpStatus.OK);
        }catch (Exception e){
            map.put("Status",0);
            map.put("Message","Tipo de plan no pudo ser Eliminado");
            return new ResponseEntity<>(map,HttpStatus.NOT_FOUND);
        }
    }
}
