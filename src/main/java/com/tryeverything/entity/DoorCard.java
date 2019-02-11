package com.tryeverything.entity;

import java.io.Serializable;

public class DoorCard implements Serializable {
    private Integer doorCardId;
    private String doorCardName;
    private String theDoorCard;


    public Integer getDoorCardId() {
        return doorCardId;
    }

    public void setDoorCardId(Integer doorCardId) {
        this.doorCardId = doorCardId;
    }

    public String getDoorCardName() {
        return doorCardName;
    }

    public void setDoorCardName(String doorCardName) {
        this.doorCardName = doorCardName;
    }

    public String getTheDoorCard() {
        return theDoorCard;
    }

    public void setTheDoorCard(String theDoorCard) {
        this.theDoorCard = theDoorCard;
    }

    @Override
    public String toString() {
        return "DoorCard{" +
                "doorCardId=" + doorCardId +
                ", doorCardName='" + doorCardName + '\'' +
                ", theDoorCard='" + theDoorCard + '\'' +
                '}';
    }
}
