package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicPlanServicio;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface LogicPlanServicioService {

    public List<LogicPlanServicio> listarPlanesServicios();
    public void guardar (LogicPlanServicio planesServicio);
    public void eliminar (LogicPlanServicio planesServicio);
    public LogicPlanServicio buscarid(LogicPlanServicio planesServicio);
}
