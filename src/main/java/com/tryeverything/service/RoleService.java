package com.tryeverything.service;

import java.util.Set;

public interface RoleService extends BaseService {
    public Set<String> queryUserRole(String phone);
}
