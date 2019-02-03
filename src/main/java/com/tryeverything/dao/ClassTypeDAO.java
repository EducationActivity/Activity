package com.tryeverything.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClassTypeDAO extends BaseDAO{
    List<Object> listById(Integer classInformationId);
}
