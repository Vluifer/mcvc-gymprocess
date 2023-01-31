package co.com.jsolutions.mcvcgymprocess.controller.http.requests;

import jakarta.validation.constraints.Max;
import org.jetbrains.annotations.NotNull;

public class LogicServicioRequest {

    @NotNull("nombre no puede ser nulo")
    @Max(value = 255, message="Nombre no puede exceder de un tamaño de 255")
    private String nombre;

    @NotNull("Servicio no puede ser nulo")
    @Max(4)
    @Max(value = 4, message="Tipo servicio no puede exceder de un tamaño de 4")
    private Integer tipo_servicio;

    @Max(value = 500)
    private String descripcion;
}
