package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.MenuItem;
import co.com.jsolutions.mcvcgymprocess.repositories.MenuItemRep;
import co.com.jsolutions.mcvcgymprocess.service.MenuItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class MenuItemServiceImpl implements MenuItemService {
    @Autowired
    private MenuItemRep menuItemRep;
    @Override
    @Transactional(readOnly = true)
    public List<MenuItem> listarMenusItems() {
        return (List<MenuItem>) menuItemRep.findAll() ;
    }

    @Override
    @Transactional
    public void guardar(MenuItem menuItem) {
        menuItemRep.save(menuItem);
    }

    @Override
    @Transactional
    public void eliminar(MenuItem menuItem) {
        menuItemRep.delete(menuItem);
    }

    @Override
    @Transactional(readOnly = true)
    public MenuItem buscarid(MenuItem menuItem) {
        return menuItemRep.findById(menuItem.getId()).orElse(null);
    }
}
