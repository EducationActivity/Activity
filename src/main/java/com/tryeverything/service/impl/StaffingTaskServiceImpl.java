package com.tryeverything.service.impl;

import com.tryeverything.dao.StaffingDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.StaffingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class StaffingTaskServiceImpl extends AbstractBaseService implements StaffingService {
    @Resource
    private StaffingDAO staffingDAO;

    @Autowired
    public void setStaffingDAO(StaffingDAO staffingDAO) {
        super.setBaseDAO(staffingDAO);
        this.staffingDAO = staffingDAO;
    }
}
