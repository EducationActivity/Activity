package com.tryeverything.util;

import com.tryeverything.entity.Supplier;
import com.tryeverything.entity.SysUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginFilter implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //获取请求的url
        String url = request.getRequestURI();
        //判断url是否是公开 地址（实际使用时将公开 地址配置配置文件中）
        //这里公开地址是登陆提交的地址
        if(url.contains("/sysUser/register.do")){
            //如果进行登陆提交，放行
            return true;
        }else if(url.contains("/franchisee/login.do")){
            //如果进行登陆提交，放行
            return true;
        }else if(url.contains("/supplier/login.do")){
            //如果进行登陆提交，放行
            return true;
        }

        //判断session
        HttpSession session  = request.getSession();
        //从session中取出用户身份信息
        SysUser user = (SysUser)session.getAttribute("user");
        String franchiseeId = (String) session.getAttribute("franchiseeId");
        Supplier supplier = (Supplier) session.getAttribute("supplier");


        String contextPath=request.getContextPath();
        System.out.println(contextPath);
        if(user != null) {
//            if(franchiseeId != null || supplier != null){
//                return true;
//            }else {
//                //执行这里表示用户身份需要认证，跳转登陆页面
//                response.sendRedirect(contextPath+"/sysUser/login.do");
                return true;
//            }
        }else if(franchiseeId != null){
//            if(supplier != null){
//                return true;
//            }else{
//                //执行这里表示用户身份需要认证，跳转登陆页面
//                response.sendRedirect(contextPath+"/login.do");
//                return false;
//            }
            return true;
        }else if(supplier != null){
//            //执行这里表示用户身份需要认证，跳转登陆页面
//            response.sendRedirect(contextPath+"/supplier/loginPage.do");
            return true;
        }
        //执行这里表示用户身份需要认证，跳转登陆页面
        response.sendRedirect(contextPath+"/login.do");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
