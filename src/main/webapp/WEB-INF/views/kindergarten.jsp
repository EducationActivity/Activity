<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <script>
        var basePath = "${basePath}";
    </script>
    <title>幼儿园信息列表</title>

</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<button href="#" class="btn btn-info btn-xs plus" onclick="addSchedule()"><i class="fa fa-plus"></i> 生成进度</button>
<table id="table">

</table>
<div class="modal fade" id="kindergartenModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">幼儿园信息新增</h4>
            </div>
            <div class="modal-body">
                <form id="kindergartenForm" role="form" class="form-horizontal">
                    <fieldset>
                        <legend align="center">幼儿园基础信息描述</legend>
                    </fieldset>
                    <div class="form-group">
                        <label for="kindergartenName" class="col-sm-2 control-label">幼儿园名字：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="kindergartenName" name="kindergartenName" placeholder="请输入你要新增的幼儿园名称">
                        </div>
                        <label class="col-sm-2 control-label">幼儿园性质：</label>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="natureOfKindergarten" id="natureOfKindergarten" value="0">公办
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="natureOfKindergarten" id="natureOfKindergarten1" value="1">民办
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="kindergartenAddress">地址：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="kindergartenAddress" name="kindergartenAddress" placeholder="请输入幼儿园所在地址">
                        </div>
                        <label class="col-sm-2 control-label" for="teachingFeatures">幼儿园教学特色：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="teachingFeatures" name="teachingFeatures" placeholder="请输入你幼儿园的教学特色">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  for="linkman" class="col-sm-2 control-label">幼儿园联系人：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="linkman" name="linkman" placeholder="请输入园方联系人">
                        </div>
                        <label class="col-sm-2 control-label" for="phone">联系电话：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入联系人电话">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="themeId">活动主题：</label>
                        <div class="col-sm-4">
                            <select class="selectpicker show-tick form-control" id="themeId" name="themeId" placeholder="请选择活动主题" data-live-search="true" required="true" onselect="0">

                            </select>
                        </div>
                        <label class="col-sm-2 control-label" for="activityTime">活动时间：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="activityTime" name="activityTime" placeholder="请选择活动时间"/>
                        </div>
                    </div>
                    <br/>
                    <fieldset>
                        <legend align="center">基础信息描述</legend>
                    </fieldset>
                    <div class="form-group">
                        <label for="activityAddress" class="col-sm-2 control-label">活动地址：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="activityAddress" name="kindergartenName" placeholder="请输入你此次活动的活动地址">
                        </div>
                        <label class="col-sm-2 control-label" for="activityName">活动名称:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="activityName" name="activityName" placeholder="请输入活动名称"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">场地：</label>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="site" id="site" value="0">室内
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="site" id="site1" value="1">室外
                            </label>
                        </div>

                        <label class="col-sm-2 control-label" for="rewardType">颁奖类型：</label>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="rewardType" id="rewardType" value="0">奖牌
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="rewardType" id="rewardType1" value="1">奖杯
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="rewardType" id="rewardType2" value="2">奖状
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="rewardCount">数量：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="rewardCount" name="rewardCount" placeholder="请输入需要颁发的奖励的数量">
                        </div>

                        <label for="rewardContent" class="col-sm-2 control-label">奖杯或奖牌文字内容：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="rewardContent" name="rewardContent" placeholder="奖杯或奖牌文字内容">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="decorate" class="col-sm-2 control-label">宣传布置：</label>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="decorate" id="decorate" value="0">喷绘
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="decorate" id="decorate1" value="1">横幅
                            </label>
                        </div>

                        <label class="col-sm-2 control-label" for="additionalPaidItem">另收费项目:</label>
                        <div class="col-sm-4">
                            <div class="checkbox">
                                <label style="padding-right:30px"><input type="checkbox" name="additionalPaidItem" id="additionalPaidItem" value="0"/>摄影</label>
                                <label style="padding-right:30px"><input type="checkbox" name="additionalPaidItem" id="additionalPaidItem1" value="1"/>摄像</label>
                                <label style="padding-right:30px"><input type="checkbox" name="additionalPaidItem" id="additionalPaidItem2" value="2"/>航拍</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="size">尺寸：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="size" name="size" placeholder="请输入喷绘的尺寸大小"/>
                        </div>
                        <label class="col-sm-2 control-label" for="content">内容：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="content" name="remark" placeholder="请输入喷绘/横幅的内容"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="createDate">收到时间：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="createDate" name="createDate" placeholder="请选择收到活动时间"/>
                        </div>
                        <label class="col-sm-2 control-label" for="remark">备注：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="remark" name="remark" placeholder="请选择要填的备注"/>
                        </div>
                    </div>
                    <br/>
                    <fieldset>
                        <legend align="center">班级信息描述</legend>
                    </fieldset>
                    <%--<div class="form-group">--%>
                    <%--<label class="col-sm-1 control-label" for="quantity">小班：</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="quantity" name="quantity">--%>
                    <%--</div>--%>
                    <%--<label class="col-sm-1 control-label" for="numberOfPeople">人数</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="numberOfPeople" name="numberOfPeople">--%>
                    <%--</div>--%>
                    <%--<label class="col-sm-1 control-label" for="quantity">中班：</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="quantity1" name="quantity">--%>
                    <%--</div>--%>
                    <%--<label class="col-sm-1 control-label" for="numberOfPeople">人数</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="numberOfPeople1" name="numberOfPeople">--%>
                    <%--</div>--%>

                    <%--<label class="col-sm-1 control-label" for="quantity">大班：</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="quantity2" name="quantity">--%>
                    <%--</div>--%>
                    <%--<label class="col-sm-1 control-label" for="numberOfPeople">人数</label>--%>
                    <%--<div class="col-sm-1">--%>
                    <%--<input type="Number" class="form-control" id="numberOfPeople2" name="numberOfPeople">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="activityLeader">活动负责人：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="activityLeader" name="activityLeader" placeholder="请输入活动负责人">
                        </div>
                        <label class="col-sm-2 control-label" for="headcount">幼儿园总人数：</label>
                        <div class="col-sm-4">
                            <input type="Number" class="form-control" id="headcount" name="headcount" placeholder="请输入幼儿园总人数">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="numberOfContract">合同约定人数：</label>
                        <div class="col-sm-4">
                            <input type="Number" class="form-control" id="numberOfContract" name="numberOfContract" placeholder="请输入合同约定人数">
                        </div>
                        <label class="col-sm-2 control-label" for="numberOfTeachers">教师人数：</label>
                        <div class="col-sm-4">
                            <input type="Number" class="form-control" id="numberOfTeachers" name="numberOfTeachers" placeholder="请输入教师人数">
                        </div>
                    </div>
                    <br/>
                    <fieldset>
                        <legend align="center">环境创设描述</legend>
                    </fieldset>
                    <div class="form-group">
                        <label class="col-sm-2" for="archwayId">拱门类型：</label>
                        <div class="col-sm-4">
                            <select class="selectpicker show-tick form-control" id="archwayId" name="archwayId" title="请选择拱门类型" data-live-search="true">

                            </select>
                        </div>
                        <label class="col-sm-2" for="numberOfBalloon">气柱数量：</label>
                        <div class="col-sm-4">
                            <input type="Number" class="form-control" id="numberOfBalloon" name="numberOfBalloon" placeholder="请输入气球立柱数量"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2" for="colorOfBalloon">布置气球颜色：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="colorOfBalloon" name="colorOfBalloon" placeholder="请输入布置气球颜色"/>
                        </div>
                        <label class="col-sm-2" for="figureId">人偶类型：</label>
                        <div class="col-sm-4">
                            <select class="selectpicker show-tick form-control" id="figureId" name="figureId" title="请选择人偶" data-live-search="true">

                            </select>
                        </div>
                    </div>
                    <br/>
                    <fieldset>
                        <legend align="center">活动游戏选择</legend>
                    </fieldset>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游戏名：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="gameId" name="gameId" placeholder="选择这次活动的游戏" readonly/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">活动：</label>
                        <div class="col-sm-10" id="tree">

                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
            </div>
        </div>
    </div>
