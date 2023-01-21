package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;

import java.util.List;

public interface LogicTipoPlanService {
    public List<LogicTipoPlan> listarTiposPlanes();
    public void guardar (LogicTipoPlan tipoPlan);
    public void eliminar (Integer id);
    public LogicTipoPlan buscarid(LogicTipoPlan tipoPlan);
}
