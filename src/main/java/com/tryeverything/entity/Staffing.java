package com.tryeverything.entity;

import java.io.Serializable;
import java.util.Date;

public class Staffing implements Serializable {
    private Integer staffingId;
    private String activityAddress;
    private Date rehearsalTime;

    public Integer getStaffingId() {
        return staffingId;
    }

    public void setStaffingId(Integer staffingId) {
        this.staffingId = staffingId;
    }

    public String getActivityAddress() {
        return activityAddress;
    }

    public void setActivityAddress(String activityAddress) {
        this.activityAddress = activityAddress;
    }

    public Date getRehearsalTime() {
        return rehearsalTime;
    }

    public void setRehearsalTime(Date rehearsalTime) {
        this.rehearsalTime = rehearsalTime;
    }

    @Override
    public String toString() {
        return "Staffing{" +
                "staffingId=" + staffingId +
                ", activityAddress='" + activityAddress + '\'' +
                ", rehearsalTime=" + rehearsalTime +
                '}';
    }
}
