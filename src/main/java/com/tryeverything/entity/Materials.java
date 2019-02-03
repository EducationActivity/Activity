package com.tryeverything.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Materials implements Serializable {
    private Integer materialId;
    private String materialName;
    private String materialPicture;
    private String supplier;
    private String introduce;
    private Integer materialCount;
    private BigDecimal materialPrice;
    private Date createDate;

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public String getMaterialPicture() {
        return materialPicture;
    }

    public void setMaterialPicture(String materialPicture) {
        this.materialPicture = materialPicture;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Integer getMaterialCount() {
        return materialCount;
    }

    public void setMaterialCount(Integer materialCount) {
        this.materialCount = materialCount;
    }

    public BigDecimal getMaterialPrice() {
        return materialPrice;
    }

    public void setMaterialPrice(BigDecimal materialPrice) {
        this.materialPrice = materialPrice;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Materials{" +
                "materialId=" + materialId +
                ", materialName='" + materialName + '\'' +
                ", materialPicture='" + materialPicture + '\'' +
                ", supplier='" + supplier + '\'' +
                ", introduce='" + introduce + '\'' +
                ", materialCount=" + materialCount +
                ", materialPrice=" + materialPrice +
                ", createDate=" + createDate +
                '}';
    }
}
