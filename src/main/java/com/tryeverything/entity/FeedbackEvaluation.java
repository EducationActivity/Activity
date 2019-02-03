package com.tryeverything.entity;

import java.io.Serializable;


public class FeedbackEvaluation implements Serializable {
    private Integer id;
    private Integer activityFeedbackId;
    private Integer activityEvaluationId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getActivityFeedbackId() {
        return activityFeedbackId;
    }

    public void setActivityFeedbackId(Integer activityFeedbackId) {
        this.activityFeedbackId = activityFeedbackId;
    }

    public Integer getActivityEvaluationId() {
        return activityEvaluationId;
    }

    public void setActivityEvaluationId(Integer activityEvaluationId) {
        this.activityEvaluationId = activityEvaluationId;
    }

    @Override
    public String toString() {
        return "FeedbackEvaluation{" +
                "id=" + id +
                ", activityFeedbackId=" + activityFeedbackId +
                ", activityEvaluationId=" + activityEvaluationId +
                '}';
    }
}
