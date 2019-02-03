package com.tryeverything.controller;

import com.tryeverything.entity.Parents;
import com.tryeverything.service.ParentsService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("parents")
public class ParentsController {
    @Resource
    private ParentsService parentsService;

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Parents parents){
        ControllerStatusVO statusVO = null;
        try{
            parentsService.update(parents);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PARENTS_UPDATE_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PARENTS_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer parentsId){
        ControllerStatusVO statusVO = null;
        try{
            parentsService.removeById(parentsId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PARENTS_REMOVE_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.PARENTS_REMOVE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("listPage")
    public String listPage(){
        return "parents";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return parentsService.listAll();
    }
}
