package com.tryeverything.entity;

import java.io.Serializable;
import java.util.Date;

public class MessageText implements Serializable {
    private Integer id;
    private String message;
    private Date pDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getpDate() {
        return pDate;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }

    @Override
    public String toString() {
        return "MessageText{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", pDate=" + pDate +
                '}';
    }
}
