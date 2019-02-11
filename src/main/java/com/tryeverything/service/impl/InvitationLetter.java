package com.tryeverything.service.impl;

import com.tryeverything.dao.InvitationLetterDAO;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.InvitationLetterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class InvitationLetter extends AbstractBaseService implements InvitationLetterService {
    @Resource
    private InvitationLetterDAO invitationLetterDAO;

    @Autowired
    public void setInvitationLetterDAO(InvitationLetterDAO invitationLetterDAO) {
        super.setBaseDAO(invitationLetterDAO);
        this.invitationLetterDAO = invitationLetterDAO;
    }
}
