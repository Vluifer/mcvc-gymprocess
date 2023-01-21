package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.LogicServicio;
import co.com.jsolutions.mcvcgymprocess.repositories.LogicServicioRep;
import co.com.jsolutions.mcvcgymprocess.service.LogicServicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicServicioServiceImpl implements LogicServicioService {
    @Autowired
    private LogicServicioRep logicServicioRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicServicio> listarServicios() {
        return (List<LogicServicio>) logicServicioRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicServicio servicio) {
        logicServicioRep.save(servicio);
    }

    @Override
    @Transactional
    public void eliminar(LogicServicio servicio) {
        logicServicioRep.delete(servicio);
    }

    @Override
    public LogicServicio buscarid(LogicServicio servicio) {
        return logicServicioRep.findById(servicio.getId()).orElse(null);
    }
}
