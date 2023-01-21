package co.com.jsolutions.mcvcgymprocess.service.impl;

import co.com.jsolutions.mcvcgymprocess.model.MenuSubItem;
import co.com.jsolutions.mcvcgymprocess.repositories.MenuItemRep;
import co.com.jsolutions.mcvcgymprocess.repositories.MenuSubItemRep;
import co.com.jsolutions.mcvcgymprocess.service.MenuSubItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class MenuSubItemServiceImpl implements MenuSubItemService {
    @Autowired
    private MenuSubItemRep menuSubItemRep;

    @Override
    @Transactional(readOnly = true)
    public List<MenuSubItem> listarMenuSubItems() {
        return (List<MenuSubItem>) menuSubItemRep.findAll() ;
    }

    @Override
    @Transactional
    public void guardar(MenuSubItem menuSubItem) {
        menuSubItemRep.save(menuSubItem);
    }

    @Override
    @Transactional
    public void eliminar(MenuSubItem menuSubItem) {
        menuSubItemRep.delete(menuSubItem);
    }

    @Override
    @Transactional(readOnly = true)
    public MenuSubItem buscarid(MenuSubItem menuSubItem) {
        return menuSubItemRep.findById(menuSubItem.getId()).orElse(null);
    }
}
