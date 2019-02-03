package com.tryeverything.controller;

import com.tryeverything.entity.Course;
import com.tryeverything.service.CourseService;
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
@RequestMapping("course")
public class CourseController {
    @Resource
    private CourseService courseService;

    @RequestMapping("listPage")
    public String listPage(){
        return "course";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return courseService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Course course, MultipartFile file, HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        String newfileName = "";
        String path = "";
        try{
            String fileName = file.getOriginalFilename();
            if(fileName != null && fileName != ""){
                course.setCoursePicture(UploadImageUtil.uploadImage(request,file,fileName));
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String cd = df.format(new Date());
            Date date = df.parse(cd);
            course.setCreateDate(date);
            courseService.save(course);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Course course,MultipartFile file,HttpServletRequest request){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = file.getOriginalFilename();
            if(fileName != null && fileName != ""){
                course.setCoursePicture(UploadImageUtil.uploadImage(request,file,fileName));
            }
            courseService.update(course);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer courseId){
        ControllerStatusVO statusVO = null;
        try{
            courseService.removeById(courseId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.COURSE_REMOVE_FAIL);
        }
        return statusVO;
    }
}
