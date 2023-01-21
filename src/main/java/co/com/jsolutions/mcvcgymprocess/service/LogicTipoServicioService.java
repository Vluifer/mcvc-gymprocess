package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicTipoServicio;

import java.util.List;

public interface LogicTipoServicioService {
    public List<LogicTipoServicio> listarTiposServicios();
    public void guardar (LogicTipoServicio tipoServicio);
    public void eliminar (LogicTipoServicio tipoServicio);
    public LogicTipoServicio buscarid(LogicTipoServicio tipoServicio);
}
