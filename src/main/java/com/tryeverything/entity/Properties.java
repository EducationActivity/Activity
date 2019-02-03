package com.tryeverything.entity;

import java.io.Serializable;

public class Properties implements Serializable {
    private Integer gamePropertiesId;
    private String gameProperties;
    private String describe;

    public Integer getGamePropertiesId() {
        return gamePropertiesId;
    }

    public void setGamePropertiesId(Integer gamePropertiesId) {
        this.gamePropertiesId = gamePropertiesId;
    }

    public String getGameProperties() {
        return gameProperties;
    }

    public void setGameProperties(String gameProperties) {
        this.gameProperties = gameProperties;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "Properties{" +
                "gamePropertiesId=" + gamePropertiesId +
                ", gameProperties='" + gameProperties + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
