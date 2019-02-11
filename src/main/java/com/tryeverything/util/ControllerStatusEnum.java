package com.tryeverything.util;

/**
 * Created by Administrator on 2017/11/23.
 */
public enum ControllerStatusEnum {

    KINDERGARTEN_ADD_SUCCESS(1,"success","幼儿园信息新增成功"),
    KINDERGARTEN_ADD_FAIL(2,"fail","幼儿园信息新增失败"),
    KINDERGARTEN_UPDATE_SUCCESS(3,"success","幼儿园信息修改成功"),
    KINDERGARTEN_UPDATE_FAIL(4,"fail","幼儿园信息修改失败"),
    KINDERGARTEN_REMOVE_FAIL(5,"success","幼儿园信息删除成功"),
    KINDERGARTEN_REMOVE_SUCCESS(6,"success","幼儿园信息删除失败"),

    SCHEDULE_ADD_SUCCESS(7,"success","进度信息新增成功"),
    SCHEDULE_ADD_FAIL(8,"fail","进度信息新增失败"),
    SCHEDULE_UPDATE_SUCCESS(9,"success","进度信息修改成功"),
    SCHEDULE_UPDATE_FAIL(10,"fail","进度信息修改失败"),
    SCHEDULE_REMOVE_SUCCESS(11,"success","进度信息删除成功"),
    SCHEDULE_REMOVE_FAIL(12,"fail","进度信息删除失败"),

    PARENTS_UPDATE_SUCCESS(13,"success","家长信息修改成功"),
    PARENTS_UPDATE_FAIL(14,"fail","家长信息修改失败"),
    PARENTS_REMOVE_SUCCESS(15,"success","家长信息删除成功"),
    PARENTS_REMOVE_FAIL(16,"fail","家长信息删除失败"),

    ACTIVITY_ADD_SUCCESS(17,"success","活动新增成功"),
    ACTIVITY_ADD_FAIL(18,"fail","活动新增失败"),
    ACTIVITY_UPDATE_SUCCESS(19,"success","活动修改成功"),
    ACTIVITY_UPDATE_FAIL(20,"fail","活动修改失败"),
    ACTIVITY_REMOVE_SUCCESS(21,"success","活动删除成功"),
    ACTIVITY_REMOVE_FAIL(22,"fail","活动删除失败"),

    ACTIVITY_PHOTOS_ADD_SUCCESS(23,"success","活动照片新增成功"),
    ACTIVITY_PHOTOS_ADD_FAIL(24,"fail","活动照片新增失败"),
    ACTIVITY_PHOTOS_UPDATE_SUCCESS(25,"success","活动照片修改成功"),
    ACTIVITY_PHOTOS_UPDATE_FAIL(26,"fail","活动照片修改失败"),
    ACTIVITY_PHOTOS_REMOVE_SUCCESS(27,"success","活动照片删除成功"),
    ACTIVITY_PHOTOS_REMOVE_FAIL(28,"fail","活动照片删除失败"),

    GAME_ADD_SUCCESS(29,"success","活动游戏新增成功"),
    GAME_ADD_FAIL(30,"fail","活动游戏新增失败"),
    GAME_UPDATE_SUCCESS(31,"success","活动游戏修改成功"),
    GAME_UPDATE_FAIL(32,"fail","活动游戏修改失败"),
    GAME_REMOVE_SUCCESS(33,"success","活动游戏删除成功"),
    GAME_REMOVE_FAIL(34,"fail","活动游戏删除失败"),

    COURSE_ADD_SUCCESS(35,"success","课程新增成功"),
    COURSE_ADD_FAIL(36,"fail","课程新增失败"),
    COURSE_UPDATE_SUCCESS(37,"success","课程修改成功"),
    COURSE_UPDATE_FAIL(38,"fail","课程修改失败"),
    COURSE_REMOVE_SUCCESS(39,"success","课程删除成功"),
    COURSE_REMOVE_FAIL(40,"fail","课程删除失败"),

    MATERIAL_ADD_SUCCESS(41,"success","物料信息新增成功"),
    MATERIAL_ADD_FAIL(42,"fail","物料新增失败"),
    MATERIAL_UPDATE_SUCCESS(43,"success","物料修改成功"),
    MATERIAL_UPDATE_FAIL(44,"fail","物料修改失败"),
    MATERIAL_REMOVE_SUCCESS(45,"success","物料删除成功"),
    MATERIAL_REMOVE_FAIL(46,"fail","物料删除失败"),

    COURSE_TYPE_ADD_SUCCESS(47,"success","物料类型新增成功"),
    COURSE_TYPE_ADD_FAIL(48,"fail","物料类型新增失败"),
    COURSE_TYPE_UPDATE_SUCCESS(49,"success","物料修改成功"),
    COURSE_TYPE_UPDATE_FAIL(50,"fail","物料修改失败"),
    COURSE_TYPE_REMOVE_SUCCESS(51,"success","物料删除成功"),
    COURSE_TYPE_REMOVE_FAIL(52,"fail","物料删除失败"),

