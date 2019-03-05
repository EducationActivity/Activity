package com.tryeverything.controller;

import com.tryeverything.entity.Franchisee;
import com.tryeverything.service.FranchiseeService;
import com.tryeverything.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.RenderedImage;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("franchisee")
public class FranchiseeController {
    @Resource
    private FranchiseeService franchiseeService;

    @RequestMapping("listPage")
    public String listPage() {
        return "franchisee";
    }

    @RequestMapping("account")
    public String account() {
        return "account";
    }

    @RequestMapping("myAccount")
    public String myAccount(String franchiseeId) {
        List<Franchisee> franchisee = franchiseeService.listById(franchiseeId);
        return "my_account";
    }

    @RequestMapping("activityToConfirm")
    public String activityToConfirm() {
        return "activity_to_confirm";
    }

    @RequestMapping("activityConfirmationAdded")
    public String activityConfirmationAdded() {
        return "activity_confirmation_added";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll() {
        return franchiseeService.listAll();
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Franchisee> listById(String franchiseeId) {
        return franchiseeService.listById(franchiseeId);
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Franchisee franchisee) {
        ControllerStatusVO statusVO = null;
        try {
            if (franchisee != null) {
                franchisee.setPassword(EncryptUtils.md5(String.valueOf(123456)));
                franchisee.setType(1);
                franchiseeService.save(franchisee);
                statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_ADD_SUCCESS);
            }
        } catch (Exception e) {
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_ADD_FAIL);
        }
        return statusVO;
    }

    /* 获取验证码（Gif版本）
     * @param response
     */
    @RequestMapping(value = "getGifCode", method = RequestMethod.GET)
    public void getGifCode(HttpServletResponse response, HttpServletRequest request) {
        try {
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/gif");
            /**
             * gif格式动画验证码
             * 宽，高，位数。
             */
            Captcha captcha = new GifCaptcha(146, 33, 4);
            //输出
            captcha.out(response.getOutputStream());
            HttpSession session = request.getSession(true);
            //存入Session
            session.setAttribute("_code", captcha.text().toLowerCase());
            Date now = new Date();
            session.setAttribute("codeTime", now.getTime());
        } catch (Exception e) {
            e.printStackTrace();
//            LoggerUtils.fmtError(getClass(),e, "获取验证码异常：%s",e.getMessage());
        }
    }


    /**
     * @param checkCode 前端用户输入返回的验证码
     *             参数若需要，自行添加
     */
    @RequestMapping(value = "verify")
    @ResponseBody
    public ControllerStatusVO checkcode(HttpServletRequest request,
                                        HttpSession session,
                                        String checkCode) throws Exception {
        ControllerStatusVO statusVO = null;
        // 获得验证码对象
        Object cko = session.getAttribute("_code");
        String captcha = cko.toString();
        // 验证码有效时长为1分钟
        Date now = new Date();
        Long codeTime = Long.valueOf(session.getAttribute("codeTime") + "");
        // 判断验证码输入是否正确
        if (StringUtils.isEmpty(checkCode) || captcha == null || !(checkCode.equalsIgnoreCase(captcha))) {
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_CODE_ERROR);
        } else if ((now.getTime() - codeTime) / 1000 / 60 > 1) {
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_CODE_TIMEOUT);
        }else{
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_CODE_SUCCESS);
        }
        return statusVO;
    }

    @RequestMapping("login")
    public String login(Franchisee franchisee, HttpServletRequest request) throws Exception{
        try{
            Franchisee franchisee1 = new Franchisee();
            if(franchisee.getLoginName() != null && franchisee.getPassword() != null){
                franchisee1.setLoginName(franchisee.getLoginName());
                franchisee1.setPassword(EncryptUtils.md5(franchisee.getPassword()));
                franchisee1 = franchiseeService.findByFranchisee(franchisee1);
            }
            if(franchisee1 != null){
                request.getSession().setAttribute("franchiseeId", franchisee1.getFranchiseeId());
                request.getSession().setAttribute("loginName",franchisee1.getLoginName());
            }else{
                request.getSession().setAttribute("franchisee_msg", "账号或密码错误或后台管理员未启用");
                return "redirect:/login.do";
            }
        }catch (Exception e){
            e.printStackTrace();
            request.getSession().setAttribute("franchisee_msg", "加盟商登录出错");
            return "redirect:/login.do";
        }
        return "index";
    }
    @RequestMapping("loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("franchiseeId");//清除session信息
        request.getSession().removeAttribute("loginName");//清除session信息
//        request.getSession().invalidate();//清空session中的所有信息
        return "redirect:/login.do";
    }

    @RequestMapping("audit")
    @ResponseBody
    public ControllerStatusVO audit(String franchiseeId,Integer status){
        ControllerStatusVO statusVO = null;
        try{
            Franchisee f = new Franchisee();
            f.setFranchiseeId(franchiseeId);
            f.setStatus(status);
            franchiseeService.audit(f);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_AUDIT_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_AUDIT_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Franchisee franchisee){
        ControllerStatusVO statusVO = null;
        try{
            franchiseeService.update(franchisee);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("updatePwd")
    @ResponseBody
    public ControllerStatusVO updatePwd(String franchiseeId,String password){
        ControllerStatusVO statusVO = null;
        try{
            Franchisee franchisee = new Franchisee();
            franchisee.setFranchiseeId(franchiseeId);
            franchisee.setPassword(EncryptUtils.md5(password));
            franchiseeService.updatePwd(franchisee);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_UPDATE_PWD_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_UPDATE_PWD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(String franchiseeId){
        ControllerStatusVO statusVO = null;
        try{
            franchiseeService.removeById(franchiseeId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_REMOVE_FAIL);
        }
        return statusVO;
    }

}
