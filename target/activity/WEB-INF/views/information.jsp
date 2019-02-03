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
    <title>活动基本信息表</title>
</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">活动基本信息新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="activityTheme">活动主题</label>
                        <input type="text" class="form-control" id="activityTheme" name="activityTheme" placeholder="请选择活动主题">
                    </div>
                    <div class="form-group">
                        <label for="activityTime">活动时间</label>
                        <input type="text" class="form-control" id="activityTime" name="activityTime" placeholder="请选择活动主题">
                    </div>
                    <div class="form-group">
                        <label for="activityAddress">活动地址</label>
                        <input type="text" class="form-control" id="activityAddress" name="activityAddress" placeholder="请输入活动地址">
                    </div>
                    <div class="form-group">
                        <label for="site">活动场地</label>
                        <input type="text" class="form-control" id="site" name="site" placeholder="请选择活动场地">
                    </div>
                    <div class="form-group">
                        <label for="rewardType">奖杯类型</label>
                        <select class="selectpicker show-tick form-control" id="rewardType" name="rewardType" title="请选择奖杯类型" data-live-search="true">
                            <option value="0">奖杯</option>
                            <option value="1">奖牌</option>
                            <option value="2">奖状</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="rewardCount">奖杯数量</label>
                        <input type="Number" class="form-control" id="rewardCount" name="rewardCount" placeholder="请输入奖杯数量">
                    </div>
                    <div class="form-group">
                        <label for="rewardContent">奖杯/奖牌文字内容</label>
                        <input type="text" class="form-control" id="rewardContent" name="rewardContent" placeholder="请输入奖杯/奖牌文字内容">
                    </div>
                    <div class="form-group">
                        <label for="decorate">布置装饰</label>
                        <input type="text" class="form-control" id="decorate" name="decorate" placeholder="请选择布置装饰">
                    </div>
                    <div class="form-group">
                        <label for="additionalPaidItem">另收费项目</label>
                        <select class="selectpicker show-tick form-control" id="additionalPaidItem" name="rewardType" title="请选择奖杯类型" data-live-search="true">
                            <option value="0">奖杯</option>
                            <option value="1">奖牌</option>
                            <option value="2">奖状</option>
                        </select>
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
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form1">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">课程类型修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="informationId" name="informationId">
                    <div class="form-group">
                        <label for="activityTheme1">活动主题</label>
                        <input type="text" class="form-control" id="activityTheme1" name="activityTheme" placeholder="请选择活动主题">
                    </div>
                    <div class="form-group">
                        <label for="activityTime1">活动时间</label>
                        <input type="text" class="form-control" id="activityTime1" name="activityTime" placeholder="请选择活动主题">
                    </div>
                    <div class="form-group">
                        <label for="activityAddress1">活动地址</label>
                        <input type="text" class="form-control" id="activityAddress1" name="activityAddress" placeholder="请输入活动地址">
                    </div>
                    <div class="form-group">
                        <label for="site1">活动场地</label>
                        <input type="text" class="form-control" id="site1" name="site" placeholder="请选择活动场地">
                    </div>
                    <div class="form-group">
                        <label for="rewardType1">奖杯类型</label>
                        <select class="selectpicker show-tick form-control" id="rewardType1" name="rewardType" title="请选择奖杯类型" data-live-search="true">
                            <option value="0">奖杯</option>
                            <option value="1">奖牌</option>
                            <option value="2">奖状</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="rewardCount1">奖杯数量</label>
                        <input type="Number" class="form-control" id="rewardCount1" name="rewardCount" placeholder="请输入奖杯数量">
                    </div>
                    <div class="form-group">
                        <label for="rewardContent1">奖杯/奖牌文字内容</label>
                        <input type="text" class="form-control" id="rewardContent1" name="rewardContent" placeholder="请输入奖杯/奖牌文字内容">
                    </div>
                    <div class="form-group">
                        <label for="decorate1">布置装饰</label>
                        <input type="text" class="form-control" id="decorate1" name="decorate" placeholder="请选择布置装饰">
                    </div>
                    <div class="form-group">
                        <label for="additionalPaidItem1">另收费项目</label>
                        <select class="selectpicker show-tick form-control" id="additionalPaidItem1" name="rewardType" title="请选择奖杯类型" data-live-search="true">
                            <option value="0">奖杯</option>
                            <option value="1">奖牌</option>
                            <option value="2">奖状</option>
                        </select>
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
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'information/listAll.do',                      //请求后台的URL（*）
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
            field: 'activityId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'activityTheme',
            title: '活动主题',
            visible:true,
            align: 'center'
        },{
            field: 'activityTime',
            title: '活动时间',
            visible:true,
            align: 'center'
        },{
            field: 'activityAddress',
            title: '活动地址',
            visible:true,
            align: 'center'
        },{
            field: 'site',
            title: '活动场地',
            visible:true,
            align: 'center'
        },{
            field: 'rewardType',
            title: '奖杯类型',
            visible:true,
            align: 'center'
        },{
            field: 'rewardCount',
            title: '奖杯数量',
            visible:true,
            align: 'center'
        },{
            field: 'rewardContent',
            title: '奖杯文字内容',
            visible:true,
            align: 'center'
        },{
            field: 'decorate',
            title: '布置装饰',
            visible:true,
            align: 'center'
        },{
            field: 'additionalPaidItem',
            title: '另收费项目',
            visible:true,
            align: 'center'
        },{
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    })
     function operateFormatter(){
         return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: basePath+"information/add.do",
                 data: $("#form").serialize(),
                 success: function(data) {
                     $('#add').modal('hide');
                     window.location.reload();
                     alert(data.message);
                 },
                 fail: function (data) {
                     $('#table').bootstrapTable("refresh");
                     window.location.reload();
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
                    url: basePath + "information/update.do",
                    type:"post",
                    dataType:"json",
                    data: $("#form1").serialize(),
                    success: function(data){
                        $('#update').modal('hide');
                        window.location.reload();
                        alert(data.message);
                    },
                    error: function(data){
                        $('#table').bootstrapTable("refresh");
                        window.location.reload();
                        alert(data.message);
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#informationId').val(a[0].informationId);
        $('#activityTheme1').val(a[0].activityTheme);
        $('#activityTime1').val(a[0].activityTime);
        $('#activityAddress1').val(a[0].activityAddress);
        $('#site1').val(a[0].site);
        $('#rewardType1').val(a[0].rewardType);
        $('#rewardCount1').val(a[0].rewardCount);
        $('#rewardContent1').val(a[0].rewardContent);
        $('#decorate1').val(a[0].decorate);
        $('#additionalPaidItem1').val(a[0].additionalPaidItem);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var informationId = a[0].informationId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "information/remove.do?informationId=" + informationId,
                 context: document.body,
                 success: function (data) {
                     alert(data.message);
                     $('#table').bootstrapTable("refresh");
                 },
                 fail: function (data) {
                     alert(data.message);
                     $('#table').bootstrapTable("refresh");
                 },
             });
         }
     }
</script>
</body>
</html>