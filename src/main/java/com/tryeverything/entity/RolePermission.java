package com.tryeverything.entity;

import java.io.Serializable;

public class RolePermission implements Serializable {
    private Integer id;
    private Integer permissionId;
    private Integer roleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    @Override
    public String toString() {
        return "RolePermission{" +
                "id=" + id +
                ", permissionId=" + permissionId +
                ", roleId=" + roleId +
                '}';
    }
}
