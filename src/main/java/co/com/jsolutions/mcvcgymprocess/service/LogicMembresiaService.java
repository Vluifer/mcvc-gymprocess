package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.LogicMembresia;

import java.util.List;
import java.util.Optional;

public interface LogicMembresiaService {
    public List<LogicMembresia> listarMebresias();
    public void guardar (LogicMembresia membresia);
    public void eliminar (Integer id);
    public LogicMembresia buscarid(LogicMembresia membresia);
}
