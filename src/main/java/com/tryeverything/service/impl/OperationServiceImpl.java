package com.tryeverything.service.impl;

import com.tryeverything.dao.OperationDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.OperationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OperationServiceImpl extends AbstractBaseService implements OperationService {
    @Resource
    private OperationDAO operationDAO;

    @Autowired
    public void setOperationDAO(OperationDAO operationDAO) {
        super.setBaseDAO(operationDAO);
        this.operationDAO = operationDAO;
    }
}
