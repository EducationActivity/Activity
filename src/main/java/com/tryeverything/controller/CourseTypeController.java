package com.tryeverything.controller;

import com.tryeverything.entity.CourseType;
import com.tryeverything.service.CourseTypeService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("courseType")
public class CourseTypeController {
    @Resource
    private CourseTypeService courseTypeService;

    @RequestMapping("listPage")
    public String listPage(){
        return "course_type";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return courseTypeService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(CourseType courseType){
        ControllerStatusVO statusVO = null;
        try{
            courseTypeService.save(courseType);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(CourseType courseType){
        ControllerStatusVO statusVO = null;
        try{
            courseTypeService.update(courseType);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(CourseType courseType,Integer typeId){
        ControllerStatusVO statusVO = null;
        try{
            courseTypeService.removeById(typeId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_TYPE_REMOVE_FAIL);
        }
        return statusVO;
    }

}
