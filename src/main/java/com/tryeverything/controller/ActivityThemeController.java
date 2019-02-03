package com.tryeverything.controller;

import com.tryeverything.entity.ActivityTheme;
import com.tryeverything.entity.Game;
import com.tryeverything.service.ActivityThemeService;
import com.tryeverything.service.GameService;
import com.tryeverything.util.BootstrapUiTreeNode;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("activityTheme")
public class ActivityThemeController {
    @Resource
    private ActivityThemeService activityThemeService;

    @Resource
    private GameService gameService;

    @RequestMapping("listPage")
    public String listPage(){
        return "activity_theme";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return activityThemeService.listAll();
    }


    @RequestMapping("listTree")
    @ResponseBody
    public List<BootstrapUiTreeNode> listTree(){
        List<Object> theme = activityThemeService.listAll();
        List<BootstrapUiTreeNode> bootstrapUiTreeNodeList = new ArrayList<>();
        for (int i=0;i<theme.size();i++){
            BootstrapUiTreeNode bootstrapUiTreeNode = new BootstrapUiTreeNode();

            ActivityTheme theme1 = (ActivityTheme) theme.get(i);
            bootstrapUiTreeNode.setId(theme1.getThemeId());
            bootstrapUiTreeNode.setText(theme1.getThemeName());
            bootstrapUiTreeNode.setParentId(0);

            List<Object> game = gameService.listById(theme1.getThemeId());

            List<BootstrapUiTreeNode> nodes = new ArrayList<>();
            for (int j=0;j<game.size();j++){
                Game game1 = (Game) game.get(j);
                BootstrapUiTreeNode bootstrapUiTreeNode1 = new BootstrapUiTreeNode();
                bootstrapUiTreeNode1.setId(game1.getGameId());
                bootstrapUiTreeNode1.setText(game1.getGameName());
                bootstrapUiTreeNode1.setParentId(theme1.getThemeId());

                nodes.add(bootstrapUiTreeNode1);
            }
            bootstrapUiTreeNode.setNodes(nodes);
//            bootstrapUiTreeNode.setTags();
            bootstrapUiTreeNodeList.add(bootstrapUiTreeNode);
        }
        return bootstrapUiTreeNodeList;
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(ActivityTheme activityTheme){
        ControllerStatusVO statusVO = null;
        try{
            activityThemeService.save(activityTheme);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(ActivityTheme activityTheme){
        ControllerStatusVO statusVO = null;
        try{
            activityThemeService.update(activityTheme);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(ActivityTheme activityTheme,Integer themeId){
        ControllerStatusVO statusVO = null;
        try{
            activityThemeService.removeById(themeId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITY_THEME_REMOVE_FAIL);
        }
        return statusVO;
    }

}
