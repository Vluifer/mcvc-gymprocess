package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.databind.util.JSONPObject;
import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "logic_tarifas ")
public class LogicTarifa implements Serializable {
    private static final long serialVersionUID = 1L;
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    @Id
    private Integer id;
    private int precio;
    private Date fecha_inicial;
    private Date fecha_final;
    private int descuento;
    private String descripcion;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date deleted_at;
    private int usuario_eliminacion;

}
