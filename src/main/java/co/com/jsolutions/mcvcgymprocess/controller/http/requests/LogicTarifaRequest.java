package co.com.jsolutions.mcvcgymprocess.controller.http.requests;

import jakarta.validation.constraints.Max;
import org.jetbrains.annotations.NotNull;

import java.util.Date;

public class LogicTarifaRequest {
    @NotNull("Precio no puede ser nulo")
    @Max(6)
    @Max(value = 6, message="Precio no puede exceder de un tamaño de 6")
    private Integer precio;
    @NotNull("Precio no puede ser nulo")
    private Date fecha_inicial;
    @NotNull("Precio no puede ser nulo")
    private Date fecha_final;
    @Max(6)
    @Max(value = 6, message="Precio no puede exceder de un tamaño de 6")
    private Integer descuento;
    @Max(value = 500)
    private String descripcion;
}
