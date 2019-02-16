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
    <title>游戏操作解说列表</title>
</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" class="form-horizontal" enctype="multipart/form-data">
                <input type="hidden" name="gameId" id="gameId" value="${gameId}">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">游戏操作新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="step">步骤</label>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="step" name="step" placeholder="请输入活动游戏步骤"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="content">具体内容</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="content" name="content" placeholder="请输入活动游戏的具体内容"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="materialInstructions">材料使用说明</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="materialInstructions" name="materialInstructions" placeholder="请输入材料使用说明"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="remark">备注</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="remark" name="remark" placeholder="请输入备注"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_add" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form1" class="form-horizontal" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">活动游戏修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="operationId" name="operationId">
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="step">步骤</label>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="step1" name="step" placeholder="请输入活动游戏步骤"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="content">具体内容</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="content1" name="content" placeholder="请输入活动游戏的具体内容"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="materialInstructions">材料使用说明</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="materialInstructions1" name="materialInstructions" placeholder="请输入材料使用说明"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="remark">备注</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="remark1" name="remark" placeholder="请输入备注"/>
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
        url: basePath + 'operation/listById.do?gameId='+${gameId},                      //请求后台的URL（*）
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
            field: 'operationId',
            title: '编号',
            visible:false,
            align: 'center'
        }, {
            field: 'step',
            title: '步骤',
            visible:true,
            align: 'center'
        }, {
            field: 'content',
            title: '具体内容',
            visible:true,
            align: 'center'
        }, {
            field: 'materialInstructions',
            title: '材料使用说明',
            visible:true,
            align:'center'
        },{
            field: 'remark',
            title: '备注',
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
         $("#btn_add").on("click",function(){
             var gameId = $("#gameId").val();
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: basePath+"operation/add.do?gameId="+gameId,
                 data:$("#form").serialize(),
                 success: function(data) {
                     alert(data.message);
                     $('#add').modal('hide');
                     window.location.reload();

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
                    url: basePath + "operation/update.do",
                    type:"post",
                    dataType:"json",
                    data: $("#form1").serialize(),
                    success: function(data){
                        alert(data.message);
                        $('#update').modal('hide')
                        window.location.reload();
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
        $('#operationId').val(a[0].operationId);
        $('#step1').val(a[0].step);
        $('#content1').val(a[0].content);
        $('#materialInstructions1').val(a[0].materialInstructions);
        $('#remark1').val(a[0].remark);
        $('#update').modal('show');
    };
     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var operationId = a[0].operationId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "operation/remove.do?operationId=" + operationId,
                 context: document.body,
                 success: function(data){
                     alert(data.message);
                     $('#update').modal('hide');
                     window.location.reload();

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