package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.repositories.LogicTarifaRep;
import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.service.LogicTarifaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class LogicTarifaServiceImpl implements LogicTarifaService {

    @Autowired
    private LogicTarifaRep logicTarifaRep;
    @Override
    @Transactional(readOnly = true)
    public List<LogicTarifa> listarTarifas() {
        return (List<LogicTarifa>) logicTarifaRep.findAll();
    }

    @Override
    @Transactional
    public void guardar(LogicTarifa tarifa) {
        logicTarifaRep.save(tarifa);
    }

    @Override
    @Transactional
    public void eliminar(Integer id) {
        logicTarifaRep.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public LogicTarifa buscarid(LogicTarifa tarifa) {
        return logicTarifaRep.findById(tarifa.getId()).orElse(null);
    }
}