    ACTIVITY_THEME_ADD_SUCCESS(53,"success","活动主题新增成功"),
    ACTIVITY_THEME_ADD_FAIL(54,"fail","活动主题新增失败"),
    ACTIVITY_THEME_UPDATE_SUCCESS(55,"success","活动主题修改成功"),
    ACTIVITY_THEME_UPDATE_FAIL(56,"fail","活动主题修改失败"),
    ACTIVITY_THEME_REMOVE_SUCCESS(57,"success","活动主题删除成功"),
    ACTIVITY_THEME_REMOVE_FAIL(58,"fail","活动主题删除失败"),


    INFORMATION_ADD_SUCCESS(59,"success","活动基本信息新增成功"),
    INFORMATION_ADD_FAIL(60,"fail","活动基本信息新增失败"),
    INFORMATION_UPDATE_SUCCESS(61,"success","活动基本信息修改成功"),
    INFORMATION_UPDATE_FAIL(62,"fail","活动基本信息修改失败"),
    INFORMATION_REMOVE_SUCCESS(63,"success","活动基本信息删除成功"),
    INFORMATION_REMOVE_FAIL(64,"fail","活动基本信息删除失败"),

    CLASS_INFORMATION_ADD_SUCCESS(65,"success","班级信息新增成功"),
    CLASS_INFORMATION_ADD_FAIL(66,"fail","班级信息新增失败"),
    CLASS_INFORMATION_UPDATE_SUCCESS(67,"success","班级信息修改成功"),
    CLASS_INFORMATION_UPDATE_FAIL(68,"fail","班级信息修改失败"),
    CLASS_INFORMATION_REMOVE_SUCCESS(69,"success","班级信息删除成功"),
    CLASS_INFORMATION_REMOVE_FAIL(70,"fail","班级信息删除失败"),

    CLASS_TYPE_ADD_SUCCESS(71,"success","班级类型新增成功"),
    CLASS_TYPE_ADD_FAIL(72,"fail","班级类型新增失败"),
    CLASS_TYPE_UPDATE_SUCCESS(73,"success","班级类型修改成功"),
    CLASS_TYPE_UPDATE_FAIL(74,"fail","班级类型修改失败"),
    CLASS_TYPE_REMOVE_SUCCESS(75,"success","班级类型删除成功"),
    CLASS_TYPE_REMOVE_FAIL(76,"fail","班级类型删除失败"),

    ARCHWAY_ADD_SUCCESS(77,"success","拱门类型新增成功"),
    ARCHWAY_ADD_FAIL(78,"fail","拱门类型新增失败"),
    ARCHWAY_UPDATE_SUCCESS(79,"success","拱门类型修改成功"),
    ARCHWAY_UPDATE_FAIL(80,"fail","拱门类型修改失败"),
    ARCHWAY_REMOVE_SUCCESS(81,"success","拱门类型删除成功"),
    ARCHWAY_REMOVE_FAIL(82,"fail","拱门类型删除失败"),

    FIGURE_ADD_SUCCESS(83,"success","人偶新增成功"),
    FIGURE_ADD_FAIL(84,"fail","人偶新增失败"),
    FIGURE_UPDATE_SUCCESS(85,"success","人偶修改成功"),
    FIGURE_UPDATE_FAIL(86,"fail","人偶修改失败"),
    FIGURE_REMOVE_SUCCESS(87,"success","人偶删除成功"),
    FIGURE_REMOVE_FAIL(88,"fail","人偶删除失败"),

    RING_DESCRIPTION_ADD_SUCCESS(89,"success","环境创设新增成功"),
    RING_DESCRIPTION_ADD_FAIL(90,"fail","环境创设新增失败"),
    RING_DESCRIPTION_UPDATE_SUCCESS(91,"success","环境创设修改成功"),
    RING_DESCRIPTION_UPDATE_FAIL(92,"fail","环境创设修改失败"),
    RING_DESCRIPTION_REMOVE_SUCCESS(93,"success","环境创设删除成功"),
    RING_DESCRIPTION_REMOVE_FAIL(94,"fail","环境创设删除失败"),

    SYS_USER_ADD_SUCCESS(95,"success","子管理员新增成功"),
    SYS_USER_ADD_FAIL(96,"fail","子管理员新增失败"),
    SYS_USER_UPDATE_SUCCESS(97,"success","子管理员修改成功"),
    SYS_USER_UPDATE_FAIL(98,"fail","子管理员修改失败"),
    SYS_USER_REMOVE_SUCCESS(99,"success","子管理员删除成功"),
    SYS_USER_REMOVE_FAIL(100,"fail","子管理员删除失败"),

