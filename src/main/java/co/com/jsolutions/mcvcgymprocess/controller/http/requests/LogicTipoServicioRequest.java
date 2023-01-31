package co.com.jsolutions.mcvcgymprocess.controller.http.requests;

import jakarta.validation.constraints.Max;
import org.jetbrains.annotations.NotNull;

public class LogicTipoServicioRequest {
    @NotNull("nombre no puede ser nulo")
    @Max(value = 255, message="Nombre no puede exceder de un tamaño de 255")
    private String nombre;
    @Max(value = 255, message="Nombre no puede exceder de un tamaño de 255")
    private String descripcion;
}
