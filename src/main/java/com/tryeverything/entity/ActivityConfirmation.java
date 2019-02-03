package com.tryeverything.entity;

import java.io.Serializable;


public class ActivityConfirmation implements Serializable {
    private Integer id;
    private String userId;
    private Integer kindergartenId;
    private Integer informationId;
    private Integer classInformationId;
    private Integer ringDescriptionId;
    private Integer activityId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getKindergartenId() {
        return kindergartenId;
    }

    public void setKindergartenId(Integer kindergartenId) {
        this.kindergartenId = kindergartenId;
    }

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public Integer getClassInformationId() {
        return classInformationId;
    }

    public void setClassInformationId(Integer classInformationId) {
        this.classInformationId = classInformationId;
    }

    public Integer getRingDescriptionId() {
        return ringDescriptionId;
    }

    public void setRingDescriptionId(Integer ringDescriptionId) {
        this.ringDescriptionId = ringDescriptionId;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    @Override
    public String toString() {
        return "ActivityConfirmation{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", kindergartenId=" + kindergartenId +
                ", informationId=" + informationId +
                ", classInformationId=" + classInformationId +
                ", ringDescriptionId=" + ringDescriptionId +
                ", activityId=" + activityId +
                '}';
    }
}
