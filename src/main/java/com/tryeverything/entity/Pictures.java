package com.tryeverything.entity;

import java.io.Serializable;

public class Pictures implements Serializable {
    private Integer id;
    private Integer activityPhotosId;
    private String picture;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getActivityPhotosId() {
        return activityPhotosId;
    }

    public void setActivityPhotosId(Integer activityPhotosId) {
        this.activityPhotosId = activityPhotosId;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Pictures{" +
                "id=" + id +
                ", activityPhotosId=" + activityPhotosId +
                ", picture='" + picture + '\'' +
                '}';
    }
}
