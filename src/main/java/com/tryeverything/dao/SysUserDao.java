package com.tryeverything.dao;

import com.tryeverything.entity.SysUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface SysUserDao extends BaseDAO{
	
	public SysUser findUserBase(SysUser sysUserBase);
	
	public void updateUserPws(SysUser sysUserBase);

	public SysUser queryUser(@Param("phone") String phone, @Param("userPassword") String userPassword);

}
