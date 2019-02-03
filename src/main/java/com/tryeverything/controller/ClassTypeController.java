package com.tryeverything.controller;

import com.tryeverything.entity.ClassType;
import com.tryeverything.entity.InformationType;
import com.tryeverything.service.ClassTypeService;
import com.tryeverything.service.InformationTypeService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("classType")
public class ClassTypeController {
    @Resource
    private ClassTypeService classTypeService;

    @Resource
    private InformationTypeService informationTypeService;

    @RequestMapping("listPage")
    public String listPage(Integer classInformationId, Map<String,Object> map){
        map.put("classInformationId",classInformationId);
        return "class_type";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return classTypeService.listAll();
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Object> listById(Integer classInformationId){
        return classTypeService.listById(classInformationId);
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(ClassType classType,Integer classInformationId){
        ControllerStatusVO statusVO = null;
        try{
            classTypeService.save(classType);
            InformationType it = new InformationType();
            it.setClassId(classType.getClassId());
            it.setClassInformationId(classInformationId);
            informationTypeService.save(it);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(ClassType classType){
        ControllerStatusVO statusVO = null;
        try{
            classTypeService.update(classType);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(ClassType classType,Integer classId){
        ControllerStatusVO statusVO = null;
        try{
            classTypeService.removeById(classId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_TYPE_REMOVE_FAIL);
        }
        return statusVO;
    }

}
