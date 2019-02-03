package com.tryeverything.controller;

import com.tryeverything.entity.KindergartenSchedule;
import com.tryeverything.entity.Schedule;
import com.tryeverything.service.KindergartenScheduleService;
import com.tryeverything.service.ScheduleService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("schedule")
public class ScheduleController {
    @Resource
    private ScheduleService scheduleService;

    @Resource
    private KindergartenScheduleService kindergartenScheduleService;

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Schedule schedule,Integer kindergartenId){
        ControllerStatusVO statusVO = null;
        try{
            scheduleService.save(schedule);
            KindergartenSchedule kindergartenSchedule = new KindergartenSchedule();
            kindergartenSchedule.setScheduleId(schedule.getScheduleId());
            System.out.println(kindergartenId);
            kindergartenSchedule.setKindergartenId(kindergartenId);
            kindergartenSchedule.setScheduleId(schedule.getScheduleId());
            kindergartenScheduleService.save(kindergartenSchedule);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_ADD_FAIL);
        }
        return statusVO;
    }


    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Schedule schedule){
        ControllerStatusVO statusVO = null;
        try{
            scheduleService.update(schedule);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_UPDATE_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer scheduleId){
        ControllerStatusVO statusVO = null;
        try{
            scheduleService.removeById(scheduleId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_REMOVE_FAIL);
        }
        return statusVO;
    }


    @RequestMapping("getById")
    @ResponseBody
    public List<Object> getById(Integer kindergartenId){
        return scheduleService.listById(kindergartenId);
    }

}
