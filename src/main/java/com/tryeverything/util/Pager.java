package com.tryeverything.util;

import java.util.List;

/**
 * @Author:伍群斌
 * @Description:
 * @Date:2018/7/11 11:35
 */
public class Pager {
    private Integer pageNo;
    private Integer pageSize;
    private List<Object> rows;
    private Integer total;
    private Integer pages;

    public Pager(){

    }

    public Pager(Integer pageNo, Integer pageSize) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<Object> getRows() {
        return rows;
    }

    public void setRows(List<Object> rows) {
        this.rows = rows;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getBeginIndex() {
        return (pageNo - 1) * pageSize;
    }

    public Integer getPages() {
        Integer num = total % pageSize;
        return num ==0 ? total / pageSize : total / pageSize + 1;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }
}
