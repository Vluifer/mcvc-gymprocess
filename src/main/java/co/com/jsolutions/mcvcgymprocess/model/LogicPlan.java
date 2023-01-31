package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Data;
import jakarta.persistence.*;
import org.hibernate.annotations.Columns;

@Data
@Entity
@Table(name = "logic_planes ")
public class LogicPlan implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @Id
    private Integer id;
    private String nombre;
    @OneToMany
    private List<LogicTarifa> id_tarifa ;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date deleted_at;
    private int usuario_eliminacion;

}
