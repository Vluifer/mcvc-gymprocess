package co.com.jsolutions.mcvcgymprocess.mappers;

import co.com.jsolutions.mcvcgymprocess.controller.http.requests.LogicPlanRequest;
import co.com.jsolutions.mcvcgymprocess.model.LogicPlan;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface LogicPlanRequestToLogicPlan {
    LogicPlanRequestToLogicPlan INSTANCE = Mappers.getMapper(LogicPlanRequestToLogicPlan.class);
    LogicPlan logicPlanRequestToLogicPlan(LogicPlanRequest logicPlanRequest);
}
