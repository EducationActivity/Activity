package com.tryeverything.controller;

import com.tryeverything.entity.Properties;
import com.tryeverything.service.PropertiesService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("properties")
public class PropertiesController {
    @Resource
    private PropertiesService propertiesService;

    @RequestMapping("listPage")
    public String listPage(){
        return "properties";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return propertiesService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Properties properties){
        ControllerStatusVO statusVO = null;
        try{
            propertiesService.save(properties);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Properties properties){
        ControllerStatusVO statusVO = null;
        try{
            propertiesService.update(properties);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer gamePropertiesId){
        ControllerStatusVO statusVO = null;
        try{
            propertiesService.removeById(gamePropertiesId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PROPERTIES_REMOVE_FAIL);
        }
        return statusVO;
    }

}
