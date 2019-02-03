package com.tryeverything.service;

import com.tryeverything.entity.Pictures;

import java.util.List;

public interface PicturesService extends BaseService {
    void updateById(Integer id,Integer activityPhotosId);

}
