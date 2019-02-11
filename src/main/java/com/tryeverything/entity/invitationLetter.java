package com.tryeverything.entity;

import java.io.Serializable;

public class invitationLetter implements Serializable {
    private Integer invitationLetterId;
    private String invitationLetterName;
    private String invitationTemplate;

    public Integer getInvitationLetterId() {
        return invitationLetterId;
    }

    public void setInvitationLetterId(Integer invitationLetterId) {
        this.invitationLetterId = invitationLetterId;
    }

    public String getInvitationLetterName() {
        return invitationLetterName;
    }

    public void setInvitationLetterName(String invitationLetterName) {
        this.invitationLetterName = invitationLetterName;
    }

    public String getInvitationTemplate() {
        return invitationTemplate;
    }

    public void setInvitationTemplate(String invitationTemplate) {
        this.invitationTemplate = invitationTemplate;
    }

    @Override
    public String toString() {
        return "invitationLetter{" +
                "invitationLetterId=" + invitationLetterId +
                ", invitationLetterName='" + invitationLetterName + '\'' +
                ", invitationTemplate='" + invitationTemplate + '\'' +
                '}';
    }
}
