<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <title>活动游戏列表</title>
</head>
<body>

<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 游戏新增</button>
<button href="#" class="btn btn-info btn-xs plus" onclick="addOperation()"><i class="fa fa-plus"></i> 游戏操作新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:800px">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data" class="form-horizontal">
                <input type="hidden" name="themeId" id="themeId" value="${themeId}">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">活动游戏新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gameName">游戏名称：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gameName" name="gameName" placeholder="请输入活动游戏的名称"/>
                        </div>
                        <label class="col-sm-2 control-label" for="gamePropertiesId">游戏属性：</label>
                        <div class="col-sm-4">
                            <select class="selectpicker show-tick form-control" id="gamePropertiesId" name="gamePropertiesId" title="请选择游戏属性" data-live-search="true">
                        </select>
                        </div>
                     </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gamePurpose">游戏目的：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gamePurpose" name="gamePurpose" placeholder="请输入游戏目的"/>
                        </div>
                        <label class="col-sm-2 control-label" for="gameObject">游戏适用对象：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gameObject" name="gameObject" placeholder="请输入游戏适用对象"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="numberOfPeople">场地及人数要求：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="numberOfPeople" name="numberOfPeople" placeholder="请输入场地及人数要求"/>
                        </div>
                        <label class="col-sm-2 control-label" for="playTime">游戏时间：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="playTime" name="playTime" placeholder="请输入游戏时间"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="standard">场地布置标准：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="standard" name="standard" placeholder="场地布置标准"/>
                        </div>
                        <label class="col-sm-2 control-label" for="storesList">游戏物料清单：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="storesList" name="storesList" placeholder="请选择游戏物料清单"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="work">工作人员：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="work" name="work" placeholder="请填写需要的工作人员数量"/>
                        </div>

                        <label class="col-sm-2 control-label" for="materialStandard">制作物料标准：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="materialStandard" name="materialStandard" placeholder="请输入材料标准"/>
                        </div>
                    </div>
                    <div class="form-group">

                        <label class="col-sm-2 control-label" for="linkTheMaterial">环节物料：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="linkTheMaterial" name="linkTheMaterial" placeholder="请输入联系的材料"/>
                        </div>

                        <label class="col-sm-2 control-label" for="merchant">适用商家：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="merchant" name="merchant" placeholder="请输入适用商家描述"/>
                        </div>
                     </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="playingMethod">玩法详解：</label>
                        <div class="col-sm-4">
                            <input type="textarea" class="form-control" id="playingMethod" name="playingMethod" placeholder="请输入玩法详解"/>
                        </div>
                        <label class="col-sm-2 control-label" for="rule">规则：</label>
                        <div class="col-sm-4">
                            <input type="textarea" class="form-control" id="rule" name="rule" placeholder="请输入规则描述"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gamePicture">游戏图片：</label>
                        <div class="col-sm-10">
                            <input type="file" class="file-loading" id="gamePicture" name="gPicture" placeholder="请选择相对应的游戏图片"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="teacherViedo">教师培训视频：</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-loading" id="teacherViedo" name="tViedo" placeholder="请选择教师培训视频"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="workViedo">兼职培训视频：</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-loading" id="workViedo" name="wViedo" placeholder="请输入操作"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:800px">
        <div class="modal-content">
            <form id="form1" enctype="multipart/form-data" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">活动游戏修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="gameId" name="gameId">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gameName">游戏名称：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gameName1" name="gameName" placeholder="请输入活动游戏的名称"/>
                        </div>
                        <label class="col-sm-2 control-label" for="gamePropertiesId">游戏属性：</label>
                        <div class="col-sm-4">
                            <select class="selectpicker show-tick form-control" id="gamePropertiesId1" name="gamePropertiesId" title="请选择游戏属性" data-live-search="true">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gamePurpose">游戏目的：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gamePurpose1" name="gamePurpose" placeholder="请输入游戏目的"/>
                        </div>
                        <label class="col-sm-2 control-label" for="gameObject">游戏适用对象：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="gameObject1" name="gameObject" placeholder="请输入游戏适用对象"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="numberOfPeople">场地及人数要求：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="numberOfPeople1" name="numberOfPeople" placeholder="请输入场地及人数要求"/>
                        </div>
                        <label class="col-sm-2 control-label" for="playTime">游戏时间：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="playTime1" name="playTime" placeholder="请输入游戏时间"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="standard">场地布置标准：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="standard1" name="standard" placeholder="场地布置标准"/>
                        </div>
                        <label class="col-sm-2 control-label" for="storesList">游戏物料清单：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="storesList1" name="storesList" placeholder="请选择游戏物料清单"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="work">工作人员：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="work1" name="work" placeholder="请填写需要的工作人员"/>
                        </div>

                        <label class="col-sm-2 control-label" for="materialStandard">制作物料标准：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="materialStandard1" name="materialStandard" placeholder="请输入材料标准"/>
                        </div>
                    </div>
                    <div class="form-group">

                        <label class="col-sm-2 control-label" for="linkTheMaterial">环节物料：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="linkTheMaterial1" name="linkTheMaterial" placeholder="请输入环节物料"/>
                        </div>

                        <label class="col-sm-2 control-label" for="merchant">适用商家：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="merchant1" name="merchant" placeholder="请输入适用商家描述"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="playingMethod">玩法详解：</label>
                        <div class="col-sm-4">
                            <input type="textarea" class="form-control" id="playingMethod1" name="playingMethod" placeholder="请输入玩法详解"/>
                        </div>
                        <label class="col-sm-2 control-label" for="rule">规则：</label>
                        <div class="col-sm-4">
                            <input type="textarea" class="form-control" id="rule1" name="rule" placeholder="请输入规则描述"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="gamePicture">游戏图片：</label>
                        <div class="col-sm-10">
                            <input type="file" class="file-loading" id="gamePicture1" name="gPicture" placeholder="请选择相对应的游戏图片"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="teacherViedo">教师培训视频：</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-loading" id="teacherViedo1" name="tViedo" placeholder="请选择教师培训视频"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="workViedo">兼职培训视频：</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-loading" id="workViedo1" name="wViedo" placeholder="请输入操作"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_update" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    //初始化文件上传插件
    var viedoOptions = {
        dropZoneTitle : "请上传小于200M的视频！",
        language:'zh',//设置语言
        // uploadUrl:basePath+'activityPhotos/upload.do',//上传的地址
        allowedFileExtensions:['asx','asf','mpg','wmv','3gp','mp4','mov','avi','flv'],//接收的文件后缀
        uploadAsync:true,//采用同步上传
        enctype:'multipart/form-data',
        validateInitialCount:false,
        showUpload: false,
        maxFileSize:200*1024*1024,//单位为kb，如果为0表示不限制文件大小
        removeFromPreviewOnError: true,                 //当文件不符合规则，就不显示预览
        showCaption: true,
        msgSelected:"{n} {files} select",
    };
    $("#teacherViedo").fileinput(viedoOptions);
    $("#teacherViedo1").fileinput(viedoOptions);
    $("#workViedo").fileinput(viedoOptions);
    $("#workViedo1").fileinput(viedoOptions);
    //设置时间控件
    var option = {
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
        autoclose: true,//选中自动关闭
        clearBtn:true,
        todayBtn: true//显示今日按钮
    }
    $('#time').datetimepicker(option);
    $('#time1').datetimepicker(option);
    //初始化文件上传插件
    var options = {
        dropZoneTitle : "请选择一张游戏相关的图片进行上传",
        language:'zh',//设置语言
        // uploadUrl:basePath+'activityPhotos/upload.do',//上传的地址
        allowedFileExtensions:['jpg','gif','png','jpeg'],//接收的文件后缀
        uploadAsync:true,//采用同步上传
        // maxFileCount:100, //表示允许同时上传的最大文件个数
        enctype:'multipart/form-data',
        validateInitialCount:true,
        showUpload: false,
        maxFileSize:5*1024*1024,//单位为kb，如果为0表示不限制文件大小
        removeFromPreviewOnError: true,                 //当文件不符合规则，就不显示预览
        showCaption: true,
        msgSelected:"{n} {files} select",
    };
    $("#gamePicture").fileinput(options);
    $("#gamePicture1").fileinput(options);
    fodderType = function() {
        var fileInput = document.getElementById("pictures");
        // files 是一个 FileList 对象(类似于NodeList对象)
        var files = fileInput.files;
        return files.length;
    };

    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'game/listById.do?themeId='+${themeId},                      //请求后台的URL（*）
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
        showColumns:true,//列是否全部显示
        clickToSelect: true,// 得到查询的参数
        cache: true,//是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        locale:'zh-CN',//中文支持
        sidePagination: 'client',//客户端处理分页
        columns: [{
            checkbox: true,
            visible: true                  //是否显示复选框
        }, {
            field: 'gameId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'gameName',
            title: '游戏名称',
            visible:true,
            align: 'center'
        }, {
            field: 'gamePropertiesId',
            title: '游戏属性',
            visible:false,
            align: 'center'
        }, {
            field: 'themeId',
            title: '适合主题类型',
            visible:false,
            align: 'center'
        }, {
            field: 'gamePurpose',
            title: '游戏目的',
            visible:true,
            align:'center'

        },{
            field: 'gamePicture',
            title: '游戏图片',
            visible:true,
            align:'center',
            formatter:function(value,row,index){
                var s;
                var url = row.gamePicture;
                if(url != null && url != ""){
                    s = '<a class ="view" href="javascript:void(0)"><img src="'+basePath+url+'" class="file-preview-image" style="width:160px;height:80px;max-width:100%;max-height:100%"/></a>';
                }
                return s;
            },
        },{
            field: 'gameObject',
            title: '游戏适用对象',
            visible:true,
            align:'center'
        },{
            field: 'numberOfPeople',
            title: '场地及人数要求',
            visible:true,
            align:'center'
        },{
            field: 'playTime',
            title: '游戏时间',
            visible:true,
            align:'center'
        }, {
            field: 'standard',
            title: '教室布置标准',
            visible:false,
            align:'center'
        }, {
            field: 'storesList',
            title: '游戏物料清单',
            visible:false,
            align:'center'
        }, {
            field: 'work',
            title: '工作人员',
            visible:true,
            align:'center'
        },  {
            field: 'materialStandard',
            title: '制作物料标准',
            visible:true,
            align:'center'
        },  {
            field: 'linkTheMaterial',
            title: '环节物料',
            visible:true,
            align:'center'
        }, {
            field: 'merchant',
            title: '适用商家描述',
            visible:true,
            align:'center'
        },{
            field: 'playingMethod',
            title: '玩法',
            visible:false,
            align:'center'
        },{
            field: 'rule',
            title: '规则',
            visible:false,
            align:'center'
        },{
            field: 'teacherViedo',
            title: '教师培训视频',
            visible:false,
            align:'center'
        },{
            field: 'workViedo',
            title: '兼职培训视频',
            visible:false,
            align:'center'
        },{
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    })
     function operateFormatter(){
         return '<button href="#" class="btn btn-info btn-xs photo" data-toggle="modal" onclick="details()"><i class="glyphicon glyphicon-search"></i> 详情</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
     };
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

    function details(){
        // var a = $("#table").bootstrapTable('getSelections');
        // if (a.length <= 0) {
        //     alert("请选中行");
        // } else if (a.length > 1){
        //     alert("请选中一行");
        // }else {
        //     var gameId = a[0].gameId;
        //     $.ajax({
        //         type:"post",
        //         cache: false,
        //         dataType:"json",
        //         url: basePath+"operation/listById.do?operationId="+gameId,
        //         success(data){
        //             if(data.length>0){
        //                 $()
        //             }
        //         }
        //     })
        // }
    }
     function add(){
         $("#add").modal("show");
         $("#btn_submit").on("click",function(){
             var themeId = $("#themeId").val();
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: basePath+"game/add.do?themeId="+themeId,
                 data:new FormData($("#form")[0]),
                 processData: false,
                 contentType: false,
                 success: function(data) {
                     $('#add').modal('hide');
                     window.location.reload();
                     alert(data.message);
                 },
                 fail: function (data) {
                     $('#table').bootstrapTable("refresh");
                     alert(data.message);
                 }
             });
         });
     };

    function addOperation(){
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行");
        } else if (a.length > 1){
            alert("请选中一行");
        }else {
            window.location.href = basePath+"operation/listPage.do?gameId="+a[0].gameId;
        }
    }
    window.onload = function (ev) {
        select()
    }
    function select(){
        $.ajax({
            url: basePath + "properties/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].gamePropertiesId+"'>"+data[i].gameProperties+"</option>";//用appendTo声明是给谁的值
                }
                $("#gamePropertiesId").append(h);
                $("#gamePropertiesId1").append(h);
                // 缺一不可  
                $('#gamePropertiesId').selectpicker('refresh');
                $("#gamePropertiesId1").selectpicker('refresh');
            }
        });

    }
     function update() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行");
        } else if (a.length > 1){
            alert("请选中一行");
        }else{
            editInfo();
            $("#btn_update").on("click",function(){
                $.ajax({
                    url: basePath + "game/update.do",
                    type:"post",
                    dataType:"json",
                    data: new FormData($("#form1")[0]),
                    processData: false,
                    contentType: false,
                    success: function(data){
                        alert(data.message);
                        $('#update').modal('hide')
                        window.location.reload();
                    },
                    error: function(data){
                        alert(data.message);
                        $('#table').bootstrapTable("refresh");
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#gameId').val(a[0].gameId);
        $('#gameName1').val(a[0].gameName);
        $('#gamePropertiesId1').val(a[0].gamePropertiesId);
        $('#themeId1').val(a[0].themeId);
        $('#gamePurpose1').val(a[0].gamePurpose);
        // $('#gamePicture1').val(a[0].gamePicture);
        $('#gameObject1').val(a[0].gameObject);
        $('#numberOfPeople1').val(a[0].numberOfPeople);
        $('#playTime1').val(a[0].playTime);
        $('#standard1').val(a[0].standard);
        $('#storesList1').val(a[0].storesList);
        $('#work1').val(a[0].work);
        $('#materialStandard1').val(a[0].materialStandard);
        $('#linkTheMaterial1').val(a[0].linkTheMaterial);
        $('#playingMethod1').val(a[0].playingMethod);
        $('#rule1').val(a[0].rule);
        $('#merchant1').val(a[0].merchant);
        // $('#teacherViedo1').val(a[0].teacherViedo);
        // $('#workViedo1').val(a[0].workViedo);
        $('#update').modal('show');
    };
     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var gameId = a[0].gameId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "game/remove.do?gameId=" + gameId,
                 context: document.body,
                 success: function(data){
                     $('#update').modal('hide');
                     window.location.reload();
                     alert(data.message);
                 },
                 error: function(data){
                     $('#table').bootstrapTable("refresh");
                     alert(data.message);
                 }
             });
         }
     }
</script>
</body>
</html>