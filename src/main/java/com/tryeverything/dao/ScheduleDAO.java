package com.tryeverything.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScheduleDAO extends BaseDAO{
    List<Object> listById(Integer id);
    void deletedById(Integer id);
}
