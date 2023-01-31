package co.com.jsolutions.mcvcgymprocess.controller.http.requests;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import org.jetbrains.annotations.NotNull;

import lombok.Data;

@Data
public class LogicTipoPlanRequest {
    @NotNull("nombre no puede ser nulo")
    @Max(value = 255, message="Nombre no puede exceder de un tamaño de 255")
    private String nombre;
    @Max(value = 500)
    private  String descripcion;
}
