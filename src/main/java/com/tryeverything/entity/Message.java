package com.tryeverything.entity;

import java.io.Serializable;

public class Message implements Serializable {
    private Integer id;
    private Integer sendId;
    private Integer recId;
    private Integer messageId;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSendId() {
        return sendId;
    }

    public void setSendId(Integer sendId) {
        this.sendId = sendId;
    }

    public Integer getRecId() {
        return recId;
    }

    public void setRecId(Integer recId) {
        this.recId = recId;
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", sendId=" + sendId +
                ", recId=" + recId +
                ", messageId=" + messageId +
                ", status=" + status +
                '}';
    }
}
