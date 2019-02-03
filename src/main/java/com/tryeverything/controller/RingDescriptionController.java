package com.tryeverything.controller;

import com.tryeverything.entity.RingDescription;
import com.tryeverything.service.RingDescriptionService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("ringDescription")
public class RingDescriptionController {
    @Resource
    private RingDescriptionService ringDescriptionService;

    @RequestMapping("listPage")
    public String listPage(){
        return "ring_description";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return ringDescriptionService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(RingDescription ringDescription){
        ControllerStatusVO statusVO = null;
        try{
            ringDescriptionService.save(ringDescription);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(RingDescription ringDescription){
        ControllerStatusVO statusVO = null;
        try{
            ringDescriptionService.update(ringDescription);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer ringDescriptionId){
        ControllerStatusVO statusVO = null;
        try{
            ringDescriptionService.removeById(ringDescriptionId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.RING_DESCRIPTION_REMOVE_FAIL);
        }
        return statusVO;
    }

}
