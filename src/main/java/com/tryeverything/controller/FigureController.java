package com.tryeverything.controller;

import com.tryeverything.entity.Figure;
import com.tryeverything.service.FigureService;
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
@RequestMapping("figure")
public class FigureController {
    @Resource
    private FigureService figureService;

    @RequestMapping("listPage")
    public String listPage(){
        return "figure";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return figureService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(Figure figure, HttpServletRequest request, MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && !"".equals(fileName)){
                figure.setFigurePicture(UploadImageUtil.uploadImage(request,multipartFile,fileName));
            }
            figureService.save(figure);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(HttpServletRequest request,Figure figure,MultipartFile multipartFile){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = multipartFile.getOriginalFilename();
            if(fileName != null && fileName != ""){
                Figure figure1 = (Figure) figureService.getById(figure.getFigureId());
                if(figure1.getFigurePicture() != null && figure1.getFigurePicture() != ""){
                    String path = request.getSession().getServletContext().getRealPath("")+figure1.getFigurePicture();
                    UploadImageUtil.deleteFile(path);
                }
                figure.setFigurePicture(UploadImageUtil.uploadImage(request,multipartFile,fileName));
            }
            figureService.update(figure);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(HttpServletRequest request,Figure figure,Integer figureId){
        ControllerStatusVO statusVO = null;
        try{
            Figure figure1 = (Figure) figureService.getById(figureId);
            if(figure1.getFigurePicture() != null && figure1.getFigurePicture() != ""){
                String path = request.getSession().getServletContext().getRealPath("")+figure1.getFigurePicture();
                UploadImageUtil.deleteFile(path);
            }
            figureService.removeById(figureId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.FIGURE_REMOVE_FAIL);
        }
        return statusVO;
    }

}
