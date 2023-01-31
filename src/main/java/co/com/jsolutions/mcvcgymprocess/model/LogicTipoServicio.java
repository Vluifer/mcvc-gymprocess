package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "logic_tipo_servicios ")
public class LogicTipoServicio implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Integer id;
    private String nombre;
    private String descripcion;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date deleted_at;
    private int usuario_eliminacion;


}
