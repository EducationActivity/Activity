package com.tryeverything.dao;

import com.tryeverything.entity.Franchisee;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FranchiseeDAO extends BaseDAO {
    Franchisee findByFranchisee(Franchisee franchisee);
    void audit(Franchisee franchisee);
    void updatePwd(Franchisee franchisee);
    List<Franchisee> listById(String franchiseeId);

}
