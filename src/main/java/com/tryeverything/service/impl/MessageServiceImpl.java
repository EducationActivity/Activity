package com.tryeverything.service.impl;

import com.tryeverything.dao.MessageDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;

@Resource
public class MessageServiceImpl extends AbstractBaseService implements MessageService {
    @Autowired
    private MessageDAO messageDAO;

    @Autowired
    public void setMessageDAO(MessageDAO messageDAO) {
        super.setBaseDAO(messageDAO);
        this.messageDAO = messageDAO;
    }
}
