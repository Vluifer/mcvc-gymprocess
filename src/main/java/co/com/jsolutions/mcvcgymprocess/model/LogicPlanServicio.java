package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "logic_planes_servicios")
public class LogicPlanServicio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private Integer id;
    @ManyToOne
    private LogicPlan id_planes;
    @ManyToOne
    private LogicServicio id_servicio;
    private String acceso;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date delete_at;
    private int usuario_eliminacion;
}