    SYS_USER_PASSWORD_SUCCESS(101,"success","子管理员密码修改成功"),
    SYS_USER_PASSWORD_FAIL(102,"fail","子管理员密码修改失败"),

    FRANCHISEE_ADD_SUCCESS(103,"success","加盟商账号注册成功，待后台管理员审核通过后才能登陆"),
    FRANCHISEE_ADD_FAIL(104,"fail","加盟商账号注册失败"),
    FRANCHISEE_REMOVE_SUCCESS(105,"success","加盟商删除成功"),
    FRANCHISEE_REMOVE_FAIL(106,"fail","加盟商删除失败"),
    FRANCHISEE_AUDIT_SUCCESS(107,"success","加盟商审核通过"),
    FRANCHISEE_AUDIT_FAIL(108,"fail","加盟商审核不通过"),
    FRANCHISEE_UPDATE_SUCCESS(109,"success","加盟商修改成功"),
    FRANCHISEE_UPDATE_FAIL(110,"fail","加盟商修改失败"),
    FRANCHISEE_LOGIN_SUCCESS(111,"success","加盟商登陆成功"),
    FRANCHISEE_LOGIN_FAIL(112,"fail","加盟商登陆失败"),
    FRANCHISEE_LOGIN_ERROR(113,"error","加盟商账号未启封，不能登录"),

    SUPPLIER_ADD_SUCCESS(113,"success","供应商账号注册成功，待后台管理员启用后才能登陆"),
    SUPPLIER_ADD_FAIL(114,"fail","供应商账号注册失败"),
    SUPPLIER_REMOVE_SUCCESS(115,"success","供应商删除成功"),
    SUPPLIER_REMOVE_FAIL(116,"fail","供应商删除失败"),
    SUPPLIER_AUDIT_SUCCESS(117,"success","供应商审核通过"),
    SUPPLIER_AUDIT_FAIL(118,"fail","供应商审核不通过"),
    SUPPLIER_UPDATE_SUCCESS(119,"success","供应商信息修改成功"),
    SUPPLIER_UPDATE_FAIL(120,"fail","供应商信息修改失败"),
    SUPPLIER_LOGIN_SUCCESS(121,"success","供应商登陆成功"),
    SUPPLIER_LOGIN_FAIL(122,"fail","供应商登陆失败"),
    SUPPLIER_LOGIN_ERROR(123, "error","供应商账号商未启用，不能登录"),

    FRANCHISEE_UPDATE_PWD_SUCCESS(124,"success","加盟商密码修改成功"),
    FRANCHISEE_UPDATE_PWD_FAIL(125,"fail","加盟商密码修改失败"),

    SUPPLIER_UPDATE_PWD_SUCCESS(126,"success","供应商密码修改成功"),
    SUPPLIER_UPDATE_PWD_FAIL(127,"fail","供应商密码修改失败"),

    PROPERTIES_ADD_SUCCESS(128,"success","游戏属性新增成功"),
    PROPERTIES_ADD_FAIL(129,"fail","游戏属性新增失败"),
    PROPERTIES_UPDATE_SUCCESS(130,"success","游戏属性修改成功"),
    PROPERTIES_UPDATE_FAIL(131,"fail","游戏属性修改失败"),
    PROPERTIES_REMOVE_SUCCESS(132,"success","游戏属性删除成功"),
    PROPERTIES_REMOVE_FAIL(133,"fail","游戏属性删除失败"),

    SCHEME_ADD_SUCCESS(134,"success","方案模板新增成功"),
    SCHEME_ADD_FAIL(135,"fail","方案模板新增失败"),
    SCHEME_UPDATE_SUCCESS(136,"success","方案模板修改成功"),
    SCHEME_UPDATE_FAIL(138,"fail","方案模板修改失败"),
    SCHEME_REMOVE_SUCCESS(139,"success","方案模板删除成功"),
    SCHEME_REMOVE_FAIL(140,"fail","方案模板删除失败"),

    ATTENDANCECARD_ADD_SUCCESS(141,"success","游园卡模板新增成功"),
    ATTENDANCECARD_ADD_FAIL(142,"fail","游园卡模板新增失败"),
    ATTENDANCECARD_UPDATE_SUCCESS(143,"success","游园卡模板修改成功"),
    ATTENDANCECARD_UPDATE_FAIL(144,"fail","游园卡模板修改失败"),
    ATTENDANCECARD_REMOVE_SUCCESS(145,"success","游园卡模板删除成功"),
    ATTENDANCECARD_REMOVE_FAIL(146,"fail","游园卡模板删除失败");


    private Integer code;
    private String result;
    private String message;

    ControllerStatusEnum(Integer code, String result, String message) {
        this.code = code;
        this.result = result;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
