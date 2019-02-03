package com.tryeverything.entity;

import java.io.Serializable;

public class ClassType implements Serializable {
    private Integer classId;
    private Integer classInformationId;
    private String classType;
    private Integer quantity;
    private Integer numberOfPeople;

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

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(Integer numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    @Override
    public String toString() {
        return "ClassType{" +
                "classId=" + classId +
                ", classInformationId=" + classInformationId +
                ", classType='" + classType + '\'' +
                ", quantity=" + quantity +
                ", numberOfPeople=" + numberOfPeople +
                '}';
    }
}
