package com.tryeverything.controller;

import com.tryeverything.entity.Archway;
import com.tryeverything.service.ArchwayService;
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
@RequestMapping("archway")
public class  ArchwayController {
    @Resource
    private ArchwayService archwayService;

    @RequestMapping("listPage")
    public String listPage(){
        return "archway";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return archwayService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Archway archway, MultipartFile multipartFile, HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && fileName !="") {
                archway.setArchwayPicture(UploadImageUtil.uploadImage(request,multipartFile,fileName));
            }
            archwayService.save(archway);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Archway archway,MultipartFile multipartFile,HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && fileName !="") {
                Archway archway1 = (Archway) archwayService.getById(archway.getArchwayId());
                if(archway1.getArchwayPicture()!=null && archway1.getArchwayPicture()!=""){
                    String path = request.getSession().getServletContext().getRealPath("")+archway1.getArchwayPicture();
                    UploadImageUtil.deleteFile(path);
                }
                archway.setArchwayPicture(UploadImageUtil.uploadImage(request,multipartFile,fileName));
            }
            archwayService.update(archway);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Archway archway,HttpServletRequest request,Integer archwayId){
        ControllerStatusVO statusVO = null;
        try{
            Archway archway1 = (Archway) archwayService.getById(archway.getArchwayId());
            if(archway1.getArchwayPicture()!=null && archway1.getArchwayPicture()!=""){
                String path = request.getSession().getServletContext().getRealPath("")+archway1.getArchwayPicture();
                UploadImageUtil.deleteFile(path);
            }
            archwayService.removeById(archwayId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ARCHWAY_REMOVE_FAIL);
        }
        return statusVO;
    }

}
