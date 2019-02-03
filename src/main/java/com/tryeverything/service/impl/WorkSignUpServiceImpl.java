package com.tryeverything.service.impl;

import com.tryeverything.dao.WorkerSignUpDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class WorkSignUpServiceImpl extends AbstractBaseService implements WorkerService {
    @Resource
    private WorkerSignUpDAO workerSignUpDAO;

    @Autowired
    public void setWorkerSignUpDAO(WorkerSignUpDAO workerSignUpDAO) {
        super.setBaseDAO(workerSignUpDAO);
        this.workerSignUpDAO = workerSignUpDAO;
    }


}
