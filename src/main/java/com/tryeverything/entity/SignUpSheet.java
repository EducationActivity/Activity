package com.tryeverything.entity;

import java.io.Serializable;

public class SignUpSheet implements Serializable {
    private Integer singUpId;
    private String kindergartenName;
    private String executive;

    public Integer getSingUpId() {
        return singUpId;
    }

    public void setSingUpId(Integer singUpId) {
        this.singUpId = singUpId;
    }

    public String getKindergartenName() {
        return kindergartenName;
    }

    public void setKindergartenName(String kindergartenName) {
        this.kindergartenName = kindergartenName;
    }

    public String getExecutive() {
        return executive;
    }

    public void setExecutive(String executive) {
        this.executive = executive;
    }

    @Override
    public String toString() {
        return "SignUpSheet{" +
                "singUpId=" + singUpId +
                ", kindergartenName='" + kindergartenName + '\'' +
                ", executive='" + executive + '\'' +
                '}';
    }
}
