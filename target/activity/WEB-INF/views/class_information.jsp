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
    <title>班级信息列表</title>
</head>
<body>
<%--<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>--%>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">班级信息新增</h4>
                </div>
                <div class="modal-body">
                    <form id="form" method="post" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="headcount" class="control-label">总人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="headcount" name="headcount" placeholder="请输入幼儿园总人数" class="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfContract" class="control-label">约定人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfContract" name="numberOfContract" placeholder="请输入合同约定人数" class="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfTeachers" class="control-label">教师人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfTeachers" name="numberOfTeachers" placeholder="请输入教师人数" >
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
            <form id="form1">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">课程类型修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="classInformationId" name="classInformationId">
                    <div class="form-group">
                        <label for="headcount">幼儿园总人数</label>
                        <input type="Number" class="form-control" id="headcount1" name="headcount" placeholder="请输入幼儿园总人数">
                    </div>
                    <div class="form-group">
                        <label for="numberOfContract">合同约定人数</label>
                        <input type="Number" class="form-control" id="numberOfContract1" name="numberOfContract" placeholder="请输入合同约定人数">
                    </div>
                    <div class="form-group">
                        <label for="numberOfTeachers">教师人数</label>
                        <input type="Number" class="form-control" id="numberOfTeachers1" name="numberOfTeachers" placeholder="请输入教师人数">
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
        url: basePath + 'classInformation/listAll.do',                      //请求后台的URL（*）
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
        },{
            field: 'classInformationId',
            title: '编号',
            visible:true,
            align: 'center'
        },  {
            field: 'headcount',
            title: '幼儿园总人数',
            visible:true,
            align: 'center'
        }, {
            field: 'numberOfContract',
            title: '合同约定人数',
            visible:true,
            align: 'center'
        }, {
            field: 'numberOfTeachers',
            title: '教师人数',
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
         return '<button href="#" class="btn btn-info btn-xs list" onclick="details()"><i class="fa fa-list"></i> 详情</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
     };
    function details() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行");
        } else if (a.length > 1) {
            alert("请选中一行");
        } else {
            var classInformationId = a[0].classInformationId;
            window.location.href = basePath + "classType/listPage.do?classInformationId="+classInformationId
        }
    }
    // function validateForm(){
    //     return $("#form").validate( {
    //         rules: {
    //             headcount: {
    //                 required:true
    //             },
    //             numberOfContract: {
    //                 required: true
    //             }
    //         },
    //         messages: {
    //             headcount: {
    //                 required: "幼儿园总人数不能为空"
    //             },
    //             numberOfContract: {
    //                 required: "合同约定人数不能为空"
    //             }
    //         },
    //         errorElement: "em",
    //         errorPlacement: function ( error, element ) {
    //             // Add the `help-block` class to the error element
    //             error.addClass( "help-block" );
    //             if ( element.prop( "type" ) === "checkbox" ) {
    //                 error.insertAfter( element.parent( "label" ) );
    //             } else {
    //                 error.insertAfter( element );
    //             }
    //         },
    //         highlight: function ( element, errorClass, validClass ) {
    //             $( element ).parents( ".col-md-10" ).addClass( "has-error" ).removeClass( "has-success" );
    //         },
    //         unhighlight: function (element, errorClass, validClass) {
    //             $( element ).parents( ".col-md-10" ).addClass( "has-success" ).removeClass( "has-error" );
    //         }
    //     } );
    // }
    $(function (){
            $("#form").validate();
    });
     function add(){
         $("#add").modal("show");
         $("#btn_submit").on("click",function(){
             // if(validateForm().form()){
                 $.ajax({
                     type:"post",
                     cache: false,
                     dataType:"json",
                     url: basePath+"classInformation/add.do",
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
             // }
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
                    url: basePath + "classInformation/update.do",
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
        $('#classInformationId').val(a[0].classInformationId);
        $('#headcount1').val(a[0].headcount);
        $('#numberOfContract1').val(a[0].numberOfContract);
        $('#numberOfTeachers1').val(a[0].numberOfTeachers);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var classInformationId = a[0].classInformationId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "classInformation/remove.do?classInformationId=" + classInformationId,
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