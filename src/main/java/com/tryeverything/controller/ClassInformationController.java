package com.tryeverything.controller;

import com.tryeverything.entity.ClassInformation;
import com.tryeverything.entity.ClassType;
import com.tryeverything.service.ClassInformationService;
import com.tryeverything.service.ClassTypeService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("classInformation")
public class ClassInformationController {
    @Resource
    private ClassInformationService classInformationService;

    @Resource
    private ClassTypeService classTypeService;

    @RequestMapping("listPage")
    public String listPage(){
        return "class_information";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return classInformationService.listAll();
    }



    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(ClassInformation classInformation){
        ControllerStatusVO statusVO = null;
        try{
            classInformationService.save(classInformation);
            ClassType classType = new ClassType();
            Map<String,Integer> map = new LinkedHashMap<>();
            map.put("小班",classInformation.getClassInformationId());
            map.put("中班",classInformation.getClassInformationId());
            map.put("大班",classInformation.getClassInformationId());
            for (Map.Entry<String,Integer> m:map.entrySet()){
                classType.setClassType(m.getKey());
                classType.setClassInformationId(m.getValue());
                classTypeService.save(classType);
            }
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(ClassInformation classInformation){
        ControllerStatusVO statusVO = null;
        try{
            classInformationService.update(classInformation);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(ClassInformation classInformation,Integer classInformationId){
        ControllerStatusVO statusVO = null;
        try{
            classInformationService.removeById(classInformationId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.CLASS_INFORMATION_ADD_FAIL);
        }
        return statusVO;
    }

}
