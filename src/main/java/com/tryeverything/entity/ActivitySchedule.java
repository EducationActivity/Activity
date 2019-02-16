package com.tryeverything.entity;

import java.io.Serializable;

public class ActivitySchedule implements Serializable {
    private Integer id;
    private Integer activityId;
    private Integer scheduleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }


    @Override
    public String toString() {
        return "ActivitySchedule{" +
                "id=" + id +
                ", activityId=" + activityId +
                ", scheduleId=" + scheduleId +
                '}';
    }
}
