package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "menu_items")
public class MenuItem implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private Integer id;
    private String modulo_categoria;
    private String modulo_nombre;
    private String icono;
    private String ruta;
    private String acceso;
    private int inactivo;
    private Date create_at;
    private Date update_at;


}
