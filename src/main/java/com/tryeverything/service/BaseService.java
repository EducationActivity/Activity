package com.tryeverything.service;


import com.tryeverything.util.Pager;

import java.util.List;


public interface BaseService {
    void save(Object obj);
    void update(Object obj);
    void remove(Object obj);
    void removeById(Integer id);
    void removeById(String id);

    Object getById(Integer id);
    Object getById(String id);
    List<Object> listAll();
    List<Object> listById(Integer id);
    Pager listPager(int pageNo, int pageSize);

    Pager listPagerCriteria(int pageNo, int pageSize, Object obj);
}
