package com.tryeverything.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tryeverything.entity.*;
import com.tryeverything.service.*;
import com.tryeverything.util.ControllerStatusEnum;
import com.tryeverything.util.ControllerStatusVO;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("activityConfirmation")
public class ActivityConfirmationController {
    @Resource
    private ActivityConfirmationService activityConfirmationService;

    @Resource
    private ActivityService activityService;

    @Resource
    private ActivityGameService activityGameService;

    @Resource
    private ClassInformationService classInformationService;

    @Resource
    private RingDescriptionService ringDescriptionService;

    @Resource
    private ActivityConfirmationService confirmationService;

    @Resource
    private InformationService informationService;

    @RequestMapping("listPage")
    public String listPage() {
        return "activity_to_confirm";
    }

    @RequestMapping("listAll")
    @ResponseBody
    public List<Object> listAll() {
        return activityConfirmationService.listAll();
    }

    @RequestMapping("add")
    @ResponseBody
    public ControllerStatusVO add(String userId, @RequestBody JSONObject obj) {
        ControllerStatusVO statusVO = null;
        String jsonStr = obj.toJSONString();
        JSONObject json = JSON.parseObject(jsonStr);
        String information = json.getString("information");
        String classInformation = json.getString("classInformation");
        String ringDescription = json.getString("ringDescription");
        String activityGame = json.getString("game");
        Integer kindergartenId = 0;
        Integer classId = 0;
        Integer ringDescriptId = 0;
        Integer activityId = 0;
        Integer informationId = 0;
        try {
            if (StringUtils.isNotEmpty(information)) {
                JSONArray informationArray = JSONArray.parseArray(information);
                for (int i = 0; i < informationArray.size(); i++) {
                    kindergartenId = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("kindergartenId");
                    String activityLeader = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("activityLeader");
                    Integer themeId = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("themeId");
                    String activityName = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("activityName");
                    Date activityTime = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getDate("activityTime");
                    String activityAddress = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("activityAddress");
                    Date createDate = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getDate("createDate");
                    String remark = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("remark");

                    Activity activity = new Activity();
                    activity.setActivityName(activityName);
                    activity.setThemeId(themeId);

                    activity.setActivityLeader(activityLeader);
                    activity.setThemeId(themeId);
                    activity.setActivityName(activityName);
                    activity.setActivityTime(activityTime);
                    activity.setActivityAddress(activityAddress);
                    activity.setCreateDate(createDate);
                    activity.setRemark(remark);

                    activityService.save(activity);
                    activityId = activity.getActivityId();


                    Integer site = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("site");
                    Integer rewardType = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("rewardType");
                    Integer rewardCount = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("rewardCount");
                    String rewardContent = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("rewardContent");
                    Integer decorate = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getInteger("decorate");
                    String size = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("size");
                    String content = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("content");
                    String additionalPaidItem = JSONObject.parseObject(JSONObject.toJSONString(informationArray.get(i))).getString("additionalPaidItem");

                    Information information1 = new Information();
                    information1.setSite(site);
                    information1.setRewardType(rewardType);
                    information1.setRewardCount(rewardCount);
                    information1.setRewardContent(rewardContent);
                    information1.setDecorate(decorate);
                    information1.setSize(size);
                    information1.setContent(content);
                    information1.setAdditionalPaidItem(additionalPaidItem);
                    informationService.save(information1);
                    informationId = information1.getInformationId();

                }
            }
            if (StringUtils.isNotEmpty(classInformation)) {
                JSONArray classInformationArray = JSONArray.parseArray(classInformation);
                for (int i = 0; i < classInformationArray.size(); i++) {
                    Integer headcount = JSONObject.parseObject(JSONObject.toJSONString(classInformationArray.get(i))).getInteger("headcount");
                    Integer numberOfContract = JSONObject.parseObject(JSONObject.toJSONString(classInformationArray.get(i))).getInteger("numberOfContract");
                    Integer numberOfTeachers = JSONObject.parseObject(JSONObject.toJSONString(classInformationArray.get(i))).getInteger("numberOfTeachers");

                    ClassInformation classInformation1 = new ClassInformation();
                    classInformation1.setHeadcount(headcount);
                    classInformation1.setNumberOfContract(numberOfContract);
                    classInformation1.setNumberOfTeachers(numberOfTeachers);

                    classInformationService.save(classInformation1);
                    classId = classInformation1.getClassInformationId();
                }

                if (StringUtils.isNotEmpty(ringDescription)) {
                    JSONArray ringDescriptionArray = JSONArray.parseArray(ringDescription);
                    for (int i = 0; i < ringDescriptionArray.size(); i++) {
                        Integer archwayId = JSONObject.parseObject(JSONObject.toJSONString(ringDescriptionArray.get(i))).getInteger("archwayId");
                        Integer numberOfBalloon = JSONObject.parseObject(JSONObject.toJSONString(ringDescriptionArray.get(i))).getInteger("numberOfBalloon");
                        String colorOfBalloon = JSONObject.parseObject(JSONObject.toJSONString(ringDescriptionArray.get(i))).getString("colorOfBalloon");
                        Integer figureId = JSONObject.parseObject(JSONObject.toJSONString(ringDescriptionArray.get(i))).getInteger("figureId");

                        RingDescription ringDescription1 = new RingDescription();
                        ringDescription1.setArchwayId(archwayId);
                        ringDescription1.setNumberOfBalloon(numberOfBalloon);
                        ringDescription1.setColorOfBalloon(colorOfBalloon);
                        ringDescription1.setFigureId(figureId);

                        ringDescriptionService.save(ringDescription1);
                        ringDescriptId = ringDescription1.getRingDescriptionId();

                    }

                    if (StringUtils.isNotEmpty(activityGame)) {
                        JSONArray activityGameArray = JSONArray.parseArray(activityGame);

                        for (int i = 0; i < activityGameArray.size(); i++) {
                            Integer gameId = JSONObject.parseObject(JSON.toJSONString(activityGameArray.get(i))).getInteger("gameId");
                            ActivityGame activityGame1 = new ActivityGame();
                            activityGame1.setActivityId(activityId);
                            activityGame1.setGameId(gameId);
                            activityGameService.save(activityGame1);
                        }
                    }
                }
            }
            ActivityConfirmation activityConfirmation = new ActivityConfirmation();
            activityConfirmation.setUserId(userId);
            activityConfirmation.setKindergartenId(kindergartenId);
            activityConfirmation.setClassInformationId(classId);
            activityConfirmation.setRingDescriptionId(ringDescriptId);
            activityConfirmation.setActivityId(activityId);
            activityConfirmation.setInformationId(informationId);
            confirmationService.save(activityConfirmation);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.KINDERGARTEN_ADD_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("update")
    @ResponseBody
    public ControllerStatusVO update(@RequestBody JSONObject obj){
        ControllerStatusVO statusVO = null;
        String jsonStr = obj.toJSONString();
        JSONObject json = JSON.parseObject(jsonStr);
        String information = json.getString("information");
        String classInformation = json.getString("classInformation");
        String ringDescription = json.getString("ringDescription");
        String activityGame = json.getString("game");
        try{
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITYCONFIRMATION_UPDATE_SUCCESS);
        }catch (Exception e){
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITYCONFIRMATION_UPDATE_FAIL);
        }
        return statusVO;
    }

    @RequestMapping("getId")
    @ResponseBody
    public Object getId(Integer id){
        return activityConfirmationService.getId(id);
    }

    @RequestMapping("remove")
    @ResponseBody
    public ControllerStatusVO remove(Integer id){
        ControllerStatusVO statusVO = null;
        try{
            activityConfirmationService.removeById(id);
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITYCONFIRMATION_REMOVE_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            statusVO = ControllerStatusVO.status(ControllerStatusEnum.ACTIVITYCONFIRMATION_REMOVE_FAIL);
        }
        return statusVO;
    }

}
