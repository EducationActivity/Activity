package com.tryeverything.entity;

import java.io.Serializable;

public class ParentsComment implements Serializable {
    private Integer id;
    private Integer parentsId;
    private Integer commentId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentsId() {
        return parentsId;
    }

    public void setParentsId(Integer parentsId) {
        this.parentsId = parentsId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    @Override
    public String toString() {
        return "ParentsComment{" +
                "id=" + id +
                ", parentsId=" + parentsId +
                ", commentId=" + commentId +
                '}';
    }
}
