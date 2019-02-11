package com.tryeverything.entity;

import java.io.Serializable;

public class Role implements Serializable {
    private Integer roleId;
    private String remarks;
    private String roleName;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "Role{" +
                "roleId=" + roleId +
                ", remarks='" + remarks + '\'' +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}
