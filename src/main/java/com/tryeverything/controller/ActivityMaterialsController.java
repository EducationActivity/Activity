package com.tryeverything.controller;

import com.tryeverything.entity.*;
import com.tryeverything.service.ActivityGameService;
import com.tryeverything.service.ActivityMaterialsService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.vo.ActivityGameVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
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

    @RequestMapping("activityMaterials")
    public String schedule(Map<String,Object> map, Integer activityId){
        map.put("activityId",activityId);
        return "activity_material";
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
            List<Object> list = activityGameService.listById(activityId);
            Map<Integer, Object> map = new LinkedHashMap<>();
            map.put(0, new ActivityMaterials("工作人员", "工作服",null,"件"));
            map.put(1, new ActivityMaterials("工作人员", "工作牌",null,"块"));
            map.put(2, new ActivityMaterials("标准物料", "充气拱门+鼓风机",null,"个"));
            map.put(3, new ActivityMaterials("标准物料", "拖线板",null,"条"));
            map.put(4, new ActivityMaterials("标准物料", "黄沙",null,"袋"));
            map.put(5, new ActivityMaterials("标准物料", "绳子",null,"根"));
            map.put(6, new ActivityMaterials("标准物料", "地胶",null,"卷"));
            map.put(7, new ActivityMaterials("布置物料", "气球",null,"袋"));
            map.put(8, new ActivityMaterials("布置物料", "充气泵(气球)",null,"个"));
            map.put(9, new ActivityMaterials("布置物料", "手动打气筒",null,"个"));
            map.put(10, new ActivityMaterials("布置物料", "游园卡",null,"张"));
            map.put(11, new ActivityMaterials("布置物料", "门卡",null,"张"));
            map.put(12, new ActivityMaterials("工具物料", "螺丝刀",null,"把"));
            map.put(13, new ActivityMaterials("工具物料", "剪刀",null,"把"));
            map.put(14, new ActivityMaterials("工具物料", "PVC管割刀",null,"把"));
            for (Map.Entry<Integer, Object> m : map.entrySet()) {
                ActivityMaterials a = (ActivityMaterials) m.getValue();
                a.setActivityId(activityId);
                a.setProjectName(a.getProjectName());
                a.setMaterialName(a.getMaterialName());
                activityMaterialsService.save(a);
            }
            for (int i=0;i<list.size();i++) {
                ActivityGameVO activityGameVO = (ActivityGameVO) list.get(i);

                String materialName = null;
                Integer unit = null;
                String StoresList = activityGameVO.getStoresList();
                String[] strArray = new String[0];
                ActivityMaterials activityMaterials = new ActivityMaterials();
                if(StoresList != null && !("").equals(StoresList)){
                    strArray = StoresList.split("、");
                    for(int j=0;j<strArray.length;j++){
                        activityMaterials.setProjectName(activityGameVO.getGameName());
                        materialName = strArray[j].toString();
                        activityMaterials.setMaterialName(materialName);
                        activityMaterials.setActivityId(activityGameVO.getActivityId());
                        activityMaterialsService.save(activityMaterials);
                     }
                }
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

    @RequestMapping("removeList")
    @ResponseBody
    public ControllerStatusVO removeList(Integer activityId){
        ControllerStatusVO statusVO = null;
        try{
            activityMaterialsService.removeList(activityId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.MATERIAL_REMOVE_FAIL);
        }
        return statusVO;
    }
}
