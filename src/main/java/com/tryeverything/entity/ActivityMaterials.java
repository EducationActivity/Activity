package com.tryeverything.entity;

import java.io.Serializable;

public class ActivityMaterials implements Serializable {
    private Integer id;
    private Integer activityId;
    private Integer materialId;
    private String materialName;
    private Integer materialCount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public Integer getMaterialCount() {
        return materialCount;
    }

    public void setMaterialCount(Integer materialCount) {
        this.materialCount = materialCount;
    }

    @Override
    public String toString() {
        return "ActivityMaterials{" +
                "id=" + id +
                ", activityId=" + activityId +
                ", materialId=" + materialId +
                ", materialName='" + materialName + '\'' +
                ", materialCount=" + materialCount +
                '}';
    }
}
