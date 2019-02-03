package com.tryeverything.service.impl;

import com.tryeverything.dao.FranchiseeDAO;
import com.tryeverything.entity.Franchisee;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.FranchiseeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FranchiseeServiceImpl extends AbstractBaseService implements FranchiseeService {
    @Resource
    private FranchiseeDAO franchiseeDAO;

    @Autowired
    public void setFranchiseeDAO(FranchiseeDAO franchiseeDAO) {
        super.setBaseDAO(franchiseeDAO);
        this.franchiseeDAO = franchiseeDAO;
    }

    @Override
    public Franchisee findByFranchisee(Franchisee franchisee) {
        return franchiseeDAO.findByFranchisee(franchisee);
    }

    @Override
    public void audit(Franchisee franchisee) {
        franchiseeDAO.audit(franchisee);
    }

    @Override
    public void updatePwd(Franchisee franchisee) {
        franchiseeDAO.updatePwd(franchisee);
    }

    @Override
    public List<Franchisee> listById(String franchiseeId) {
        return franchiseeDAO.listById(franchiseeId);
    }



}
