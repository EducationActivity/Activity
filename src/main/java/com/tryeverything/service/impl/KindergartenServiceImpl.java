package com.tryeverything.service.impl;

import com.tryeverything.dao.KindergartenDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.KindergartenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class KindergartenServiceImpl extends AbstractBaseService implements KindergartenService {
    @Resource
    private KindergartenDAO kindergartenDAO;

    @Autowired
    public void setKindergartenDAO(KindergartenDAO kindergartenDAO){
        super.setBaseDAO(kindergartenDAO);
        this.kindergartenDAO = kindergartenDAO;
    }


}
