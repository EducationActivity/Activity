package com.tryeverything.service.impl;

import com.tryeverything.dao.DoorCardDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.DoorCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DoorCardServiceImpl extends AbstractBaseService implements DoorCardService {
    @Resource
    private DoorCardDAO doorCardDAO;

    @Autowired
    public void setDoorCardDAO(DoorCardDAO doorCardDAO) {
        super.setBaseDAO(doorCardDAO);
        this.doorCardDAO = doorCardDAO;
    }
}
