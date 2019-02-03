package com.tryeverything.entity;

import java.io.Serializable;

public class Figure implements Serializable {
    private Integer figureId;
    private String figureName;
    private String figurePicture;

    public Integer getFigureId() {
        return figureId;
    }

    public void setFigureId(Integer figureId) {
        this.figureId = figureId;
    }

    public String getFigureName() {
        return figureName;
    }

    public void setFigureName(String figureName) {
        this.figureName = figureName;
    }

    public String getFigurePicture() {
        return figurePicture;
    }

    public void setFigurePicture(String figurePicture) {
        this.figurePicture = figurePicture;
    }

    @Override
    public String toString() {
        return "Figure{" +
                "figureId=" + figureId +
                ", figureName='" + figureName + '\'' +
                ", figurePicture='" + figurePicture + '\'' +
                '}';
    }
}
