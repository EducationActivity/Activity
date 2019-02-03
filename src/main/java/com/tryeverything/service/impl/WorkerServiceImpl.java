package com.tryeverything.service.impl;

import com.tryeverything.dao.WorkerDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class WorkerServiceImpl extends AbstractBaseService implements WorkerService {
    @Resource
    private WorkerDAO workerDAO;

    @Autowired
    public void setWorkerDAO(WorkerDAO workerDAO) {
        super.setBaseDAO(workerDAO);
        this.workerDAO = workerDAO;
    }
}
