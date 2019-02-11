package com.tryeverything.service.impl;

import com.tryeverything.dao.PermissionDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

@Service
public class PermissionServiceImpl extends AbstractBaseService implements PermissionService {
    @Resource
    private PermissionDAO permissionDAO;

    @Autowired
    public void setPermissionDAO(PermissionDAO permissionDAO) {
        super.setBaseDAO(permissionDAO);
        this.permissionDAO = permissionDAO;
    }

    @Override
    public Set<String> queryPermission(String phone) {
        return permissionDAO.queryPermission(phone);
    }
}
