package com.tryeverything.dao;

import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface PermissionDAO extends BaseDAO {
    public Set<String> queryPermission(String phone);
}
