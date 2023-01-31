package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicPlan;

import java.util.List;

public interface LogicPlanService {
    public List<LogicPlan> listarPlanes();
    public LogicPlan guardar (LogicPlan plan);
    public void eliminar (LogicPlan plan);
    public LogicPlan buscarid(Integer id);
}
