package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.repositories.LogicMembresiaRep;
import co.com.jsolutions.mcvcgymprocess.model.LogicMembresia;
import co.com.jsolutions.mcvcgymprocess.service.LogicMembresiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LogicMembresiaServiceImpl implements LogicMembresiaService {
    @Autowired
    private LogicMembresiaRep membresiaRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicMembresia> listarMebresias() {
        return (List<LogicMembresia>) membresiaRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicMembresia membresia) {
        membresiaRep.save(membresia);
    }

    @Override
    @Transactional
    public void eliminar(Integer id) {
        membresiaRep.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public LogicMembresia buscarid(LogicMembresia membresia) {
        return membresiaRep.findById(membresia.getId()).orElse(null);
    }
}
