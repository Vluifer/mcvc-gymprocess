package co.com.jsolutions.mcvcgymprocess.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Data;
import jakarta.persistence.*;

@Data
@Entity
@Table(name = "auth_usuarios")

public class AuthUsuario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    private Integer id;
    @OneToMany
    private List<AuthTipoId> tipo_id = new ArrayList<>();
    @Column(unique = true)
    private String identificacion;
    private String nombre1;
    private String nombre2;
    private String apellido1;
    private String apellido2;
    @Column(unique = true)
    private String email;
    private String telefono;
    private String ciudad;
    private String pais;
    private String region;
    private String direccion;
    @OneToMany
    private List<AuhtPerfil>  id_perfil = new ArrayList<>();
    private String usuario;
    private String password;
    private String acceso;
    private int inactivo;
    private Date create_at;
    private int usuario_registro;
    private Date update_at;
    private int usuario_actualizacion;
    private Date delete_at;
    private int usuario_eliminacion;
}
