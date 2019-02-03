package com.tryeverything.controller;

import com.tryeverything.entity.Game;
import com.tryeverything.entity.GameOperation;
import com.tryeverything.service.ActivityGameService;
import com.tryeverything.service.GameOperationService;
import com.tryeverything.service.GameService;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import com.tryeverything.util.UploadImageUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("game")
public class GameController {
    @Resource
    private GameService gameService;

    @Resource
    private ActivityGameService activityGameService;

    @Resource
    private GameOperationService gameOperationService;


    @RequestMapping("listPage")
    public String listPage(Integer themeId, Map<String,Object> map){
        map.put("themeId",themeId);
        return "game";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll(){
        return gameService.listAll();
    }

    @RequestMapping("listById")
    @ResponseBody
    public List<Object> listById(Integer themeId){
        return gameService.listById(themeId);
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(HttpServletRequest request, @Param("game")Game game, @Param("gPicture")MultipartFile gPicture, @Param("tViedo") MultipartFile tViedo, @Param("wViedo") MultipartFile wViedo){
        ControllerStatusVO statusVO = null;
        try{
            String fileName = gPicture.getOriginalFilename();
            if(fileName != null && !"".equals(fileName)){
                game.setGamePicture(UploadImageUtil.uploadImage(request,gPicture,fileName));
            }

            String fileName1 = tViedo.getOriginalFilename();
            if(fileName1 != null && !"".equals(fileName1)){
                game.setTeacherViedo(UploadImageUtil.uploadViedo(request,tViedo,fileName1));
            }

            String fileName2 = wViedo.getOriginalFilename();
            if(fileName2 != null && !"".equals(fileName2)){
                game.setWorkViedo(UploadImageUtil.uploadViedo(request,gPicture,fileName2));
            }
            gameService.save(game);
            GameOperation gameOperation = new GameOperation();
            gameOperation.setGameId(game.getGameId());
            gameOperationService.save(gameOperation);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(Game game){
        ControllerStatusVO statusVO = null;
        try{
            gameService.update(game);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_UPDATE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer gameId){
        ControllerStatusVO statusVO = null;
        try{
            gameService.removeById(gameId);
            activityGameService.removeById(gameId);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.GAME_REMOVE_FAIL);
        }
        return statusVO;
    }
}
