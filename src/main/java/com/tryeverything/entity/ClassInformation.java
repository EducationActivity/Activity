package com.tryeverything.entity;

import java.io.Serializable;

public class ClassInformation implements Serializable {
    private Integer classInformationId;
    private Integer headcount;
    private Integer numberOfContract;
    private Integer numberOfTeachers;

    public Integer getClassInformationId() {
        return classInformationId;
    }

    public void setClassInformationId(Integer classInformationId) {
        this.classInformationId = classInformationId;
    }


    public Integer getHeadcount() {
        return headcount;
    }

    public void setHeadcount(Integer headcount) {
        this.headcount = headcount;
    }

    public Integer getNumberOfContract() {
        return numberOfContract;
    }

    public void setNumberOfContract(Integer numberOfContract) {
        this.numberOfContract = numberOfContract;
    }

    public Integer getNumberOfTeachers() {
        return numberOfTeachers;
    }

    public void setNumberOfTeachers(Integer numberOfTeachers) {
        this.numberOfTeachers = numberOfTeachers;
    }

    @Override
    public String toString() {
        return "ClassInformation{" +
                "classInformationId=" + classInformationId +
                ", headcount=" + headcount +
                ", numberOfContract=" + numberOfContract +
                ", numberOfTeachers=" + numberOfTeachers +
                '}';
    }
}
