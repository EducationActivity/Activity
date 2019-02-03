package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityConfirmationDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityConfirmationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityConfirmationServiceImpl extends AbstractBaseService implements ActivityConfirmationService {
    @Resource
    private ActivityConfirmationDAO activityConfirmationDAO;

    @Autowired
    public void setActivityConfirmationDAO(ActivityConfirmationDAO activityConfirmationDAO) {
        super.setBaseDAO(activityConfirmationDAO);
        this.activityConfirmationDAO = activityConfirmationDAO;
    }
}
