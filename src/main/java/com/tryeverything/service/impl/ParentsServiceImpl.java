package com.tryeverything.service.impl;

import com.tryeverything.dao.ParentsDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ParentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ParentsServiceImpl extends AbstractBaseService implements ParentsService {
    @Resource
    private ParentsDAO parentsDAO;

    @Autowired
    public void setParentsDAO(ParentsDAO parentsDAO) {
        super.setBaseDAO(parentsDAO);
        this.parentsDAO = parentsDAO;
    }
}
