package com.tryeverything.entity;

import java.io.Serializable;

public class ActivityFeedback implements Serializable {
    private Integer activityFeedbackId;
    private String kindergartenName;
    private String linkman;
    private String kindergartenAddress;
    private String phone;
    private String remark;
    private String improvements;

    public Integer getActivityFeedbackId() {
        return activityFeedbackId;
    }

    public void setActivityFeedbackId(Integer activityFeedbackId) {
        this.activityFeedbackId = activityFeedbackId;
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

    public String getKindergartenAddress() {
        return kindergartenAddress;
    }

    public void setKindergartenAddress(String kindergartenAddress) {
        this.kindergartenAddress = kindergartenAddress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getImprovements() {
        return improvements;
    }

    public void setImprovements(String improvements) {
        this.improvements = improvements;
    }

    @Override
    public String toString() {
        return "ActivityFeedback{" +
                "activityFeedbackId=" + activityFeedbackId +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", linkman='" + linkman + '\'' +
                ", kindergartenAddress='" + kindergartenAddress + '\'' +
                ", phone='" + phone + '\'' +
                ", remark='" + remark + '\'' +
                ", improvements='" + improvements + '\'' +
                '}';
    }
}
