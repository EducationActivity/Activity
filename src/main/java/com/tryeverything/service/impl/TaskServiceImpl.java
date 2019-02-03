package com.tryeverything.service.impl;

import com.tryeverything.dao.TaskDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TaskServiceImpl extends AbstractBaseService implements TaskService {
    @Resource
    private TaskDAO taskDAO;

    @Autowired
    public void setTaskDAO(TaskDAO taskDAO) {
        super.setBaseDAO(taskDAO);
        this.taskDAO = taskDAO;
    }
}
