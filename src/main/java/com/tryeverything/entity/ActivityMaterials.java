package com.tryeverything.entity;

import java.io.Serializable;

public class ActivityMaterials implements Serializable {
    private Integer id;
    private Integer activityId;
    private Integer materialId;
    private String projectName;
    private String materialName;
    private Integer materialCount;
    private String unit;

    public ActivityMaterials() {

    }

    public ActivityMaterials(String projectName,String materialName,Integer materialCount,String unit) {
        this.projectName = projectName;
        this.materialName = materialName;
        this.materialCount = materialCount;
        this.unit = unit;
    }

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

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
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


    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    @Override
    public String toString() {
        return "ActivityMaterials{" +
                "id=" + id +
                ", activityId=" + activityId +
                ", materialId=" + materialId +
                ", projectName='" + projectName + '\'' +
                ", materialName='" + materialName + '\'' +
                ", materialCount=" + materialCount +
                ", unit='" + unit + '\'' +
                '}';
    }
}
