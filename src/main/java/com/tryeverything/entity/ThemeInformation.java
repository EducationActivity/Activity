package com.tryeverything.entity;

import java.io.Serializable;

public class ThemeInformation implements Serializable {
    private Integer id;
    private Integer themeId;
    private Integer informationId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    @Override
    public String toString() {
        return "ThemeInformation{" +
                "id=" + id +
                ", themeId=" + themeId +
                ", informationId=" + informationId +
                '}';
    }
}
