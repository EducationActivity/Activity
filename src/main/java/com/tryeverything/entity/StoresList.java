package com.tryeverything.entity;

import java.io.Serializable;

public class StoresList implements Serializable {
    private Integer storesListId;
    //物料类型(0工作人员，1标准物料，2非标准物料，3布置物料，4工具物料)
    private Integer projectName;
    //物料名称
    private String itemList;
    private Integer quantity;

    public Integer getStoresListId() {
        return storesListId;
    }

    public void setStoresListId(Integer storesListId) {
        this.storesListId = storesListId;
    }

    public Integer getProjectName() {
        return projectName;
    }

    public void setProjectName(Integer projectName) {
        this.projectName = projectName;
    }

    public String getItemList() {
        return itemList;
    }

    public void setItemList(String itemList) {
        this.itemList = itemList;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "StoresList{" +
                "storesListId=" + storesListId +
                ", projectName=" + projectName +
                ", itemList='" + itemList + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}
