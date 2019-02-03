package com.tryeverything.controller;

import com.tryeverything.entity.Franchisee;
import com.tryeverything.service.FranchiseeService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.EncryptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("franchisee")
public class FranchiseeController {
    @Resource
    private FranchiseeService franchiseeService;

    @RequestMapping("listPage")
    public String listPage(){
        return "franchisee";
    }

    @RequestMapping("account")
    public String account(){
        return "account";
    }

    @RequestMapping("myAccount")
    public String myAccount(String franchiseeId){
        List<Franchisee> franchisee = franchiseeService.listById(franchiseeId);
        return "my_account";
    }
    @RequestMapping("activityToConfirm")
    public String activityToConfirm(){
        return "activity_to_confirm";
    }

    @RequestMapping("activityConfirmationAdded")
    public String activityConfirmationAdded(){
        return "activity_confirmation_added";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return franchiseeService.listAll();
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Franchisee> listById(String franchiseeId){
        return franchiseeService.listById(franchiseeId);
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Franchisee franchisee){
        ControllerStatusVO statusVO = null;
        try{
            if(franchisee != null){
                franchisee.setPassword(EncryptUtils.md5(franchisee.getPassword()));
                franchisee.setType(1);
                franchiseeService.save(franchisee);
                statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_ADD_SUCCESS);
            }
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FRANCHISEE_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("login")
    public String login(String loginName, String password, HttpServletRequest request){
        try{
            Franchisee franchisee = new Franchisee();
            if(loginName != null && password != null){
                franchisee.setLoginName(loginName);
                franchisee.setPassword(EncryptUtils.md5(password));
                franchisee = franchiseeService.findByFranchisee(franchisee);
            }
            if(franchisee != null){
                request.getSession().setAttribute("franchiseeId", franchisee.getFranchiseeId());
                request.getSession().setAttribute("loginName",loginName);
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
        request.getSession().invalidate();//清空session中的所有信息
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
