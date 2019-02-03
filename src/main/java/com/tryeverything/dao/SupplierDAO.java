package com.tryeverything.dao;

import com.tryeverything.entity.Supplier;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierDAO extends BaseDAO {
    Supplier findBySupplier(Supplier supplier);
    void audit(Supplier supplier);
}
