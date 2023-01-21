package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.LogicPlanServicio;
import co.com.jsolutions.mcvcgymprocess.repositories.LogicPlanServicioRep;
import co.com.jsolutions.mcvcgymprocess.service.LogicPlanServicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicPlanServicioServiceImpl implements LogicPlanServicioService {
@Autowired
private LogicPlanServicioRep logicPlanServicioRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicPlanServicio> listarPlanesServicios() {
        return (List<LogicPlanServicio>)logicPlanServicioRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicPlanServicio planesServicio) {
        logicPlanServicioRep.save(planesServicio);
    }

    @Override
    @Transactional
    public void eliminar(LogicPlanServicio planesServicio) {
        logicPlanServicioRep.delete(planesServicio);
    }

    @Override
    public LogicPlanServicio buscarid(LogicPlanServicio planesServicio) {
        return logicPlanServicioRep.findById(planesServicio.getId()).orElse(null);
    }
}
