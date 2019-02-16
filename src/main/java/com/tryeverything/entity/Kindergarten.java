package com.tryeverything.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Kindergarten implements Serializable {
    private Integer kindergartenId;
    private String kindergartenName;
    private String linkman;
    private String phone;
    private Integer natureOfKindergarten;
    private String teachingFeatures;
    private String kindergartenAddress;
    private String fees;
    private String remark;

    public Integer getKindergartenId() {
        return kindergartenId;
    }

    public void setKindergartenId(Integer kindergartenId) {
        this.kindergartenId = kindergartenId;
    }

    public String getKindergartenName() {
        return kindergartenName;
    }

    public void setKindergartenName(String kindergartenName) {
        this.kindergartenName = kindergartenName;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getNatureOfKindergarten() {
        return natureOfKindergarten;
    }

    public void setNatureOfKindergarten(Integer natureOfKindergarten) {
        this.natureOfKindergarten = natureOfKindergarten;
    }

    public String getTeachingFeatures() {
        return teachingFeatures;
    }

    public void setTeachingFeatures(String teachingFeatures) {
        this.teachingFeatures = teachingFeatures;
    }

    public String getKindergartenAddress() {
        return kindergartenAddress;
    }

    public void setKindergartenAddress(String kindergartenAddress) {
        this.kindergartenAddress = kindergartenAddress;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Kindergarten{" +
                "kindergartenId=" + kindergartenId +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", linkman='" + linkman + '\'' +
                ", phone='" + phone + '\'' +
                ", natureOfKindergarten=" + natureOfKindergarten +
                ", teachingFeatures='" + teachingFeatures + '\'' +
                ", kindergartenAddress='" + kindergartenAddress + '\'' +
                ", fees='" + fees + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
