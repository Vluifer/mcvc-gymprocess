package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;


import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "logic_tarifas ")
public class LogicTarifa implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @Id
    private Integer id;
    private Integer precio;
    private Date fecha_inicial;
    private Date fecha_final;
    private Integer descuento;
    private String descripcion;
    private Integer inactivo;
    private Date create_at;
    private Integer usuario_registro;
    private Date update_at;
    private Integer usuario_actualizacion;
    private Date deleted_at;
    private Integer usuario_eliminacion;

}
