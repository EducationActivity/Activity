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
    <title>班级类型列表</title>
</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <input type="hidden" name="classInformationId" id="classInformationId" value="${classInformationId}">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">班级类型新增</h4>
                </div>
                <div class="modal-body">
                    <form id="form" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="classType">班级类型名称</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="classType" name="classType" placeholder="请输入班级类型名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="quantity">班级数量</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="quantity" name="quantity" placeholder="请输入班级数量">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfPeople">班级人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfPeople" name="numberOfPeople" placeholder="请输入班级人数">
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
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">课程类型修改</h4>
                </div>
                <div class="modal-body">
                    <form id="form1">
                    <input type="hidden" id="classId" name="classId">
                    <div class="form-group">
                        <label for="classType">班级类型名称</label>
                        <input type="text" class="form-control" id="classType1" name="classType" placeholder="请输入班级类型名称">
                    </div>
                    <div class="form-group">
                        <label for="quantity">班级数量</label>
                        <input type="Number" class="form-control" id="quantity1" name="quantity" placeholder="请输入班级数量">
                    </div>
                    <div class="form-group">
                        <label for="numberOfPeople">班级人数</label>
                        <input type="Number" class="form-control" id="numberOfPeople1" name="numberOfPeople" placeholder="请输入班级人数">
                    </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                    <button type="button" id="btn_update" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                </div>

        </div>
    </div>
</div>
<script>
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'classType/listById.do?classInformationId='+${classInformationId},                      //请求后台的URL（*）
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
            field: 'classId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'classType',
            title: '班级名称',
            visible:true,
            align: 'center'
        },{
            field: 'quantity',
            title: '班级数量',
            visible:true,
            align: 'center'
        }, {
            field: 'numberOfPeople',
            title: '班级人数',
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
     function add(){
         $("#add").modal("show");
         var classInformationId = $('#classInformationId').val();
         $("#btn_submit").on("click",function(){
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: basePath+"classType/add.do?classInformationId="+classInformationId,
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
                    url: basePath + "classType/update.do",
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
        $('#classId').val(a[0].classId);
        $('#classType1').val(a[0].classType);
        $('#quantity1').val(a[0].quantity);
        $('#numberOfPeople1').val(a[0].numberOfPeople);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var classId = a[0].classId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "classType/remove.do?classId=" + classId,
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