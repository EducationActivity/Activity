package com.tryeverything.entity;

import java.io.Serializable;

public class ActivityGame implements Serializable {
    private Integer id;
    private Integer activityId;
    private Integer gameId;

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

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }


    @Override
    public String toString() {
        return "ActivityGame{" +
                "id=" + id +
                ", activityId=" + activityId +
                ", gameId=" + gameId +
                '}';
    }
}
