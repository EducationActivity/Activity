package com.tryeverything.service.impl;

import com.tryeverything.dao.UserRoleDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserRoleServiceImpl extends AbstractBaseService implements UserRoleService {
    @Resource
    private UserRoleDAO userRoleDAO;

    @Autowired
    public void setUserRoleDAO(UserRoleDAO userRoleDAO) {
        super.setBaseDAO(userRoleDAO);
        this.userRoleDAO = userRoleDAO;
    }
}
