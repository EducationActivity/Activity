package com.tryeverything.service.impl;

import com.tryeverything.dao.InformationTypeDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.InformationTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class InformationTypeServiceImpl extends AbstractBaseService implements InformationTypeService {
    @Resource
    private InformationTypeDAO informationTypeDAO;

    @Autowired
    public void setInformationTypeDAO(InformationTypeDAO informationTypeDAO) {
        super.setBaseDAO(informationTypeDAO);
        this.informationTypeDAO = informationTypeDAO;
    }
}
