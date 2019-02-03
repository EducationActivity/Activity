package com.tryeverything.service.impl;

import com.tryeverything.dao.PropertiesDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.PropertiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PropertiesServiceImpl extends AbstractBaseService implements PropertiesService {
    @Resource
    private PropertiesDAO propertiesDAO;

    @Autowired
    public void setPropertiesDAO(PropertiesDAO propertiesDAO) {
        super.setBaseDAO(propertiesDAO);
        this.propertiesDAO = propertiesDAO;
    }
}
