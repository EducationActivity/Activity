package com.tryeverything.service.impl;

import com.tryeverything.dao.SchemeDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.SchemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SchemeServiceImpl extends AbstractBaseService implements SchemeService {
    @Resource
    private SchemeDAO schemeDAO;

    @Autowired
    public void setSchemeDAO(SchemeDAO schemeDAO) {
        super.setBaseDAO(schemeDAO);
        this.schemeDAO = schemeDAO;
    }
}
