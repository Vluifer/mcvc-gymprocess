package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.LogicTipoServicio;
import co.com.jsolutions.mcvcgymprocess.repositories.LogicTipoServicioRep;
import co.com.jsolutions.mcvcgymprocess.service.LogicTipoServicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicTipoServicioServiceImpl implements LogicTipoServicioService {
    @Autowired
    private LogicTipoServicioRep logicTipoServicioRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicTipoServicio> listarTiposServicios() {
        return (List<LogicTipoServicio>) logicTipoServicioRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicTipoServicio tipoServicio) {
        logicTipoServicioRep.save(tipoServicio);
    }

    @Override
    public void eliminar(LogicTipoServicio tipoServicio) {
        logicTipoServicioRep.delete(tipoServicio);
    }

    @Override
    public LogicTipoServicio buscarid(Integer id) {
        return logicTipoServicioRep.findById(id).get();
    }
}
