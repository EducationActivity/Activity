package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityScheduleDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityScheduleServiceImpl extends AbstractBaseService implements ActivityScheduleService {

    @Resource
    private ActivityScheduleDAO activityScheduleDAO;

    @Autowired
    public void setActivityScheduleDAO(ActivityScheduleDAO activityScheduleDAO) {
        super.setBaseDAO(activityScheduleDAO);
        this.activityScheduleDAO = activityScheduleDAO;
    }
}
