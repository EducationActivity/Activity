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

<table id="table">

</table>
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form1">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">活动游戏修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="gameId" name="gameId">
                    <div class="form-group">
                        <label for="gameName">游戏名称</label>
                        <input type="text" class="form-control" id="gameName" name="gameName" placeholder="请输入活动游戏的名称"/>
                    </div>
                    <div class="form-group">
                        <label for="gamePurpose">游戏目的</label>
                        <input type="text" class="form-control" id="gamePurpose" name="gamePurpose" placeholder="请输入游戏目的"/>
                    </div>
                    <div class="form-group">
                        <label for="gameObject">游戏适用对象</label>
                        <input type="text" class="form-control" id="gameObject" name="gameObject" placeholder="请输入游戏适用对象"/>
                    </div>
                    <div class="form-group">
                        <label for="numberOfPeople">场地及人数要求</label>
                        <input type="text" class="form-control" id="numberOfPeople" name="numberOfPeople" placeholder="请输入场地及人数要求"/>
                    </div>
                    <div class="form-group">
                        <label for="playTime">游戏时间</label>
                        <input type="text" class="form-control" id="playTime" name="playTime" placeholder="请输入游戏时间"/>
                    </div>
                    <div class="form-group">
                        <label for="standard">场地布置标准</label>
                        <input type="text" class="form-control" id="standard" name="standard" placeholder="请输入场地布置标准"/>
                    </div>
                    <div class="form-group">
                        <label for="storesList">游戏物料清单</label>
                        <input type="text" class="form-control" id="storesList" name="storesList" placeholder="请选择游戏物料清单"/>
                    </div>
                    <div class="form-group">
                        <label for="work">工作人员</label>
                        <input type="text" class="form-control" id="work" name="work" placeholder="请选择公作人员"/>
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

    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'activityGame/listById.do?franchiseeId='+${franchiseeId},                      //请求后台的URL（*）
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
            field: 'id',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'activity_id',
            title: '游戏名称',
            visible:true,
            align: 'center'
        }, {
            field: 'game_id',
            title: '游戏属性',
            visible:false,
            align: 'center'
        }, {
            field: 'gamePurpose',
            title: '游戏目的',
            visible:true,
            align:'center'

        },{
            field: 'gameObject',
            title: '游戏适用对象',
            visible:true,
            align:'center'
        },{
            field: 'numberOfPeople',
            title: '产地及人数要求',
            visible:true,
            align:'center'
        },{
            field: 'playTime',
            title: '游戏时间',
            visible:true,
            align:'center'
        }, {
            field: 'standard',
            title: '场地布置标准',
            visible:true,
            align:'center'
        }, {
            field: 'storesList',
            title: '游戏物料清单',
            visible:true,
            align:'center'
        }, {
            field: 'work',
            title: '工作人员',
            visible:true,
            align:'center'
        },  {
            field: 'materialStandard',
            title: '材料标准',
            visible:true,
            align:'center'
        },  {
            field: 'linkTheMaterial',
            title: '联系的材料',
            visible:true,
            align:'center'
        },  {
            field: 'playingMethod',
            title: '联系的材料',
            visible:true,
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
         return '<button href="#" class="btn btn-info btn-xs photo" data-toggle="modal" onclick="upload()"><i class="fa fa-photo"></i> 详情</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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
                    data: $("#form1").serialize(),
                    success: function(data){
                        $('#update').modal('hide')
                        window.location.reload();
                        alert(data.message);
                    },
                    error: function(data){
                        $('#table').bootstrapTable("refresh");
                        alert(data.message);
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#gameId').val(a[0].gameId);
        $('#gameName1').val(a[0].gameName);
        $('#gamePurpose1').val(a[0].gamePurpose);
        $('#gameObject1').val(a[0].gameObject);
        $('#numberOfPeople1').val(a[0].numberOfPeople);
        $('#playTime1').val(a[0].playTime);
        $('#standard1').val(a[0].standard);
        $('#storesList1').val(a[0].storesList);
        $('#work1').val(a[0].work);
        $('#materialStandard1').val(a[0].materialStandard);
        $('#linkTheMaterial1').val(a[0].linkTheMaterial);
        $('#playingMethod1').val(a[0].playingMethod);
        $('#operation1').val(a[0].operation);
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