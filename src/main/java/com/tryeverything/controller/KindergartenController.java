package com.tryeverything.controller;


import com.tryeverything.entity.*;
import com.tryeverything.entity.ActivitySchedule;
import com.tryeverything.service.*;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.DateUtil;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("kindergarten")
public class KindergartenController {
    @Resource
    private KindergartenService kindergartenService;

    @Resource
    private ActivityService activityService;

    @Resource
    private ScheduleService scheduleService;

    @Resource
    private ActivityScheduleService activityScheduleService;

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Kindergarten kindergarten){
        ControllerStatusVO statusVO = null;
        try{
            kindergartenService.save(kindergarten);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("addSchedule")
    @ResponseBody
    public ControllerStatusVO addSchedule(Integer activityId){
        ControllerStatusVO statusVO = null;
        try{
            Schedule schedule = new Schedule();
            Activity activity = (Activity) activityService.getById(activityId);
//            ActivityConfirmation activityConfirmation = (ActivityConfirmation) activityConfirmationService.getById(activityId);
//            Kindergarten kindergarten = (Kindergarten) kindergartenService.getById(activityConfirmation.getKindergartenId());
            ActivitySchedule activitySchedule = new ActivitySchedule();
            activitySchedule.setActivityId(activityId);
            Map<String,Integer> map = new LinkedHashMap<>();
            map.put("明确活动时间",1);
            map.put("创建活动群",1);
            map.put("方案确定时间",3);
            map.put("查看场地/接洽时间",1);
            map.put("教师培训",1);
            map.put("会前会/内部培训",1);
            map.put("出物料清单",3);
            map.put("物料清单审核",3);
            map.put("物料采购时间",4);
            map.put("物料准备时间",3);
            map.put("物料审核时间",4);
            map.put("游园卡",3);
            map.put("邀请函",3);
            map.put("门卡",3);
            map.put("确定工作人员数",7);
            map.put("商家和艺人确定",7);
            map.put("人员培训",7);
            map.put("场地布置",7);
            map.put("物料回收",8);
            for(Map.Entry<String, Integer> m:map.entrySet()){
                schedule.setActivitySchedule(m.getKey());
                Calendar rightNow = Calendar.getInstance();
                if(activity.getCreateDate() != null){
                    rightNow.setTime(activity.getCreateDate());
                    rightNow.add(Calendar.DAY_OF_YEAR,m.getValue());//日期加固定的天数
                    SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
                    String time = format.format(rightNow.getTime());
                    JSONObject a = new DateUtil().request(time);
                    System.out.println("日期："+time+"状态："+a.getString("data"));
//                    if(a.getString("data").equals("0")){
                    Date date = rightNow.getTime();
                    schedule.setReadinessTime(date);
//                    }
//                    else {
//                        rightNow.add(Calendar.DAY_OF_YEAR,m.getValue()+1);//日期加10天
//                        SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd");
//                        String time1 = format1.format(rightNow.getTime());
//                        JSONObject a1 = new DateUtil().request(time1);
//                        if(a1.getString("data").equals(0)){
//                            date = rightNow.getTime();
//                        }else {
//                            rightNow.add(Calendar.DAY_OF_YEAR,m.getValue()+2);//日期加10天
//                            SimpleDateFormat format2 = new SimpleDateFormat("yyyyMMdd");
//                            String time2 = format2.format(rightNow.getTime());
//                            JSONObject a2 = new DateUtil().request(time2);
//                            date = rightNow.getTime();
//                        }
//                        Date date = rightNow.getTime();
                    }
                scheduleService.save(schedule);
                activitySchedule.setScheduleId(schedule.getScheduleId());
                activityScheduleService.save(activitySchedule);
                }
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEDULE_ADD_FAIL);
        }
        return statusVO;
    }


    @RequestMapping("schedule")
    public String schedule(Map<String,Object>  map, Integer kindergartenId){
        Kindergarten kindergarten = (Kindergarten)kindergartenService.getById(kindergartenId);
        map.put("kindergarten",kindergarten);
        return "schedule";
    }

    @RequestMapping("schedule1")
    public String schedule1(Map<String,Object>  map, Integer kindergartenId){
        Kindergarten kindergarten = (Kindergarten)kindergartenService.getById(kindergartenId);
        map.put("kindergarten",kindergarten);
        return "schedule1";
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Kindergarten kindergarten){
        ControllerStatusVO statusVO = null;
        try{
            kindergartenService.update(kindergarten);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_UPDATE_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer kindergartenId){
        ControllerStatusVO statusVO = null;
        try{
            kindergartenService.removeById(kindergartenId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_REMOVE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("listPage")
    public String listPage(){
        return "kindergarten";
    }

    @RequestMapping("franchiseeListPage")
    public String franchiseeListPage(){
        return "franchisee_kindergarten";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return kindergartenService.listAll();
    }
}
