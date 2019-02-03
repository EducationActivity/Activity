package com.tryeverything.dao;

import com.tryeverything.entity.SysUser;
import org.springframework.stereotype.Repository;

@Repository
public interface SysUserDao extends BaseDAO{
	
	public SysUser findUserBase(SysUser sysUserBase);
	
	public void updateUserPws(SysUser sysUserBase);
}
