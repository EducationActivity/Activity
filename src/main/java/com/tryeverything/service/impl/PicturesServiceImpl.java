package com.tryeverything.service.impl;

import com.tryeverything.dao.PicturesDAO;
import com.tryeverything.entity.Pictures;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.PicturesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PicturesServiceImpl extends AbstractBaseService implements PicturesService {
    @Resource
    private PicturesDAO picturesDAO;

    @Autowired
    public void setPicturesDAO(PicturesDAO picturesDAO){
        super.setBaseDAO(picturesDAO);
        this.picturesDAO = picturesDAO;
    }

    @Override
    public void updateById(Integer id, Integer activityPhotosId) {
        picturesDAO.updateById(id,activityPhotosId);
    }


}

