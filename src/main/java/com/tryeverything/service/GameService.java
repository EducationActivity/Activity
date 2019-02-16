package com.tryeverything.service;

import java.util.List;

public interface GameService extends BaseService {
    List<Object> listByActivityId(Integer activityId);
}
