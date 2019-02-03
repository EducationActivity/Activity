package com.tryeverything.entity;

import java.io.Serializable;

/*
* 活动满意表
* */
public class ActivityEvaluation implements Serializable {
    private Integer activityEvaluationId;
    //活动游戏名称
    private String activityName;
    //活动满意度(0满意,1较满意,2一般,3不满意,4极差)
    private Integer evaluate;

    public Integer getActivityEvaluationId() {
        return activityEvaluationId;
    }

    public void setActivityEvaluationId(Integer activityEvaluationId) {
        this.activityEvaluationId = activityEvaluationId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public Integer getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Integer evaluate) {
        this.evaluate = evaluate;
    }

    @Override
    public String toString() {
        return "ActivityEvaluation{" +
                "activityEvaluationId=" + activityEvaluationId +
                ", activityName='" + activityName + '\'' +
                ", evaluate=" + evaluate +
                '}';
    }
}
