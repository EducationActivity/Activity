package com.tryeverything.controller;

import com.tryeverything.service.ActivityGameService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("activityGame")
public class ActivityGameController {
    @Resource
    ActivityGameService activityGameService;

    @RequestMapping("listPage")
    public String listPage(){
        return "activity_game";
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Object> listById(Integer franchiseeId){
        return activityGameService.listAll();
    }
}
