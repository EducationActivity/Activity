package com.tryeverything.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Activity implements Serializable {
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

    @Override
    public String toString() {
        return "Activity{" +
                "activityId=" + activityId +
                ", activityName='" + activityName + '\'' +
                ", themeId=" + themeId +
                ", activityLeader='" + activityLeader + '\'' +
                ", activityTime=" + activityTime +
                ", activityAddress='" + activityAddress + '\'' +
                ", createDate=" + createDate +
                ", remark='" + remark + '\'' +
                '}';
    }
}
