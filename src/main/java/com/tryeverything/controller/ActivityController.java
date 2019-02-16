package com.tryeverything.controller;

import com.tryeverything.entity.Activity;
import com.tryeverything.entity.Kindergarten;
import com.tryeverything.service.ActivityService;
import com.tryeverything.service.GameService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("activity")
public class ActivityController {
    @Resource
    private ActivityService activityService;

    @Resource
    private GameService gameService;

    @RequestMapping("schedule")
    public String schedule(Map<String,Object> map, Integer activityId){
        map.put("activityId",activityId);
        return "schedule";
    }

    @RequestMapping("listPage")
    public String listPage(){
        return "activity";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return activityService.listAll();
    }


    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Activity activity){
        ControllerStatusVO statusVO = null;
        try{
            activityService.save(activity);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Activity activity){
        ControllerStatusVO statusVO = null;
        try{
            activityService.update(activity);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer activityId){
        ControllerStatusVO statusVO = null;
        try{
            activityService.removeById(activityId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_REMOVE_FAIL);
        }
        return statusVO;
    }
}
