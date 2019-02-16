package com.tryeverything.service.impl;

import com.tryeverything.dao.GameDAO;
import com.tryeverything.entity.Pictures;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GameServiceImpl extends AbstractBaseService implements GameService {
    @Resource
    private GameDAO gameDAO;

    @Autowired
    public void setGameDAO(GameDAO gameDAO) {
        super.setBaseDAO(gameDAO);
        this.gameDAO = gameDAO;
    }

    @Override
    public List<Object> listByActivityId(Integer activityId) {
        return gameDAO.listByActivityId(activityId);
    }
}
