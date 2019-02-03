package com.tryeverything.entity;

import java.io.Serializable;

public class KindergartenSchedule implements Serializable {
    private Integer id;
    private Integer kindergartenId;
    private Integer scheduleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getKindergartenId() {
        return kindergartenId;
    }

    public void setKindergartenId(Integer kindergartenId) {
        this.kindergartenId = kindergartenId;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    @Override
    public String toString() {
        return "KindergartenSchedule{" +
                "id=" + id +
                ", kindergartenId=" + kindergartenId +
                ", scheduleId=" + scheduleId +
                '}';
    }
}
