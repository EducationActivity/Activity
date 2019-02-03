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
    private String remark;
    private String activityLeader;
    private Integer themeId;
    private String activityName;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date activityTime;
    private String activityAddress;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate;


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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getActivityLeader() {
        return activityLeader;
    }

    public void setActivityLeader(String activityLeader) {
        this.activityLeader = activityLeader;
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public Date getActivityTime() {
        return activityTime;
    }

    public void setActivityTime(Date activityTime) {
        this.activityTime = activityTime;
    }

    public String getActivityAddress() {
        return activityAddress;
    }

    public void setActivityAddress(String activityAddress) {
        this.activityAddress = activityAddress;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
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
                ", remark='" + remark + '\'' +
                ", activityLeader='" + activityLeader + '\'' +
                ", themeId='" + themeId + '\'' +
                ", activityName='" + activityName + '\'' +
                ", activityTime=" + activityTime +
                ", activityAddress='" + activityAddress + '\'' +
                ", createDate=" + createDate +
                '}';
    }
}
