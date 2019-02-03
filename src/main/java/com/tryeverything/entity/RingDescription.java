package com.tryeverything.entity;

import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public class RingDescription implements Serializable {
    private Integer ringDescriptionId;
    private Integer archwayId;
    private Integer numberOfBalloon;
    private String colorOfBalloon;
    private Integer figureId;

    public Integer getRingDescriptionId() {
        return ringDescriptionId;
    }

    public void setRingDescriptionId(Integer ringDescriptionId) {
        this.ringDescriptionId = ringDescriptionId;
    }

    public Integer getArchwayId() {
        return archwayId;
    }

    public void setArchwayId(Integer archwayId) {
        this.archwayId = archwayId;
    }

    public Integer getNumberOfBalloon() {
        return numberOfBalloon;
    }

    public void setNumberOfBalloon(Integer numberOfBalloon) {
        this.numberOfBalloon = numberOfBalloon;
    }

    public String getColorOfBalloon() {
        return colorOfBalloon;
    }

    public void setColorOfBalloon(String colorOfBalloon) {
        this.colorOfBalloon = colorOfBalloon;
    }

    public Integer getFigureId() {
        return figureId;
    }

    public void setFigureId(Integer figureId) {
        this.figureId = figureId;
    }

    @Override
    public String toString() {
        return "RingDescription{" +
                "ringDescriptionId=" + ringDescriptionId +
                ", archwayId=" + archwayId +
                ", numberOfBalloon=" + numberOfBalloon +
                ", colorOfBalloon='" + colorOfBalloon + '\'' +
                ", figureId=" + figureId +
                '}';
    }
}
