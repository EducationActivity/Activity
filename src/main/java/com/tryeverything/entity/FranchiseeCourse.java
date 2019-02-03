package com.tryeverything.entity;

import java.io.Serializable;

public class FranchiseeCourse implements Serializable {
    private Integer id;
    private String franchiseeId;
    private Integer courseId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFranchiseeId() {
        return franchiseeId;
    }

    public void setFranchiseeId(String franchiseeId) {
        this.franchiseeId = franchiseeId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    @Override
    public String toString() {
        return "FranchiseeCourse{" +
                "id=" + id +
                ", franchiseeId=" + franchiseeId +
                ", courseId=" + courseId +
                '}';
    }

}
