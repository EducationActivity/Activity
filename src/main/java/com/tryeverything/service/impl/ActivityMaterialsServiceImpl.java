package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityMaterialsDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityMaterialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityMaterialsServiceImpl extends AbstractBaseService implements ActivityMaterialsService {
    @Resource
    private ActivityMaterialsDAO activityMaterialsDAO;

    @Autowired
    public void setActivityMaterialsDAO(ActivityMaterialsDAO activityMaterialsDAO) {
        super.setBaseDAO(activityMaterialsDAO);
        this.activityMaterialsDAO = activityMaterialsDAO;
    }

    @Override
    public void removeList(Integer id) {
        activityMaterialsDAO.removeList(id);
    }
}
