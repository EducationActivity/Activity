package com.tryeverything.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Materials implements Serializable {
    private Integer materialId;
    private String materialName;
    private Integer themeId;
    private String materialPicture;
    private String supplier;
    private String introduce;
    private Integer materialCount;
    private BigDecimal materialPrice;
    private Integer inventoryQuantity;
    private Integer theDelivery;
    private Integer nowTheInventory;
    private String unit;
    private String remark;
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

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
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

    public Integer getInventoryQuantity() {
        return inventoryQuantity;
    }

    public void setInventoryQuantity(Integer inventoryQuantity) {
        this.inventoryQuantity = inventoryQuantity;
    }

    public Integer getTheDelivery() {
        return theDelivery;
    }

    public void setTheDelivery(Integer theDelivery) {
        this.theDelivery = theDelivery;
    }

    public Integer getNowTheInventory() {
        return nowTheInventory;
    }

    public void setNowTheInventory(Integer nowTheInventory) {
        this.nowTheInventory = nowTheInventory;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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
                ", themeId=" + themeId +
                ", materialPicture='" + materialPicture + '\'' +
                ", supplier='" + supplier + '\'' +
                ", introduce='" + introduce + '\'' +
                ", materialCount=" + materialCount +
                ", materialPrice=" + materialPrice +
                ", inventoryQuantity=" + inventoryQuantity +
                ", theDelivery=" + theDelivery +
                ", nowTheInventory=" + nowTheInventory +
                ", unit='" + unit + '\'' +
                ", remark='" + remark + '\'' +
                ", createDate=" + createDate +
                '}';
    }
}
