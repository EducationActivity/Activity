package com.tryeverything.vo;

import java.io.Serializable;

public class ActivityGameVO implements Serializable {
    private Integer activityId;
    private Integer gameId;

    private Integer informationId;
    private Integer headcount;
    private Integer numberOfContract;

    private String gameName;
    private String storesList;
    private String work;
    private String merchant;

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

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public Integer getHeadcount() {
        return headcount;
    }

    public void setHeadcount(Integer headcount) {
        this.headcount = headcount;
    }

    public Integer getNumberOfContract() {
        return numberOfContract;
    }

    public void setNumberOfContract(Integer numberOfContract) {
        this.numberOfContract = numberOfContract;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getStoresList() {
        return storesList;
    }

    public void setStoresList(String storesList) {
        this.storesList = storesList;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getMerchant() {
        return merchant;
    }

    public void setMerchant(String merchant) {
        this.merchant = merchant;
    }

    @Override
    public String toString() {
        return "ActivityGameVO{" +
                "activityId=" + activityId +
                ", gameId=" + gameId +
                ", informationId=" + informationId +
                ", headcount=" + headcount +
                ", numberOfContract=" + numberOfContract +
                ", gameName='" + gameName + '\'' +
                ", storesList='" + storesList + '\'' +
                ", work='" + work + '\'' +
                ", merchant='" + merchant + '\'' +
                '}';
    }
}
