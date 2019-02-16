package com.tryeverything.controller;

import com.tryeverything.entity.GameOperation;
import com.tryeverything.entity.Operation;
import com.tryeverything.service.GameOperationService;
import com.tryeverything.service.OperationService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("operation")
public class OperationController {
    @Resource
    private OperationService operationService;

    @Resource
    private GameOperationService gameOperationService;

    @RequestMapping("listPage")
    public String listPage(Integer gameId, Map<String,Object> map){
        map.put("gameId",gameId);
        return "operation";
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Object> listById(Integer gameId){
        return operationService.listById(gameId);
    }


    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Operation operation,Integer gameId){
        ControllerStatusVO statusVO = null;
        try{
            operationService.save(operation);
            GameOperation gameOperation = new GameOperation();
            gameOperation.setGameId(gameId);
            gameOperation.setOperationId(operation.getOperationId());
            gameOperationService.save(gameOperation);

            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Operation operation){
        ControllerStatusVO statusVO = null;
        try{
            operationService.update(operation);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_UPDATE_SUCCESS);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer operationId){
        ControllerStatusVO statusVO = null;
        try{
            operationService.removeById(operationId);
            gameOperationService.removeById(operationId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.OPERATION_REMOVE_FAIL);
        }
        return statusVO;
    }
}
