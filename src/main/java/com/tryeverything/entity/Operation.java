package com.tryeverything.entity;

import java.io.Serializable;

public class Operation implements Serializable {
    private Integer operationId;
    private Integer step;
    private String content;
    private String materialInstructions;
    private String remark;

    public Integer getOperationId() {
        return operationId;
    }

    public void setOperationId(Integer operationId) {
        this.operationId = operationId;
    }

    public Integer getStep() {
        return step;
    }

    public void setStep(Integer step) {
        this.step = step;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMaterialInstructions() {
        return materialInstructions;
    }

    public void setMaterialInstructions(String materialInstructions) {
        this.materialInstructions = materialInstructions;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Operation{" +
                "operationId=" + operationId +
                ", step=" + step +
                ", content='" + content + '\'' +
                ", materialInstructions='" + materialInstructions + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
