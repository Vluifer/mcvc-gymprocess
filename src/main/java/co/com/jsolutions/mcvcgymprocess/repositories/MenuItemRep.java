package co.com.jsolutions.mcvcgymprocess.repositories;

import co.com.jsolutions.mcvcgymprocess.model.MenuItem;
import org.springframework.data.jpa.repository.JpaRepository;


public interface MenuItemRep extends JpaRepository<MenuItem,Integer> {
}
