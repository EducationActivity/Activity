package com.tryeverything.controller;

import com.tryeverything.entity.Scheme;
import com.tryeverything.service.SchemeService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.UploadImageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("scheme")
public class SchemeController {
    @Resource
    private SchemeService schemeService;


    @RequestMapping("listPage")
    public String listPage(){
        return "scheme";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return schemeService.listAll();
    }


    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Scheme scheme, HttpServletRequest request, MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            if(multipartFile != null){
                String fileName = multipartFile.getOriginalFilename();
                if(fileName != null && !"".equals(fileName)){
                    scheme.setPlanTemplate(UploadImageUtil.uploadPdf(request,multipartFile,fileName));
                }
            }
            schemeService.save(scheme);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Scheme scheme, HttpServletRequest request, MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && !"".equals(fileName)){
                scheme.setPlanTemplate(UploadImageUtil.uploadPdf(request,multipartFile,fileName));
            }
            schemeService.update(scheme);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_UPDATE_FAIL);
        }
        return statusVO;
    }


    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer schemeId){
        ControllerStatusVO statusVO = null;
        try{
            schemeService.removeById(schemeId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.SCHEME_REMOVE_FAIL);
        }
        return statusVO;
    }


}
