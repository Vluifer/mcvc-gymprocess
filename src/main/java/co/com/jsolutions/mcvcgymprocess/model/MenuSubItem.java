package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "menu_subitems")
public class MenuSubItem implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private Integer id;
    @ManyToOne
    private MenuItem id_item;
    private String abreviado;
    private String descripcion;
    private String cabecera;
    private String ruta;
    private String depende;
    private String acceso;
    private int inactivo;
    private Date create_at;
    private Date update_at;
}