</div>



<script>
    //设置时间控件
    var option = {
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
        autoclose: true,//选中自动关闭
        clearBtn:true,
        todayBtn: true//显示今日按钮
    }
    $('#activityTime').datetimepicker(option);
    $('#activityTime1').datetimepicker(option);

    $('#createDate').datetimepicker(option);
    $('#createDate1').datetimepicker(option);
    $('#table').bootstrapTable({
        url: basePath + 'kindergarten/listAll.do',                      //请求后台的URL（*）
        method: 'GET',                      //请求方式（*）
        dataType: "json",
        pagination: true,
        search: true,
        strictSearch: true,
        striped: true,
        pageNumber:1,
        pageSize:5,
        pageList:[5, 10, 15, 20,25,30],
        showRefresh:true,
        showColumns:true,
        clickToSelect: true,// 得到查询的参数
        cache: true,//是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        locale:'zh-CN',//中文支持
        sidePagination: 'client',//客户端处理分页
    columns: [{
            checkbox: true,
            visible: true                  //是否显示复选框
        }, {
            field: 'kindergartenId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'kindergartenName',
            title: '幼儿园名称',
            visible:true,
            align: 'center'
        }, {
            field: 'linkman',
            title: '联系人',
            visible:true,
            align: 'center'
        }, {
            field: 'phone',
            title: '联系电话',
            visible:true,
            align: 'center'
         }, {
            field: 'natureOfKindergarten',
            title: '性质',
            visible:true,
            align: 'center',
            formatter: function (value, row, index) {
                if (value == 0) {
                    return "公立";
                } else {
                    return "私立";
                }
            }
        }, {
          field:'teachingFeatures',
          title:'教学特色',
          visible:true,
          align:'center'
        },{
            field: 'kindergartenAddress',
            title: '幼儿园地址',
            visible:true,
            align: 'center'
        }, {
            field: 'remark',
            title: '备注',
            visible: false,
            align: 'center'
        }, {
            field: 'activityLeader',
            title: '负责人',
            visible:true,
            align: 'center'
        }, {
            field: 'themeId',
            title: '活动主题',
            visible:false,
            align: 'center',
        }, {
            field: 'activityName',
            title: '活动名称',
            visible:false,
            align: 'center'
        }, {
            field: 'activityTime',
            title: '活动时间',
            visible:true,
            align: 'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        }, {
            field: 'activityAddress',
            title: '活动地址',
            visible:false,
            align: 'center'
        }, {
            field: 'createDate',
            title: '收到活动时间',
            visible:false,
            align: 'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        }, {
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        }],
    });
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs list" onclick="schedule()"><i class="fa fa-list"></i> 进度</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
    }
    //修改——转换日期格式(时间戳转换为datetime格式)
    //格式化时间
    function operateTMSRPFormatter(value, row, index){
        //设备信息列表格式化时间
        return changeDateFormat(value);
    }
    function changeDateFormat(cellval) {
        var dateVal = cellval + "";
        if (cellval != null) {
            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

            var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
            var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
            var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
            return date.getFullYear() + "-" + month + "-" + currentDate;
        }
    }

    //设置时间控件
    var option = {
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
        autoclose: true,//选中自动关闭
        clearBtn:true,
        todayBtn: true//显示今日按钮
    }
    $('#activityTime').datetimepicker(option);
    $('#activityTime1').datetimepicker(option);

    $('#createDate').datetimepicker(option);
    $('#createDate1').datetimepicker(option);

    $(function () {
        select();
        select2();
        select3();
        // select4();
    })
    function select(){
        $.ajax({
            url: "${basePath}activityTheme/listAll.do?ran="+Math.random(),
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].themeId+"'>"+data[i].themeName+"</option>";//用appendTo声明是给谁的值
                }
                $("#themeId").append(h);
                $("#themeId1").append(h);
                // 缺一不可  
                $('#themeId').selectpicker('refresh');
                $("#themeId1").selectpicker('refresh');
            }
        });
    }
    function select2(){
        $.ajax({
            url: "${basePath}archway/listAll.do?ran="+Math.random(),
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].archwayId+"'>"+data[i].archwayShape+"</option>";//用appendTo声明是给谁的值
                }
                $("#archwayId").append(h);
                $("#archwayId1").append(h);
                // 缺一不可  
                $('#archwayId').selectpicker('refresh');
                $("#archwayId1").selectpicker('refresh')
            }
        });
    }
    function select3(){
        $.ajax({
            url:"${basePath}figure/listAll.do?ran="+Math.random(),
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].figureId+"'>"+data[i].figureName+"</option>";//用appendTo声明是给谁的值
                }
                $("#figureId").append(h);
                $("#figureId1").append(h);
                // 缺一不可  
                $('#figureId').selectpicker('refresh');
                $("#figureId1").selectpicker('refresh')
            }
        });
    }

    function validateForm(){
        return $("#kindergartenForm").validate({
            rules: {
                kindergartenName: {
                    required:true
                },
                natureOfKindergarten:{
                    required:true
                },
                linkman: {
                    required:true
                },
                phone: {
                    required:true,
                    rangelength:[11,11]
                },
                kindergartenAddress:{
                    required:true
                },
                activityLeader:{
                    required:true
                },
                theme:{
                    required:true
                },
                activityName:{
                    required:true
                },
                activityTime:{
                    required:true
                },
                teachingFeatures:{
                    required:true
                },
                activityAddress:{
                    required:true
                },
                createDate:{
                    required:true
                },
                headcount: {
                    required:true
                },
                numberOfContract: {
                    required:true
                },
                numberOfTeachers: {
                    required:true,
                },
                colorOfBalloon: {
                    required:true
                },
                figureId: {
                    required:true
                }
            },
            messages: {
                kindergartenName: {
                    required: "幼儿园名称不能为空"
                },
                linkman: {
                    required: "园方联系人不能为空"
                },
                natureOfKindergarten:{
                    required:"幼儿园性质不能为空"
                },
                phone: {
                    required: "联系人电话不能为空",
                    rangelength: "手机号码为11位"
                },
                kindergartenAddress: {
                    required: "幼儿园地址不能为空"
                },
                activityLeader: {
                    required: "活动负责人不能为空"
                },
                theme: {
                    required: "活动主题不能为空"
                },
                activityName: {
                    required: "活动名称不能为空"
                },
                activityTime: {
                    required: "活动时间不能为空"
                },
                teachingFeatures:{
                    required:"幼儿园的特色不能为空"
                },
                activityAddress: {
                    required: "活动地址不能为空"
                },
                createDate: {
                    required: "收到活动时间不能为空"
                },
                headcount: {
                    required:"幼儿园总人数不能为空"
                },
                numberOfContract: {
                    required:"合同约定人数不能为空"
                },
                numberOfTeachers: {
                    required:"教师人数不能为空"
                },
                colorOfBalloon: {
                    required:"气球颜色不能为空"
                },
                figureId: {
                    required:"人偶类型不能为空"
                }

            },
            errorElement: "em",
            errorPlacement: function ( error, element ) {
                // Add the `help-block` class to the error element
                error.addClass( "help-block" );
                // if ( element.prop( "type" ) === "checkbox" ) {
                //     error.insertAfter( element.parent( "label" ) );
                if(element.is(':radio') || element.is(':checkbox')){
                    var eid = element.attr('name');
                    error.appendTo(element.parent("label"));
                } else {
                    error.insertAfter( element );
                }
            },
            highlight: function ( element, errorClass, validClass ) {
                $( element ).parents( ".col-sm-4" ).addClass( "has-error" ).removeClass( "has-success" );
            },
            unhighlight: function (element, errorClass, validClass) {
                $( element ).parents( ".col-sm-4" ).addClass( "has-success" ).removeClass( "has-error" );
            }
        } );
    }
    var kindergarten = [];
    var information = [];
    var classInformation = [];
    var ringDescription = [];
    var game = [];
    function add(){
        $("kindergartenModal").modal("show");
        getTree();
        $("#btn_submit").on("click",function(){
            if(validateForm().form()){
                // var kindergartenId = $("#kindergartenId").val();
                var kindergartenName = $("#kindergartenName").val();
                var linkman = $("#linkman").val();
                var phone = $("#phone").val();
                var natureOfKindergarten = $("input[name='natureOfKindergarten']:checked").val();
                var teachingFeatures = $("#teachingFeatures").val();
                var kindergartenAddress = $("#kindergartenAddress").val();
                var themeId = $("#themeId").selectpicker('val');
                var activityName = $("#activityName").val();
                var activityTime = $("#activityTime").val();
                var activityAddress = $("#activityAddress").val();
                var remark = $("#remark").val();
                var activityLeader = $("#activityLeader").val();
                var createDate = $("#createDate").val();
                kindergarten.push({"kindergartenName":kindergartenName,"linkman":linkman,"phone":phone,"natureOfKindergarten":natureOfKindergarten,"teachingFeatures":teachingFeatures,"kindergartenAddress":kindergartenAddress,"remark":remark,"activityLeader":activityLeader,"themeId":themeId,"activityName":activityName,"activityTime":activityTime,"activityAddress":activityAddress,"createDate":createDate});

                var site = $("input[name='natureOfKindergarten']:checked").val();
                var rewardType = $("input[name='rewardType']:checked").val();
                var rewardCount = $("#rewardCount").val();
                var rewardContent = $("#rewardContent").val();
                var decorate = $("input[name='decorate']:checked").val();
                var size = $("#size").val();
                var content = $("#content").val();
                var additionalPaidItem = $("input[name='additionalPaidItem']:checkbox").val();
                information.push({"site":site,"rewardType":rewardType,"rewardCount":rewardCount,"rewardContent":rewardContent,"decorate":decorate,"size":size,"content":content,"additionalPaidItem":additionalPaidItem});

                var headcount = $('#headcount').val();
                var numberOfContract = $('#numberOfContract').val();
                var numberOfTeachers = $('#numberOfTeachers').val();
                classInformation.push({"headcount":headcount,"numberOfContract":numberOfContract,"numberOfTeachers":numberOfTeachers});

                var archwayId = $('#archwayId').val();
                var numberOfBalloon = $('#numberOfBalloon').val();
                var colorOfBalloon = $('#colorOfBalloon').val();
                var figureId = $('#figureId').val();
                ringDescription.push({"archwayId":archwayId,"numberOfBalloon":numberOfBalloon,"colorOfBalloon":colorOfBalloon,"figureId":figureId})

                var jsonStr = {};
                var userId = "${franchiseeId}";
                if(userId == null && userId == ""){
                    userId = "${user.userId}";
                }
                jsonStr["kindergarten"] = kindergarten;
                jsonStr["information"] = information;
                jsonStr["classInformation"] = classInformation;
                jsonStr["ringDescription"] = ringDescription;
                jsonStr["game"] = game;
                console.log(jsonStr);
                $.ajax({
                    url: "${basePath}kindergarten/add.do?userId="+userId,
                    type: "post",
                    dataType: "json",
                    data: JSON.stringify(jsonStr),
                    contentType : "application/json;charsetset=UTF-8",
                    success: function (data){
                        alert(data.message);
                        window.location.href = "${basePath}franchisee/activityToConfirm.do";
                    }
                })
                return true;
            }else{
                return false;
            }
        });
    }

    function getTree(){
        $.ajax({
            type:"post",
            url:"${basePath}activityTheme/listTree.do",
            dataType:"json",
            success: function (data) {
                var name = "";
                // var tree = data;
                console.log(data);
                $('#tree').treeview({
                    data: data,//数据源
                    showCheckbox: false,   //是否显示复选框
                    highlightSelected: true,    //是否高亮选中
                    multiSelect: true,    //多选
                    levels : 1,
                    color: "#010A0E",
                    // onNodeSelected: function (e, m) { //Treeview 被选中事件
                    //     var id=m.tags[0];
                    //     var remark=m.text;
                    // },
                    onNodeSelected: function (event, data) {
                        game.push({"gameId":data.id,"gameName":data.text});
                        nameValue(name);
                    },
                    onNodeUnselected: function (event, data) { //Treeview 取消选中事件
                        for(var i=0;i<game.length;i++){
                            if(game[i].gameId==data.id){
                                game.splice(i,1);
                            }
                        }
                        nameValue(name)
                    },
                    error: function () {
                        alert("菜单加载失败！")
                    },
                });
            }
        })
    }

    function nameValue(name){
        for(var i in game){
            if(name.length==0){
                name += game[i].gameName;
            }else{
                name += ","+game[i].gameName;
            }

        }
        $("#gameId").val(name);
    }

    function remove() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行")
        } else if (a.length > 1) {
            alert("请选中一行");
        } else {
            $.ajax({
                dataType: "json",
                type: "post",
                url: basePath + "kindergarten/remove.do?kindergartenId=" + a[0].kindergartenId,
                context: document.body,
                success: function () {
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                },
            });
        }
    }


    // $('#classModal').on('hidden.bs.modal', function () {
    //     $("#kindergartenModal").modal("hide");
    // })
    //
</script>
</body>
</html>
