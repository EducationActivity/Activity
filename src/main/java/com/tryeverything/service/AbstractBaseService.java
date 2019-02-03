package com.tryeverything.service;


import com.tryeverything.dao.BaseDAO;
import com.tryeverything.util.Pager;

import java.util.List;


public abstract class AbstractBaseService implements BaseService{
    private BaseDAO baseDAO;

    public void setBaseDAO(BaseDAO baseDAO) {
        this.baseDAO = baseDAO;
    }

    @Override
    public void save(Object obj){
        baseDAO.save(obj);
    }

    @Override
    public void update(Object obj) {
        baseDAO.update(obj);
    }

    @Override
    public void remove(Object obj) {
        baseDAO.remove(obj);
    }

    @Override
    public void removeById(Integer id) {
        baseDAO.removeById(id);
    }

    @Override
    public void removeById(String id) {
        baseDAO.removeById(id);
    }

    @Override
    public Object getById(Integer id) {
        return baseDAO.getById(id);
    }

    @Override
    public Object getById(String id) {
        return baseDAO.getById(id);
    }

    @Override
    public List<Object> listAll() {
        return baseDAO.listAll();
    }

    @Override
    public List<Object> listById(Integer id) {
        return baseDAO.listById(id);
    }

    @Override
    public Pager listPager(int pageNo, int pageSize) {
        Pager pager = new Pager(pageNo,pageSize);
        pager.setRows(baseDAO.listPager(pager));
        pager.setTotal(baseDAO.count());
        return pager;
    }

    @Override
    public Pager listPagerCriteria(int pageNo, int pageSize, Object obj) {
        Pager pager = new Pager(pageNo,pageSize);
        pager.setRows(baseDAO.listPagerCriteria(pager,obj));
        pager.setTotal(baseDAO.countCriteria(obj));
        return pager;
    }


}
