package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.LogicPlan;
import co.com.jsolutions.mcvcgymprocess.repositories.LogicPlanRep;
import co.com.jsolutions.mcvcgymprocess.service.LogicPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicPlanServiceImpl implements LogicPlanService {
    @Autowired
    private LogicPlanRep logicPlanRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicPlan> listarPlanes() {
        return (List<LogicPlan>)logicPlanRep.findAll();
    }

    @Override
    @Transactional
    public LogicPlan guardar(LogicPlan plan) {
        return logicPlanRep.save(plan);
    }

    @Override
    @Transactional
    public void eliminar(LogicPlan plan) {
        logicPlanRep.delete(plan);
    }

    @Override
    public LogicPlan buscarid(Integer id) {
        return logicPlanRep.findById(id).get();
    }
}
