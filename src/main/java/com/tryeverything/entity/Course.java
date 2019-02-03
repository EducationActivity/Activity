package com.tryeverything.entity;

import java.io.Serializable;
import java.util.Date;

public class Course implements Serializable {
    private Integer courseId;
    private String courseName;
    private String institutions;
    private String venue;
    private String mobile;
    private String coursePicture;
    private String coursePrice;
    private Integer totalHours;
    private String courseDetails;
    private Date createDate;
    private Integer typeId;

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getInstitutions() {
        return institutions;
    }

    public void setInstitutions(String institutions) {
        this.institutions = institutions;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCoursePicture() {
        return coursePicture;
    }

    public Integer getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(Integer totalHours) {
        this.totalHours = totalHours;
    }

    public void setCoursePicture(String coursePicture) {
        this.coursePicture = coursePicture;
    }

    public String getCoursePrice() {
        return coursePrice;
    }

    public void setCoursePrice(String coursePrice) {
        this.coursePrice = coursePrice;
    }

    public String getCourseDetails() {
        return courseDetails;
    }

    public void setCourseDetails(String courseDetails) {
        this.courseDetails = courseDetails;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", institutions='" + institutions + '\'' +
                ", venue='" + venue + '\'' +
                ", mobile='" + mobile + '\'' +
                ", coursePicture='" + coursePicture + '\'' +
                ", coursePrice='" + coursePrice + '\'' +
                ", totalHours=" + totalHours +
                ", courseDetails='" + courseDetails + '\'' +
                ", createDate=" + createDate +
                ", typeId=" + typeId +
                '}';
    }
}
