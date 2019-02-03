package com.tryeverything.service.impl;

import com.tryeverything.dao.GameOperationDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.GameOperationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class GameOperationServiceImpl extends AbstractBaseService implements GameOperationService {
    @Resource
    private GameOperationDAO gameOperationDAO;

    @Autowired
    public void setGameOperationDAO(GameOperationDAO gameOperationDAO) {
        super.setBaseDAO(gameOperationDAO);
        this.gameOperationDAO = gameOperationDAO;
    }
}
