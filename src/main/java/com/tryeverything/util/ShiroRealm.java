package com.tryeverything.util;

import com.tryeverything.entity.SysUser;
import com.tryeverything.service.PermissionService;
import com.tryeverything.service.RoleService;
import com.tryeverything.service.SysUserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ShiroRealm extends AuthorizingRealm {
    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PermissionService permissionService;


//  授权方法
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String phone = principalCollection.getPrimaryPrincipal().toString();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(roleService.queryUserRole(phone));
        authorizationInfo.setStringPermissions(permissionService.queryPermission(phone));
        return authorizationInfo;
    }

//  认证方法
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
//        通过token获取用户账号Principals：身份。可以是用户名，邮件，手机号码等等，用来标识一个登录主体身份；
        String phone = (String) authenticationToken.getPrincipal();
//        通过token获取用户密码 Credentials：凭证。常见有密码，数字证书等等。
        String userPassword = (String) authenticationToken.getCredentials();
        SysUser sysUser = sysUserService.queryUser(phone,userPassword);
        if(sysUser != null){
            return new SimpleAuthenticationInfo(authenticationToken.getPrincipal(),authenticationToken.getCredentials(),"shiroRealm");
        }
        return null;
    }
}
