package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityPhotosDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityPhotosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityPhotosServiceImpl extends AbstractBaseService implements ActivityPhotosService {
    @Resource
    private ActivityPhotosDAO activityPhotosDAO;

    @Autowired
    public void setActivityPhotosDAO(ActivityPhotosDAO activityPhotosDAO) {
        super.setBaseDAO(activityPhotosDAO);
        this.activityPhotosDAO = activityPhotosDAO;
    }
}
