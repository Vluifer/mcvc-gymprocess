package co.com.jsolutions.mcvcgymprocess.service;

import co.com.jsolutions.mcvcgymprocess.model.MenuSubItem;

import java.util.List;

public interface MenuSubItemService {
    public List<MenuSubItem> listarMenuSubItems();
    public void guardar (MenuSubItem menuSubItem);
    public void eliminar (MenuSubItem menuSubItem);
    public MenuSubItem buscarid(MenuSubItem menuSubItem);
}
