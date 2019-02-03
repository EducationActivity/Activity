package com.tryeverything.entity;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable {
    private Integer newsId;
    private String newsName;
    private String newsPicture;
    private String site;
    private Date time;
    private String participants;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsName() {
        return newsName;
    }

    public void setNewsName(String newsName) {
        this.newsName = newsName;
    }

    public String getNewsPicture() {
        return newsPicture;
    }

    public void setNewsPicture(String newsPicture) {
        this.newsPicture = newsPicture;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getParticipants() {
        return participants;
    }

    public void setParticipants(String participants) {
        this.participants = participants;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsId=" + newsId +
                ", newsName='" + newsName + '\'' +
                ", newsPicture='" + newsPicture + '\'' +
                ", site='" + site + '\'' +
                ", time=" + time +
                ", participants='" + participants + '\'' +
                '}';
    }
}
