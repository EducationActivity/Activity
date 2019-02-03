package com.tryeverything.entity;

import java.io.Serializable;

public class SupplierMaterials implements Serializable {
    private Integer id;
    private Integer supplierId;
    private Integer materialsId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public Integer getMaterialsId() {
        return materialsId;
    }

    public void setMaterialsId(Integer materialsId) {
        this.materialsId = materialsId;
    }

    @Override
    public String toString() {
        return "SupplierMaterials{" +
                "id=" + id +
                ", supplierId=" + supplierId +
                ", materialsId=" + materialsId +
                '}';
    }
}
