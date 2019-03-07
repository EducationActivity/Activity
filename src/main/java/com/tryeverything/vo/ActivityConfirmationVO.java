package com.tryeverything.vo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class ActivityConfirmationVO implements Serializable {
    private Integer id;
    private Integer activityId;
    private String activityName;
    private Integer themeId;
    private String activityLeader;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date activityTime;
    private String activityAddress;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createDate;
    private String remark;

    private Integer kindergartenId;
    private String kindergartenName;
    private String linkman;
    private String phone;
    private Integer natureOfKindergarten;
    private String teachingFeatures;
    private String kindergartenAddress;
    private String fees;

    private Integer informationId;
    private Integer site;
    private Integer rewardType;
    private Integer rewardCount;
    private String rewardContent;
    private Integer decorate;
    private String size;
    private String content;
    private String additionalPaidItem;

    private Integer classInformationId;
    private Integer headcount;
    private Integer numberOfContract;
    private Integer numberOfTeachers;

    private Integer ringDescriptionId;
    private Integer archwayId;
    private Integer numberOfBalloon;
    private String colorOfBalloon;
    private Integer figureId;

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

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public String getActivityLeader() {
        return activityLeader;
    }

    public void setActivityLeader(String activityLeader) {
        this.activityLeader = activityLeader;
    }

    public Date getActivityTime() {
        return activityTime;
    }

    public void setActivityTime(Date activityTime) {
        this.activityTime = activityTime;
    }

    public String getActivityAddress() {
        return activityAddress;
    }

    public void setActivityAddress(String activityAddress) {
        this.activityAddress = activityAddress;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getKindergartenId() {
        return kindergartenId;
    }

    public void setKindergartenId(Integer kindergartenId) {
        this.kindergartenId = kindergartenId;
    }

    public Integer getClassInformationId() {
        return classInformationId;
    }

    public void setClassInformationId(Integer classInformationId) {
        this.classInformationId = classInformationId;
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

    public Integer getNumberOfTeachers() {
        return numberOfTeachers;
    }

    public void setNumberOfTeachers(Integer numberOfTeachers) {
        this.numberOfTeachers = numberOfTeachers;
    }

    public String getKindergartenName() {
        return kindergartenName;
    }

    public void setKindergartenName(String kindergartenName) {
        this.kindergartenName = kindergartenName;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getNatureOfKindergarten() {
        return natureOfKindergarten;
    }

    public void setNatureOfKindergarten(Integer natureOfKindergarten) {
        this.natureOfKindergarten = natureOfKindergarten;
    }

    public String getTeachingFeatures() {
        return teachingFeatures;
    }

    public void setTeachingFeatures(String teachingFeatures) {
        this.teachingFeatures = teachingFeatures;
    }

    public String getKindergartenAddress() {
        return kindergartenAddress;
    }

    public void setKindergartenAddress(String kindergartenAddress) {
        this.kindergartenAddress = kindergartenAddress;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

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
        return "ActivityConfirmationVO{" +
                "id=" + id +
                ", activityId=" + activityId +
                ", activityName='" + activityName + '\'' +
                ", themeId=" + themeId +
                ", activityLeader='" + activityLeader + '\'' +
                ", activityTime=" + activityTime +
                ", activityAddress='" + activityAddress + '\'' +
                ", createDate=" + createDate +
                ", remark='" + remark + '\'' +
                ", kindergartenId=" + kindergartenId +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", linkman='" + linkman + '\'' +
                ", phone='" + phone + '\'' +
                ", natureOfKindergarten=" + natureOfKindergarten +
                ", teachingFeatures='" + teachingFeatures + '\'' +
                ", kindergartenAddress='" + kindergartenAddress + '\'' +
                ", fees='" + fees + '\'' +
                ", informationId=" + informationId +
                ", site=" + site +
                ", rewardType=" + rewardType +
                ", rewardCount=" + rewardCount +
                ", rewardContent='" + rewardContent + '\'' +
                ", decorate=" + decorate +
                ", size='" + size + '\'' +
                ", content='" + content + '\'' +
                ", additionalPaidItem='" + additionalPaidItem + '\'' +
                ", classInformationId=" + classInformationId +
                ", headcount=" + headcount +
                ", numberOfContract=" + numberOfContract +
                ", numberOfTeachers=" + numberOfTeachers +
                ", ringDescriptionId=" + ringDescriptionId +
                ", archwayId=" + archwayId +
                ", numberOfBalloon=" + numberOfBalloon +
                ", colorOfBalloon='" + colorOfBalloon + '\'' +
                ", figureId=" + figureId +
                '}';
    }
}
