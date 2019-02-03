package com.tryeverything.service.impl;

import com.tryeverything.dao.FigureDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.FigureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class FigureServiceImpl extends AbstractBaseService implements FigureService {
    @Resource
    private FigureDAO figureDAO;

    @Autowired
    public void setFigureDAO(FigureDAO figureDAO) {
        super.setBaseDAO(figureDAO);
        this.figureDAO = figureDAO;
    }
}
