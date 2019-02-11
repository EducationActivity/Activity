package com.tryeverything.service.impl;

import com.tryeverything.dao.AttendanceCardDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.AttendanceCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AttendanceCardServiceImpl extends AbstractBaseService implements AttendanceCardService {
    @Resource
    private AttendanceCardDAO attendanceCardDAO;

    @Autowired
    public void setAttendanceCardDAO(AttendanceCardDAO attendanceCardDAO) {
        super.setBaseDAO(attendanceCardDAO);
        this.attendanceCardDAO = attendanceCardDAO;
    }
}
