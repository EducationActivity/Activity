package com.tryeverything.service.impl;

import com.tryeverything.dao.SignUpSheetDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.SignUpSheetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SignUpSheetServiceImpl extends AbstractBaseService implements SignUpSheetService {
    @Resource
    private SignUpSheetDAO signUpSheetDAO;

    @Autowired
    public void setSignUpSheetDAO(SignUpSheetDAO signUpSheetDAO) {
        super.setBaseDAO(signUpSheetDAO);
        this.signUpSheetDAO = signUpSheetDAO;
    }
}
