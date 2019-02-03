package com.tryeverything.service.impl;

import com.tryeverything.dao.ClassInformationDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ClassInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ClassInformationServiceImpl extends AbstractBaseService implements ClassInformationService {
    @Resource
    private ClassInformationDAO classInformationDAO;

    @Autowired
    public void setClassInformationDAO(ClassInformationDAO classInformationDAO) {
        super.setBaseDAO(classInformationDAO);
        this.classInformationDAO = classInformationDAO;
    }
}
