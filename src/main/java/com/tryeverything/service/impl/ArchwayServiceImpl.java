package com.tryeverything.service.impl;

import com.tryeverything.dao.ArchwayDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ArchwayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ArchwayServiceImpl extends AbstractBaseService implements ArchwayService {
    @Resource
    private ArchwayDAO archwayDAO;

    @Autowired
    public void setArchwayDAO(ArchwayDAO archwayDAO) {
        super.setBaseDAO(archwayDAO);
        this.archwayDAO = archwayDAO;
    }
}
