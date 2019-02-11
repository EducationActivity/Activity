package com.tryeverything.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface RoleDAO extends BaseDAO {
    public Set<String> queryUserRole(String phone);
}
