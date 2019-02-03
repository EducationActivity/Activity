package com.tryeverything.entity;

import java.io.Serializable;

public class InformationType implements Serializable {
    private Integer id;
    private Integer classId;
    private Integer classInformationId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Integer getClassInformationId() {
        return classInformationId;
    }

    public void setClassInformationId(Integer classInformationId) {
        this.classInformationId = classInformationId;
    }

    @Override
    public String toString() {
        return "t_information_type{" +
                "id=" + id +
                ", classId=" + classId +
                ", classInformationId=" + classInformationId +
                '}';
    }
}
