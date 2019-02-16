package com.tryeverything.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class ActivityPhotos implements Serializable {
    private Integer activityPhotosId;
    private Integer kindergartenId;
    private Integer activityId;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date time;

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

    @Override
    public String toString() {
        return "ActivityPhotos{" +
                "activityPhotosId=" + activityPhotosId +
                ", kindergartenId=" + kindergartenId +
                ", activityId=" + activityId +
                ", time=" + time +
                '}';
    }
}
