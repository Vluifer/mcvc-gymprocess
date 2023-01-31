package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;
import co.com.jsolutions.mcvcgymprocess.repositories.LogicTipoPlanRep;
import co.com.jsolutions.mcvcgymprocess.service.LogicTipoPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicTipoPlanServiceImpl implements LogicTipoPlanService {
    @Autowired
    private LogicTipoPlanRep logicTipoPlanRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicTipoPlan> listarTiposPlanes() {
        return (List<LogicTipoPlan>) logicTipoPlanRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicTipoPlan tipoPlan) {
        logicTipoPlanRep.save(tipoPlan);
    }

    @Override
    @Transactional
    public void eliminar(LogicTipoPlan tipoPlan) {
        logicTipoPlanRep.delete(tipoPlan);
    }

    @Override
    @Transactional(readOnly = true)
    public LogicTipoPlan buscarid(Integer id) {
        return logicTipoPlanRep.findById(id).get();
    }
}
