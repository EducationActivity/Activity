package com.tryeverything.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Schedule implements Serializable {
    private Integer scheduleId;
    private String activitySchedule;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date readinessTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date finishTime;
    private String executor;
    private String content;

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public String getActivitySchedule() {
        return activitySchedule;
    }

    public void setActivitySchedule(String activitySchedule) {
        this.activitySchedule = activitySchedule;
    }

    public Date getReadinessTime() {
        return readinessTime;
    }

    public void setReadinessTime(Date readinessTime) {
        this.readinessTime = readinessTime;
    }

    public Date getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public String getExecutor() {
        return executor;
    }

    public void setExecutor(String executor) {
        this.executor = executor;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "scheduleId=" + scheduleId +
                ", activitySchedule='" + activitySchedule + '\'' +
                ", readinessTime=" + readinessTime +
                ", finishTime=" + finishTime +
                ", executor='" + executor + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
