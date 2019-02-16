package com.tryeverything.controller;

import com.tryeverything.entity.*;
import com.tryeverything.service.ActivityGameService;
import com.tryeverything.service.ActivityMaterialsService;
import com.tryeverything.service.MaterialsService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.UploadImageUtil;
import com.tryeverything.vo.ActivityGameVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("activityMaterials")
public class ActivityMaterialsController {
    @Resource
    private ActivityMaterialsService activityMaterialsService;

    @Resource
    private ActivityGameService activityGameService;

    @RequestMapping("listPage")
    public String listPage(){
        return "materials";
    }

    @RequestMapping("listActivityMaterials")
    public String listActivityMaterial(){
        return "activity_materials";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return activityMaterialsService.listAll();
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Object> listById(Integer activityId){
        return activityMaterialsService.listById(activityId);
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(ActivityMaterials activityMaterials){
        ControllerStatusVO statusVO = null;
        try{

            activityMaterialsService.save(activityMaterials);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("addMaterials")
    @ResponseBody
    public ControllerStatusVO addMaterials(Integer activityId){
        ControllerStatusVO statusVO = null;
        try{
            List<Object> activityGame = activityGameService.listById(activityId);
            ActivityMaterials activityMaterials = new ActivityMaterials();
            for (int i=0;i<activityGame.size();i++) {
//                    Map<Integer, Object> map = new LinkedHashMap<>();
//                    map.put(0, new ActivityMaterials("工作人员", "工作服"));
//                    map.put(1, new ActivityMaterials("工作人员", "工作牌"));
//                    map.put(2, new ActivityMaterials("标准物料", "充气拱门+鼓风机"));
//                    map.put(3, new ActivityMaterials("标准物料", "拖线板"));
//                    map.put(4, new ActivityMaterials("标准物料", "黄沙"));
//                    map.put(5, new ActivityMaterials("标准物料", "绳子"));
//                    map.put(6, new ActivityMaterials("标准物料", "地胶"));
//                    map.put(7, new ActivityMaterials("布置物料", "气球"));
//                    map.put(8, new ActivityMaterials("布置物料", "充气泵(气球)"));
//                    map.put(9, new ActivityMaterials("布置物料", "手动打气筒"));
//                    map.put(10, new ActivityMaterials("布置物料", "游园卡"));
//                    map.put(11, new ActivityMaterials("布置物料", "门卡"));
//                    map.put(12, new ActivityMaterials("工具物料", "螺丝刀"));
//                    map.put(13, new ActivityMaterials("工具物料", "剪刀"));
//                    map.put(14, new ActivityMaterials("工具物料", "PVC管割刀"));
//                    for (Map.Entry<Integer, Object> m : map.entrySet()) {
//                        ActivityMaterials a = (ActivityMaterials) m.getValue();
//                        a.setActivityId(activityId);
//                        a.setProjectName(a.getProjectName());
//                        a.setMaterialName(a.getMaterialName());
//                        activityMaterialsService.save(activityMaterials);
//                    }
                System.out.println("活动游戏列表"+activityGame.get(i));
//            activityMaterials.setActivityId(activityGame.get(i).toString().indexOf(0));
//            activityMaterials.setProjectName(activityGame.get(i).toString().substring(5));
//            activityMaterials.setMaterialName(activityGame.get(i).toString().substring(6));
//            activityMaterialsService.save(activityMaterials);
            }
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(ActivityMaterials activityMaterials){
        ControllerStatusVO statusVO = null;
        try{
            activityMaterialsService.update(activityMaterials);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer id){
        ControllerStatusVO statusVO = null;
        try{
            activityMaterialsService.removeById(id);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_FAIL);
        }
        return statusVO;
    }
}
