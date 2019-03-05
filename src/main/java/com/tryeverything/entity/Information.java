package com.tryeverything.entity;


import java.io.Serializable;


public class Information implements Serializable {
    private Integer informationId;
    private Integer site;
    private Integer rewardType;
    private Integer rewardCount;
    private String rewardContent;
    private Integer decorate;
    private String size;
    private String content;
    private String additionalPaidItem;

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public Integer getSite() {
        return site;
    }

    public void setSite(Integer site) {
        this.site = site;
    }

    public Integer getRewardType() {
        return rewardType;
    }

    public void setRewardType(Integer rewardType) {
        this.rewardType = rewardType;
    }

    public Integer getRewardCount() {
        return rewardCount;
    }

    public void setRewardCount(Integer rewardCount) {
        this.rewardCount = rewardCount;
    }

    public String getRewardContent() {
        return rewardContent;
    }

    public void setRewardContent(String rewardContent) {
        this.rewardContent = rewardContent;
    }

    public Integer getDecorate() {
        return decorate;
    }

    public void setDecorate(Integer decorate) {
        this.decorate = decorate;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAdditionalPaidItem() {
        return additionalPaidItem;
    }

    public void setAdditionalPaidItem(String additionalPaidItem) {
        this.additionalPaidItem = additionalPaidItem;
    }

    @Override
    public String toString() {
        return "Information{" +
                "informationId=" + informationId +
                ", site=" + site +
                ", rewardType=" + rewardType +
                ", rewardCount=" + rewardCount +
                ", rewardContent='" + rewardContent + '\'' +
                ", decorate=" + decorate +
                ", size='" + size + '\'' +
                ", content='" + content + '\'' +
                ", additionalPaidItem='" + additionalPaidItem + '\'' +
                '}';
    }
}
