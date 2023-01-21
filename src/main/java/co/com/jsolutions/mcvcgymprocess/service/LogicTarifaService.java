package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;

import java.util.List;

public interface LogicTarifaService {
    public List<LogicTarifa> listarTarifas();
    public void guardar (LogicTarifa tarifa);
    public void eliminar (Integer id);
    public LogicTarifa buscarid(LogicTarifa tarifa);
}
