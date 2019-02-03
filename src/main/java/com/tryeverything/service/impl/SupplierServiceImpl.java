package com.tryeverything.service.impl;

import com.tryeverything.dao.SupplierDAO;
import com.tryeverything.entity.Supplier;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SupplierServiceImpl extends AbstractBaseService implements SupplierService {
    @Resource
    private SupplierDAO supplierDAO;

    @Autowired
    public void setSupplierDAO(SupplierDAO supplierDAO) {
        super.setBaseDAO(supplierDAO);
        this.supplierDAO = supplierDAO;
    }

    @Override
    public Supplier findBySupplier(Supplier supplier) {
        return supplierDAO.findBySupplier(supplier);
    }

    @Override
    public void audit(Supplier supplier) {
        supplierDAO.audit(supplier);
    }
}
