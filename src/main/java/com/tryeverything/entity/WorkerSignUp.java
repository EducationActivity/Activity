package com.tryeverything.entity;

import java.io.Serializable;

public class WorkerSignUp implements Serializable {
    private Integer singUpId;
    private Integer workerId;
    private Integer signUpId;

    public Integer getSingUpId() {
        return singUpId;
    }

    public void setSingUpId(Integer singUpId) {
        this.singUpId = singUpId;
    }

    public Integer getWorkerId() {
        return workerId;
    }

    public void setWorkerId(Integer workerId) {
        this.workerId = workerId;
    }

    public Integer getSignUpId() {
        return signUpId;
    }

    public void setSignUpId(Integer signUpId) {
        this.signUpId = signUpId;
    }

    @Override
    public String toString() {
        return "workerSinUp{" +
                "singUpId=" + singUpId +
                ", workerId=" + workerId +
                ", signUpId=" + signUpId +
                '}';
    }
}
