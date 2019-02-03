package com.tryeverything.entity;

import java.io.Serializable;

public class Game implements Serializable {
    private Integer gameId;
    private String gameName;
    private Integer gamePropertiesId;
    private Integer themeId;
    private String gamePurpose;
    private String gameObject;
    private String gamePicture;
    private String numberOfPeople;
    private String playTime;
    private String standard;
    private String storesList;
    private String work;
    private String materialStandard;
    private String linkTheMaterial;
    private String merchant;
    private String playingMethod;
    private String rule;
    private String teacherViedo;
    private String workViedo;

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public Integer getGamePropertiesId() {
        return gamePropertiesId;
    }

    public void setGamePropertiesId(Integer gamePropertiesId) {
        this.gamePropertiesId = gamePropertiesId;
    }

    public String getMerchant() {
        return merchant;
    }

    public void setMerchant(String merchant) {
        this.merchant = merchant;
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule;
    }

    public String getGamePicture() {
        return gamePicture;
    }

    public void setGamePicture(String gamePicture) {
        this.gamePicture = gamePicture;
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public String getGamePurpose() {
        return gamePurpose;
    }

    public void setGamePurpose(String gamePurpose) {
        this.gamePurpose = gamePurpose;
    }

    public String getGameObject() {
        return gameObject;
    }

    public void setGameObject(String gameObject) {
        this.gameObject = gameObject;
    }



    public String getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(String numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public String getPlayTime() {
        return playTime;
    }

    public void setPlayTime(String playTime) {
        this.playTime = playTime;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
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

    public String getMaterialStandard() {
        return materialStandard;
    }

    public void setMaterialStandard(String materialStandard) {
        this.materialStandard = materialStandard;
    }

    public String getLinkTheMaterial() {
        return linkTheMaterial;
    }

    public void setLinkTheMaterial(String linkTheMaterial) {
        this.linkTheMaterial = linkTheMaterial;
    }

    public String getPlayingMethod() {
        return playingMethod;
    }

    public void setPlayingMethod(String playingMethod) {
        this.playingMethod = playingMethod;
    }

    public String getTeacherViedo() {
        return teacherViedo;
    }

    public void setTeacherViedo(String teacherViedo) {
        this.teacherViedo = teacherViedo;
    }

    public String getWorkViedo() {
        return workViedo;
    }

    public void setWorkViedo(String workViedo) {
        this.workViedo = workViedo;
    }

    @Override
    public String toString() {
        return "Game{" +
                "gameId=" + gameId +
                ", gameName='" + gameName + '\'' +
                ", gamePropertiesId=" + gamePropertiesId +
                ", themeId=" + themeId +
                ", gamePurpose='" + gamePurpose + '\'' +
                ", gameObject='" + gameObject + '\'' +
                ", gamePicture='" + gamePicture + '\'' +
                ", numberOfPeople='" + numberOfPeople + '\'' +
                ", playTime='" + playTime + '\'' +
                ", standard='" + standard + '\'' +
                ", storesList='" + storesList + '\'' +
                ", work='" + work + '\'' +
                ", materialStandard='" + materialStandard + '\'' +
                ", linkTheMaterial='" + linkTheMaterial + '\'' +
                ", merchant='" + merchant + '\'' +
                ", playingMethod='" + playingMethod + '\'' +
                ", rule='" + rule + '\'' +
                ", teacherViedo='" + teacherViedo + '\'' +
                ", workViedo='" + workViedo + '\'' +
                '}';
    }
}
