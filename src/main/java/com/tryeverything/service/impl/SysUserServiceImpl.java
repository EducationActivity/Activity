package com.tryeverything.service.impl;

import com.tryeverything.dao.SysUserDao;
import com.tryeverything.entity.SysUser;
import com.tryeverything.service.AbstractBaseService;
import com.tryeverything.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Set;

@Service
public class SysUserServiceImpl extends AbstractBaseService implements SysUserService {
	
	@Resource
	private SysUserDao sysUserDao;

	@Autowired
	public void setSysUserDao(SysUserDao sysUserDao) {
		super.setBaseDAO(sysUserDao);
		this.sysUserDao = sysUserDao;
	}
	@Override
	public SysUser findUserBase(SysUser sysUserBase) throws Exception{
		return sysUserDao.findUserBase(sysUserBase);
	}
	
	@Override
	public void updateUserPws(SysUser sysUserBase) throws Exception {
		sysUserDao.updateUserPws(sysUserBase);
	}

	@Override
	public SysUser queryUser(String phone,String userPassword) {
		return sysUserDao.queryUser(phone,userPassword);
	}

}
