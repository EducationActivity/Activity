package com.tryeverything.service.impl;

import com.tryeverything.dao.ClassTypeDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.ClassTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClassTypeServiceImpl extends AbstractBaseService implements ClassTypeService {
    @Resource
    private ClassTypeDAO classTypeDAO;

    @Autowired
    public void setClassTypeDAO(ClassTypeDAO classTypeDAO) {
        super.setBaseDAO(classTypeDAO);
        this.classTypeDAO = classTypeDAO;
    }

    @Override
    public List<Object> listById(Integer classInformationId) {
        return classTypeDAO.listById(classInformationId);
    }
}
