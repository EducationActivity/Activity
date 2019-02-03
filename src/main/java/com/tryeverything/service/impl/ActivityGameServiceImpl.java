package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityGameDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityGameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityGameServiceImpl extends AbstractBaseService implements ActivityGameService {
    @Resource
    private ActivityGameDAO activityGameDAO;

    @Autowired
    public void setActivityGameDAO(ActivityGameDAO activityGameDAO) {
        super.setBaseDAO(activityGameDAO);
        this.activityGameDAO = activityGameDAO;
    }
}
