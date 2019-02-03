package com.tryeverything.entity;

import java.io.Serializable;

public class StaffingTask implements Serializable {
    private Integer id;
    private Integer staffingId;
    private Integer taskIdl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStaffingId() {
        return staffingId;
    }

    public void setStaffingId(Integer staffingId) {
        this.staffingId = staffingId;
    }

    public Integer getTaskIdl() {
        return taskIdl;
    }

    public void setTaskIdl(Integer taskIdl) {
        this.taskIdl = taskIdl;
    }

    @Override
    public String toString() {
        return "StaffingTask{" +
                "id=" + id +
                ", staffingId=" + staffingId +
                ", taskIdl=" + taskIdl +
                '}';
    }
}
