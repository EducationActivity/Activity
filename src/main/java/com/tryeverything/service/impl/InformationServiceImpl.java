package com.tryeverything.service.impl;

import com.tryeverything.dao.InformationDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class InformationServiceImpl extends AbstractBaseService implements InformationService {
    @Resource
    private InformationDAO informationDAO;

    @Autowired
    public void setInformationDAO(InformationDAO informationDAO) {
        super.setBaseDAO(informationDAO);
        this.informationDAO = informationDAO;
    }
}
