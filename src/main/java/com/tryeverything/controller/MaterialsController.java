package com.tryeverything.controller;

import com.tryeverything.entity.ActivityMaterials;
import com.tryeverything.entity.Materials;
import com.tryeverything.service.ActivityMaterialsService;
import com.tryeverything.service.MaterialsService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.UploadImageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("materials")
public class MaterialsController {
    @Resource
    private MaterialsService materialsService;

    @RequestMapping("listPage")
    public String listPage(){
        return "materials";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return materialsService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Materials materials, MultipartFile file, HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = file.getOriginalFilename();
            if(fileName != null && !"".equals(fileName)){
                materials.setMaterialPicture(UploadImageUtil.uploadImage(request,file,fileName));
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String cd = df.format(new Date());
            Date date = df.parse(cd);
            materials.setCreateDate(date);
            materialsService.save(materials);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Materials materials, MultipartFile file, HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = file.getOriginalFilename();
            if(fileName != null && fileName != ""){
                Materials materials1 = (Materials) materialsService.getById(materials.getMaterialId());
                if(materials1.getMaterialPicture() != null && materials1.getMaterialPicture() != ""){
                    String path = request.getSession().getServletContext().getRealPath("")+materials1.getMaterialPicture();
                    UploadImageUtil.deleteFile(path);
                }
                materials.setMaterialPicture(UploadImageUtil.uploadImage(request,file,fileName));
            }
            materialsService.update(materials);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer materialId,HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            Materials materials1 = (Materials) materialsService.getById(materialId);
            if(materials1.getMaterialPicture() != null && materials1.getMaterialPicture() != ""){
                String path = request.getSession().getServletContext().getRealPath("")+materials1.getMaterialPicture();
                UploadImageUtil.deleteFile(path);
            }
            materialsService.removeById(materialId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_FAIL);
        }
        return statusVO;
    }
}
