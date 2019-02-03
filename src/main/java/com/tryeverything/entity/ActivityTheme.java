package com.tryeverything.entity;

import java.io.Serializable;

public class ActivityTheme implements Serializable {
    private Integer themeId;
    private String ThemeName;

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }

    public String getThemeName() {
        return ThemeName;
    }

    public void setThemeName(String themeName) {
        ThemeName = themeName;
    }

    @Override
    public String toString() {
        return "ActivityTheme{" +
                "themeId=" + themeId +
                ", ThemeName='" + ThemeName + '\'' +
                '}';
    }
}
