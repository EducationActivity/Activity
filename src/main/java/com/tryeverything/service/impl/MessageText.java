package com.tryeverything.service.impl;

import com.tryeverything.dao.MessageTextDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.MessageTextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MessageText extends AbstractBaseService implements MessageTextService {
    @Resource
    private MessageTextDAO messageTextDAO;

    @Autowired
    public void setMessageTextDAO(MessageTextDAO messageTextDAO) {
        super.setBaseDAO(messageTextDAO);
        this.messageTextDAO = messageTextDAO;
    }
}
