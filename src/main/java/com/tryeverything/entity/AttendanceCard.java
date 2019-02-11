package com.tryeverything.entity;

import java.io.Serializable;

public class AttendanceCard implements Serializable {
    private Integer attendanceCardId;
    private String attendanceCardName;
    private String gardenCardTemplate;

    public Integer getAttendanceCardId() {
        return attendanceCardId;
    }

    public void setAttendanceCardId(Integer attendanceCardId) {
        this.attendanceCardId = attendanceCardId;
    }

    public String getAttendanceCardName() {
        return attendanceCardName;
    }

    public void setAttendanceCardName(String attendanceCardName) {
        this.attendanceCardName = attendanceCardName;
    }

    public String getGardenCardTemplate() {
        return gardenCardTemplate;
    }

    public void setGardenCardTemplate(String gardenCardTemplate) {
        this.gardenCardTemplate = gardenCardTemplate;
    }

    @Override
    public String toString() {
        return "AttendanceCard{" +
                "attendanceCardId=" + attendanceCardId +
                ", attendanceCardName='" + attendanceCardName + '\'' +
                ", gardenCardTemplate='" + gardenCardTemplate + '\'' +
                '}';
    }
}
