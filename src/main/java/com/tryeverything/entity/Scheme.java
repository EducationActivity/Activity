package com.tryeverything.entity;

import java.io.Serializable;

public class Scheme implements Serializable {
    private Integer schemeId;
    private String schemeName;
    private String planTemplate;

    public Integer getSchemeId() {
        return schemeId;
    }

    public void setSchemeId(Integer schemeId) {
        this.schemeId = schemeId;
    }

    public String getSchemeName() {
        return schemeName;
    }

    public void setSchemeName(String schemeName) {
        this.schemeName = schemeName;
    }

    public String getPlanTemplate() {
        return planTemplate;
    }

    public void setPlanTemplate(String planTemplate) {
        this.planTemplate = planTemplate;
    }

    @Override
    public String toString() {
        return "Scheme{" +
                "schemeId=" + schemeId +
                ", schemeName='" + schemeName + '\'' +
                ", planTemplate='" + planTemplate + '\'' +
                '}';
    }
}
