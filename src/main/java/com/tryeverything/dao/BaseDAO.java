package com.tryeverything.dao;

import com.tryeverything.util.Pager;

import java.util.List;

public interface BaseDAO {
    void save(Object obj);
    void update(Object obj);
    void remove(Object obj);
    void removeById(Integer id);
    void removeById(String id);

    Object getById(Integer id);
    Object getById(String id);

    List<Object> listAll();
    List<Object> listById(Integer id);

    List<Object> listPager(Pager pager);
    Integer count();

    List<Object> listPagerCriteria(Pager pager,Object obj);

    Integer countCriteria(Object obj);
}
