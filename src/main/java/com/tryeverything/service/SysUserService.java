package com.tryeverything.service;

import com.tryeverything.entity.SysUser;


public interface SysUserService extends BaseService{

	public SysUser findUserBase(SysUser sysUserBase) throws Exception;

	public void updateUserPws(SysUser sysUserBase) throws Exception;

	public SysUser queryUser(String phone,String userPassword);

}
