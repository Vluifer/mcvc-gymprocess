package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "logic_tipo_planes ")
public class LogicTipoPlan implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @Id
    private Integer id;
    private String nombre;
    @OneToMany
    private List<LogicPlan> id_planes = new ArrayList<>();;
    private String descripcion;
    private Integer inactivo;
    private Date create_at;
    private Integer usuario_registro;
    private Date update_at;
    private Integer usuario_actualizacion;
    private Date deleted_at;
    private Integer usuario_eliminacion;

}
