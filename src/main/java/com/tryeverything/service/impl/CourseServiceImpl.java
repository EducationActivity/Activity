package com.tryeverything.service.impl;

import com.tryeverything.dao.CourseDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CourseServiceImpl extends AbstractBaseService implements CourseService {
    @Resource
    private CourseDAO courseDAO;

    @Autowired
    public void setCourseDAO(CourseDAO courseDAO) {
        super.setBaseDAO(courseDAO);
        this.courseDAO = courseDAO;
    }
}
