package com.tryeverything.dao;

import com.tryeverything.entity.Pictures;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PicturesDAO extends BaseDAO {
    void updateById(@Param("id") Integer id, @Param("activityPhotosId") Integer activityPhotosId);
}
