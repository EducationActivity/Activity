package com.tryeverything.controller;

import com.tryeverything.entity.ActivityPhotos;
import com.tryeverything.entity.Pictures;
import com.tryeverything.service.ActivityPhotosService;
import com.tryeverything.service.PicturesService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.UUIDUtils;
import com.tryeverything.util.UploadImageUtil;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("activityPhotos")
public class ActivityPhotosController {
    @Resource
    private ActivityPhotosService activityPhotosService;

    @Resource
    private PicturesService picturesService;

    private Integer fodders;
    private Integer countFiles = 0;
    private List<Integer> a  = new ArrayList();;

    @RequestMapping("listPage")
    public String listPage(){
        return "activity_photos";
    }

    @RequestMapping("franchiseeListPage")
    public String franchiseeListPage(){
        return "franchisee_activity_photos";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return activityPhotosService.listAll();
    }

    @RequestMapping("upload")
    @ResponseBody
    public ControllerStatusVO upload(HttpServletRequest request,MultipartFile[] files, String fodder){
        ControllerStatusVO statusVO = null;
        String path = "";
        String newfileName = "";

        try{
        for (MultipartFile s : files) {
            String pathRoot = request.getSession().getServletContext().getRealPath("");

            System.out.println(pathRoot);
            String uploadPath = "/static/uploadImage/";
            String houzhui=s.getOriginalFilename();
            houzhui=houzhui.substring(houzhui.lastIndexOf(".")+1);
            newfileName = new SimpleDateFormat("yyy-MM-dd-HH-mm-ss").format(new Date((new Long(String.valueOf(new Date().getTime()))))) + UUIDUtils.getUUID() + "." + houzhui;
            path = uploadPath + newfileName;
            //创建file实例
            File uploadImage = new File(pathRoot + path);
            if (!uploadImage.getParentFile().exists()) {
                uploadImage.getParentFile().mkdirs();
            }
            s.transferTo(uploadImage);
            countFiles += 1;
        }
            fodders = Integer.parseInt(fodder);
            Pictures p = new Pictures();
            p.setPicture(path);
            picturesService.save(p);
            a.add(p.getId());
        if(countFiles==fodders){
            countFiles=0;
        }
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_ADD_SUCCESS);
    }catch (Exception e){
        e.printStackTrace();
        statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_ADD_FAIL);
    }
    return statusVO;
}
    @RequestMapping("pictureList")
    @ResponseBody
    public JSONArray pictureList(Integer activityPhotosId){
        List<Object> pictures = picturesService.listById(activityPhotosId);
        JSONArray array = null;
        try{
            array = JSONArray.fromObject(pictures);
        }catch (Exception e){
            e.printStackTrace();
        }
        return array;
    }
    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(ActivityPhotos activityPhotos){
        ControllerStatusVO statusVO = null;
        try{
            activityPhotosService.save(activityPhotos);
            Integer activityPhotosId = activityPhotos.getActivityPhotosId();
            for (int i=0;i<a.size();i++){
                picturesService.updateById(a.get(i),activityPhotosId);
            }
            Iterator<Integer> it = a.iterator();
            for(;it.hasNext();) {
                it.next();
                it.remove();
            }
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_ADD_SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping(value = "update")
    @ResponseBody
    public ControllerStatusVO update(ActivityPhotos activityPhotos){
        ControllerStatusVO statusVO = null;
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//        Date timeDate=null;
//        try {
//            timeDate= sdf.parse(time);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        activityPhotos.setTime(timeDate);
        try{
            for (int i=0;i<a.size();i++){
                picturesService.updateById(a.get(i),activityPhotos.getActivityPhotosId());
            }
            Iterator<Integer> it = a.iterator();
            for(;it.hasNext();) {
                it.next();
                it.remove();
            }
            activityPhotosService.update(activityPhotos);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO removeById(HttpServletRequest request,Integer activityPhotosId){
        ControllerStatusVO statusVO = null;
        try{
            List<Object> picture = picturesService.listById(activityPhotosId);
            for(Object object : picture) {
                Pictures entry = (Pictures) object;
                String path = request.getSession().getServletContext().getRealPath("") + entry.getPicture();
                UploadImageUtil.deleteFile(path);
            }
//            for(int i=0;i<picture.size();i++){
//                String path = "";
//                path = request.getSession().getServletContext().getRealPath("")+ picture.get(i);
//                UploadImageUtil.deleteFile(path);
//            }
            picturesService.removeById(activityPhotosId);
            activityPhotosService.removeById(activityPhotosId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_PHOTOS_REMOVE_FAIL);
        }
        return statusVO;
    }
}
