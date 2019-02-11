package com.tryeverything.service;


import java.util.Set;

public interface PermissionService extends BaseService {
    public Set<String> queryPermission(String phone);
}
