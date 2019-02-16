package com.tryeverything.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScheduleDAO extends BaseDAO{
    void deletedById(Integer id);
}
