package com.tryeverything.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GameDAO extends BaseDAO {
    List<Object> listById(Integer activityId);

}
