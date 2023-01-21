package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.MenuItem;

import java.util.List;

public interface MenuItemService {
    public List<MenuItem> listarMenusItems();
    public void guardar (MenuItem menuItem);
    public void eliminar (MenuItem menuItem);
    public MenuItem buscarid(MenuItem menuItem);
}
