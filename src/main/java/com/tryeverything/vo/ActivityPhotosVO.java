package com.tryeverything.vo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class ActivityPhotosVO implements Serializable {
    private Integer activityPhotosId;
    private Integer kindergartenId;
    private Integer activityId;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date time;

    private String activityName;
    private Integer themeId;
    private String activityLeader;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date activityTime;
    private String activityAddress;

    private String kindergartenName;
    private String teachingFeatures;
    private String fees;

    public Integer getActivityPhotosId() {
        return activityPhotosId;
    }

    public void setActivityPhotosId(Integer activityPhotosId) {
        this.activityPhotosId = activityPhotosId;
    }

    public Integer getKindergartenId() {
        return kindergartenId;
    }

    public void setKindergartenId(Integer kindergartenId) {
        this.kindergartenId = kindergartenId;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
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

    public String getKindergartenName() {
        return kindergartenName;
    }

    public void setKindergartenName(String kindergartenName) {
        this.kindergartenName = kindergartenName;
    }

    public String getTeachingFeatures() {
        return teachingFeatures;
    }

    public void setTeachingFeatures(String teachingFeatures) {
        this.teachingFeatures = teachingFeatures;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }



    @Override
    public String toString() {
        return "ActivityPhotosVO{" +
                "activityPhotosId=" + activityPhotosId +
                ", kindergartenId=" + kindergartenId +
                ", activityId=" + activityId +
                ", time=" + time +
                ", activityName='" + activityName + '\'' +
                ", themeId=" + themeId +
                ", activityLeader='" + activityLeader + '\'' +
                ", activityTime=" + activityTime +
                ", activityAddress='" + activityAddress + '\'' +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", teachingFeatures='" + teachingFeatures + '\'' +
                ", fees='" + fees + '\'' +
                '}';
    }
}
