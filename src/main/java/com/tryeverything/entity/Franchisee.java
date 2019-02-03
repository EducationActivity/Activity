package com.tryeverything.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Franchisee implements Serializable {
    private String franchiseeId;
    private String loginName;
    private String password;
    private String franchiseeName;
    private String phone;
    private String email;
    private String locality;
    private Integer type;
    private Integer status;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate;

    public String getFranchiseeId() {
        return franchiseeId;
    }

    public void setFranchiseeId(String franchiseeId) {
        this.franchiseeId = franchiseeId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFranchiseeName() {
        return franchiseeName;
    }

    public void setFranchiseeName(String franchiseeName) {
        this.franchiseeName = franchiseeName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Franchisee{" +
                "franchiseeId=" + franchiseeId +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", franchiseeName='" + franchiseeName + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", locality='" + locality + '\'' +
                ", type=" + type +
                ", status=" + status +
                ", createDate=" + createDate +
                '}';
    }
}
