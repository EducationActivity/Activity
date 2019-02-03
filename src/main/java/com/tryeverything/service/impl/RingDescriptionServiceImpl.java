package com.tryeverything.service.impl;

import com.tryeverything.dao.RingDescriptionDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.RingDescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class RingDescriptionServiceImpl extends AbstractBaseService implements RingDescriptionService {
    @Resource
    private RingDescriptionDAO ringDescriptionDAO;

    @Autowired
    public void setRingDescriptionDAO(RingDescriptionDAO ringDescriptionDAO) {
        super.setBaseDAO(ringDescriptionDAO);
        this.ringDescriptionDAO = ringDescriptionDAO;
    }
}
