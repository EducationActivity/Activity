package com.tryeverything.service.impl;

import com.tryeverything.dao.MaterialsDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.MaterialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MaterialsServiceImpl extends AbstractBaseService implements MaterialsService {
    @Resource
    private MaterialsDAO materialsDAO;

    @Autowired
    public void setMaterialsDAO(MaterialsDAO materialsDAO) {
        super.setBaseDAO(materialsDAO);
        this.materialsDAO = materialsDAO;
    }
}
