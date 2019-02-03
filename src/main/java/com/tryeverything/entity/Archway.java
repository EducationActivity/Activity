package com.tryeverything.entity;

import java.io.Serializable;

public class Archway implements Serializable {
    private Integer archwayId;
    private Integer archwayType;
    private String archwayColor;
    private String archwayShape;
    private String archwayPicture;

    public Integer getArchwayId() {
        return archwayId;
    }

    public void setArchwayId(Integer archwayId) {
        this.archwayId = archwayId;
    }

    public Integer getArchwayType() {
        return archwayType;
    }

    public void setArchwayType(Integer archwayType) {
        this.archwayType = archwayType;
    }

    public String getArchwayColor() {
        return archwayColor;
    }

    public void setArchwayColor(String archwayColor) {
        this.archwayColor = archwayColor;
    }

    public String getArchwayShape() {
        return archwayShape;
    }

    public void setArchwayShape(String archwayShape) {
        this.archwayShape = archwayShape;
    }

    public String getArchwayPicture() {
        return archwayPicture;
    }

    public void setArchwayPicture(String archwayPicture) {
        this.archwayPicture = archwayPicture;
    }

    @Override
    public String toString() {
        return "Archway{" +
                "archwayId=" + archwayId +
                ", archwayType=" + archwayType +
                ", archwayColor='" + archwayColor + '\'' +
                ", archwayShape='" + archwayShape + '\'' +
                ", archwayPicture='" + archwayPicture + '\'' +
                '}';
    }
}
