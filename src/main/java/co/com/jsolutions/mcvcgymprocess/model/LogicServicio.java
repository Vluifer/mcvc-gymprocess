package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "logic_servicios ")

public class LogicServicio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private Integer id;
    private String nombre;
    @OneToMany
    private List<LogicTipoServicio> tipo_servicio = new ArrayList<>();
    private String Descripcion;
    private String acceso;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date delete_at;
    private int usuario_eliminacion;
}
