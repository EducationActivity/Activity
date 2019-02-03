package com.tryeverything.controller;

import com.tryeverything.entity.Information;
import com.tryeverything.service.InformationService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("information")
public class InformationController {
    @Resource
    private InformationService informationService;

    @RequestMapping("listPage")
    public String listPage(){
        return "information";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return informationService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Information information){
        ControllerStatusVO statusVO = null;
        try{
            informationService.save(information);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Information information){
        ControllerStatusVO statusVO = null;
        try{
            informationService.update(information);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Information information,Integer informationId){
        ControllerStatusVO statusVO = null;
        try{
            informationService.removeById(informationId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.INFORMATION_REMOVE_FAIL);
        }
        return statusVO;
    }

}
