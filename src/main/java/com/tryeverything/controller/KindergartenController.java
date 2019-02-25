package com.tryeverything.controller;


import com.tryeverything.entity.*;
import com.tryeverything.service.*;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping("kindergarten")
public class KindergartenController {
    @Resource
    private KindergartenService kindergartenService;

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
