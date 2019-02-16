package com.tryeverything.controller;

import com.tryeverything.entity.SysUser;
import com.tryeverything.service.SysUserService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.EncryptUtils;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("sysUser")
public class SysUserController {

    @Resource
    private SysUserService sysUserService;

    @RequestMapping("listPage")
    public String listPage(){
        return "sys_user";
    }

    @RequestMapping("login")
    public String login(){
        return "sys_login";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return sysUserService.listAll();
    }

    @RequestMapping("register")
    public String register(String loginName, String userPassword, HttpServletRequest request) throws Exception{
        JSONObject result = new JSONObject();
        try {
            SysUser sysUser = new SysUser();
            if(loginName != null && userPassword != null){
                sysUser.setLoginName(loginName);
                sysUser.setUserPassword(EncryptUtils.md5(userPassword));
            }
            sysUser = sysUserService.findUserBase(sysUser);
            if(sysUser != null){
                request.getSession().setAttribute("user", sysUser);
            }else{
                request.getSession().setAttribute("msg", "账号或密码错误");
                return "redirect:/sysUser/login.do";
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.getSession().setAttribute("msg", "系统异常");
            return "redirect:/sysUser/login.do";
        }
        return "sys_index";
    }

    @RequestMapping("loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("user");//清空session信息
        request.getSession().invalidate();//清除 session 中的所有信息
        return "sys_login";
    }

    @RequestMapping("updateUserPws")
    @ResponseBody
    public ControllerStatusVO updataUserPws(String userPassword,String userId, HttpServletRequest request) throws Exception{
        ControllerStatusVO statusVO = null;
        try {
            SysUser sysUser = new SysUser();
            if(userId != null){
                sysUser.setUserPassword(EncryptUtils.md5(userPassword));
                sysUser.setUserId(userId);
            }
            sysUserService.updateUserPws(sysUser);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_PASSWORD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_PASSWORD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(SysUser sysUser){
        ControllerStatusVO statusVO = null;
        try{
            sysUser.setUserPassword(EncryptUtils.md5("123456"));
            sysUser.setStatus(0);
            sysUser.setType(0);
            sysUserService.save(sysUser);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(SysUser sysUser,Integer userId){
        ControllerStatusVO statusVO = null;
        try{
            sysUserService.update(sysUser);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer userId){
        ControllerStatusVO statusVO = null;
        try{
            sysUserService.removeById(userId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SYS_USER_REMOVE_FAIL);
        }
        return statusVO;
    }

}
