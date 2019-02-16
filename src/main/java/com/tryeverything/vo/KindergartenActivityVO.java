package com.tryeverything.vo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class KindergartenActivityVO implements Serializable {
    private Integer activityId;
    private String activityName;
    private Integer themeId;
    private String activityLeader;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date activityTime;
    private String activityAddress;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate;
    private String remark;

    private String kindergartenName;
    private String linkman;
    private String phone;
    private String kindergartenAddress;
    private String fees;
    private String teachingFeatures;

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public String getActivityLeader() {
        return activityLeader;
    }

    public void setActivityLeader(String activityLeader) {
        this.activityLeader = activityLeader;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    public String getTeachingFeatures() {
        return teachingFeatures;
    }

    public void setTeachingFeatures(String teachingFeatures) {
        this.teachingFeatures = teachingFeatures;
    }

    @Override
    public String toString() {
        return "KindergartenActivityVO{" +
                "activityId=" + activityId +
                ", activityName='" + activityName + '\'' +
                ", themeId=" + themeId +
                ", activityLeader='" + activityLeader + '\'' +
                ", activityTime=" + activityTime +
                ", activityAddress='" + activityAddress + '\'' +
                ", createDate=" + createDate +
                ", remark='" + remark + '\'' +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", linkman='" + linkman + '\'' +
                ", phone='" + phone + '\'' +
                ", kindergartenAddress='" + kindergartenAddress + '\'' +
                ", fees='" + fees + '\'' +
                ", teachingFeatures='" + teachingFeatures + '\'' +
                '}';
    }
}
