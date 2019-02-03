package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityServiceImpl extends AbstractBaseService implements ActivityService {
    @Resource
    private ActivityDAO activityDAO;

    @Autowired
    public void setActivityDAO(ActivityDAO activityDAO) {
        super.setBaseDAO(activityDAO);
        this.activityDAO = activityDAO;
    }

}
