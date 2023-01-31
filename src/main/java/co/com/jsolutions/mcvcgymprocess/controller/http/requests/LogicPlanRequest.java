package co.com.jsolutions.mcvcgymprocess.controller.http.requests;

import co.com.jsolutions.mcvcgymprocess.model.LogicTarifa;
import co.com.jsolutions.mcvcgymprocess.model.LogicTipoPlan;
import jakarta.persistence.JoinColumns;
import jakarta.validation.constraints.Max;
import lombok.Data;
import org.hibernate.annotations.JoinColumnOrFormula;
import org.jetbrains.annotations.NotNull;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
public class LogicPlanRequest {
    @NotNull("nombre no puede ser nulo")
    @Max(value = 255, message="Nombre no puede exceder de un tamaño de 255")
    private String nombre;

    @NotNull("tarifa no puede ser nulo")
    @Max(4)
    @Max(value = 4, message="Nombre no puede exceder de un tamaño de 4")
    private Integer tarifa;



}
