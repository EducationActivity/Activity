package com.tryeverything.service;

import com.tryeverything.entity.Supplier;

public interface SupplierService extends BaseService {
    Supplier findBySupplier(Supplier supplier);
    void audit(Supplier supplier);
}
