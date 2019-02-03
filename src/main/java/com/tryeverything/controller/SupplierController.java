package com.tryeverything.controller;

import com.tryeverything.entity.Supplier;
import com.tryeverything.service.SupplierService;
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
@RequestMapping("supplier")
public class SupplierController {
    @Resource
    private SupplierService supplierService;

    @RequestMapping("listPage")
    public String listPage(){
        return "supplier";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return supplierService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Supplier supplier){
        ControllerStatusVO statusVO = null;
        try{
            if(supplier != null){
                supplier.setPassword(EncryptUtils.md5(supplier.getPassword()));
                supplierService.save(supplier);
                statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_ADD_SUCCESS);
            }
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("loginPage")
    public String loginPage(){
        return "supplier_login";
    }

    @RequestMapping("login")
    public String login(String loginName, String password, HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            Supplier supplier = new Supplier();
            if(loginName != null && password != null){
                supplier.setLoginName(loginName);
                supplier.setPassword(EncryptUtils.md5(password));
                supplier = supplierService.findBySupplier(supplier);
            }
            if(supplier != null){
                request.getSession().setAttribute("supplier", supplier);
            }else{
                request.getSession().setAttribute("supplier_msg", "账号或密码错误或后台管理员未启用");
                return "redirect:/supplier/loginPage.do";
            }
        }catch (Exception e){
            e.printStackTrace();
            request.getSession().setAttribute("supplier_msg", "物料供应商登录出错");
            return "redirect:/supplier/loginPage.do";
        }
        return "index";
    }

    @RequestMapping("loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("supplier");//清除session信息
        request.getSession().invalidate();//清空session中的所有信息
        return "redirect:/login.do";
    }

    @RequestMapping("audit")
    @ResponseBody
    public ControllerStatusVO audit(Integer supplierId,Integer status){
        ControllerStatusVO statusVO = null;
        try{
            Supplier supplier = new Supplier();
            supplier.setSupplierId(supplierId);
            supplier.setStatus(status);
            supplierService.audit(supplier);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_AUDIT_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_AUDIT_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Supplier supplier){
        ControllerStatusVO statusVO = null;
        try{
            supplierService.update(supplier);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer supplierId){
        ControllerStatusVO statusVO = null;
        try{
            supplierService.removeById(supplierId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_REMOVE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("updatePwd")
    @ResponseBody
    public ControllerStatusVO updatePwd(Integer supplierId,String password){
        ControllerStatusVO statusVO = null;
        try{
            Supplier supplier = new Supplier();
            supplier.setSupplierId(supplierId);
            supplier.setPassword(password);
            supplierService.update(supplier);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_UPDATE_PWD_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SUPPLIER_UPDATE_PWD_FAIL);
        }
        return statusVO;
    }
}
