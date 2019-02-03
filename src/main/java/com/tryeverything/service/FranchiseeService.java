package com.tryeverything.service;

import com.tryeverything.entity.Franchisee;

import java.util.List;

public interface FranchiseeService extends BaseService {
    public Franchisee findByFranchisee(Franchisee franchisee);
    void audit(Franchisee franchisee);
    void updatePwd(Franchisee franchisee);
    List<Franchisee> listById(String franchiseeId);
}
