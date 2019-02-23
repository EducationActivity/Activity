package com.tryeverything.service.impl;

import com.tryeverything.dao.RoleDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.RoleService;
//import javafx.scene.effect.SepiaTone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Set;

@Service
public class RoleServiceImpl extends AbstractBaseService implements RoleService {
    @Resource
    private RoleDAO roleDAO;

    @Autowired
    public void setRoleDAO(RoleDAO roleDAO) {
        super.setBaseDAO(roleDAO);
        this.roleDAO = roleDAO;
    }

    @Override
    public Set<String> queryUserRole(String phone) {
        return roleDAO.queryUserRole(phone);
    }
}
