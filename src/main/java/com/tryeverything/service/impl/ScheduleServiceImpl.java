package com.tryeverything.service.impl;

import com.tryeverything.dao.ScheduleDAO;
import com.tryeverything.entity.Pictures;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ScheduleServiceImpl extends AbstractBaseService implements ScheduleService {
    @Resource
    private ScheduleDAO scheduleDAO;

    @Autowired
    public void setScheduleDAO(ScheduleDAO scheduleDAO) {
        super.setBaseDAO(scheduleDAO);
        this.scheduleDAO = scheduleDAO;
    }

    @Override
    public void deletedById(Integer id) {
        scheduleDAO.removeById(id);
    }
}
