package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicServicio;

import java.util.List;

public interface LogicServicioService {
    public List<LogicServicio> listarServicios();
    public void guardar (LogicServicio servicio);
    public void eliminar (LogicServicio servicio);
    public LogicServicio buscarid(Integer id);
}
