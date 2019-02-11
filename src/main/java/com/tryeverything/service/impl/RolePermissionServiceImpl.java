package com.tryeverything.service.impl;

import com.tryeverything.dao.RolePermissionDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.RolePermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class RolePermissionServiceImpl extends AbstractBaseService implements RolePermissionService {
    @Resource
    private RolePermissionDAO rolePermissionDAO;

    @Autowired
    public void setRolePermissionDAO(RolePermissionDAO rolePermissionDAO) {
        super.setBaseDAO(rolePermissionDAO);
        this.rolePermissionDAO = rolePermissionDAO;
    }
}
