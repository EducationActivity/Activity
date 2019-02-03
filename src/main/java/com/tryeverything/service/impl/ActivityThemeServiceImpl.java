package com.tryeverything.service.impl;

import com.tryeverything.dao.ActivityThemeDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ActivityThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ActivityThemeServiceImpl extends AbstractBaseService implements ActivityThemeService {
    @Resource
    private ActivityThemeDAO activityThemeDAO;

    @Autowired
    public void setActivityThemeDAO(ActivityThemeDAO activityThemeDAO) {
        super.setBaseDAO(activityThemeDAO);
        this.activityThemeDAO = activityThemeDAO;
    }
}
