package com.tryeverything.service.impl;

import com.tryeverything.dao.CourseTypeDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.CourseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CourseTypeServiceImpl extends AbstractBaseService implements CourseTypeService {
    @Resource
    private CourseTypeDAO courseTypeDAO;

    @Autowired
    public void setCourseTypeDAO(CourseTypeDAO courseTypeDAO) {
        super.setBaseDAO(courseTypeDAO);
        this.courseTypeDAO = courseTypeDAO;
    }
}
