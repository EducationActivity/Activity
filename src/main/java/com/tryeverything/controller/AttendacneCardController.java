package com.tryeverything.controller;

import com.tryeverything.entity.AttendanceCard;
import com.tryeverything.entity.Scheme;
import com.tryeverything.service.AttendanceCardService;
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
@RequestMapping("attendanceCard")
public class AttendacneCardController {
    @Resource
    private AttendanceCardService attendanceCardService;


    @RequestMapping("listPage")
    public String listPage(){
        return "attendance_card";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return attendanceCardService.listAll();
    }


    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(AttendanceCard attendanceCard, HttpServletRequest request, MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            if(multipartFile != null){
                String fileName = multipartFile.getOriginalFilename();
                if(fileName != null && !"".equals(fileName)){
                    attendanceCard.setGardenCardTemplate(UploadImageUtil.uploadPdf(request,multipartFile,fileName));
                }
            }
            attendanceCardService.save(attendanceCard);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(AttendanceCard attendanceCard, HttpServletRequest request, MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && !"".equals(fileName)){
                attendanceCard.setGardenCardTemplate(UploadImageUtil.uploadPdf(request,multipartFile,fileName));
            }
            attendanceCardService.update(attendanceCard);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_UPDATE_FAIL);
        }
        return statusVO;
    }


    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer attendanceCardId){
        ControllerStatusVO statusVO = null;
        try{
            attendanceCardService.removeById(attendanceCardId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ATTENDANCECARD_REMOVE_FAIL);
        }
        return statusVO;
    }


}
