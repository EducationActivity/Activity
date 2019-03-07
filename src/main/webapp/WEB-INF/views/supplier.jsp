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
    <title>供应商列表</title>
</head>
<body>
<section class="content-header">
    <h1>
        供应商管理
        <small>供应商管理</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 后台首页</a></li>
        <li class="active">供应商管理</li>
    </ol>

</section>
<section class="content">
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
</section>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="addForm" enctype="multipart/form-data" class="form-horizontal">
                <input type="hidden" name="supplierId" id="supplierId1">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">供应商账号新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="supplierName" class="col-md-2">供应商姓名</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="supplierName1" name="supplierName" placeholder="请输入供应商姓名"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="loginName" class="col-md-2">登录名</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="loginName1" name="loginName" placeholder="请输入登录名"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-md-2">电话</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="phone1" name="phone" placeholder="请输入电话"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-md-2">邮箱</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="email1" name="email" placeholder="请输入邮箱"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-md-2">所在地</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="address1" name="address" placeholder="请输入所在地"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="audit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" method="post">
                <input type="hidden" name="supplierId" id="supplierId">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">供应商信息审核</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="supplierName">供应商姓名</label>
                        <input type="text" class="form-control" id="supplierName" name="supplierName" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="loginName">登录名</label>
                        <input type="text" class="form-control" id="loginName" name="loginName" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="phone">电话</label>
                        <input type="text" class="form-control" id="phone" name="phone" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="email">邮箱</label>
                        <input type="text" class="form-control" id="email" name="email" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="address">所在地</label>
                        <input type="text" class="form-control" id="address" name="address" readonly/>
                    </div>
                    <%--<div class="form-group">--%>
                        <%--<label for="type">类型</label>--%>
                        <%--<input type="text" class="form-control" id="type" name="type" readonly/>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <label for="createDate">申请时间</label>
                        <input type="text" class="form-control" id="createDate" name="createDate" readonly/>
                    </div>
                    <div class="form-group">
                        <label for="status">状态</label>
                        <select class="selectpicker show-tick form-control" id="status" name="status">
                            <option value="0">禁用</option>
                            <option value="1">启用</option>
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
        url: basePath + 'supplier/listAll.do',                      //请求后台的URL（*）
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
            field: 'supplierId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'supplierName',
            title: '供应商名字',
            visible:true,
            align: 'center'
        }, {
            field: 'loginName',
            title: '登录名',
            visible:true,
            align: 'center'
        },{
            field: 'phone',
            title: '电话',
            visible:true,
            align:'center',
        },{
            field: 'email',
            title: '邮箱',
            visible:true,
            align:'center',
        }, {
            field: 'address',
            title: '所在地',
            visible:true,
            align: 'center'
        },{
            field: 'type',
            title: '类型',
            visible:false,
            align: 'center'
        }, {
            field: 'status',
            title: '状态',
            visible:true,
            align:'center',
            formatter:statusFormatter
        },{
            field: 'createDate',
            title: '申请时间',
            visible:true,
            align:'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        },{
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    })
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="audit()"><i class="fa fa-edit"></i> 审核</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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

    function add() {
        $("#add").modal("show");
        $("#submit").on("click",function(){
            $.ajax({
                url: basePath+"supplier/add.do",
                type:"post",
                dataType:"json",
                data: $("#addForm").serialize(),
                success: function(data){
                    $('#add').modal('hide');
                    alert(data.message);
                    $("#table").bootstrapTable("refresh");
                },
                error: function(data){
                    window.location.reload();
                    alert(data.message);
                }
            });
        });
    };

    function audit() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行");
        } else if (a.length > 1){
            alert("请选中一行");
        }else{
            editInfo();
            $("#btn_update").on("click",function(){
                $.ajax({
                    url: basePath+"supplier/audit.do",
                    type:"post",
                    dataType:"json",
                    data: $("#form").serialize(),
                    success: function(data){
                        $('#table').modal('hide')
                        window.location.reload();
                        alert(data.message);
                    },
                    error: function(data){
                        window.location.reload();
                        alert(data.message);
                    }
                });
            });
        }
    };

    function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#supplierId').val(a[0].supplierId);
        $('#supplierName').val(a[0].supplierName);
        $('#loginName').val(a[0].loginName);
        $('#phone').val(a[0].phone);
        $('#email').val(a[0].email);
        $('#address').val(a[0].address);
        $('#createDate').val(changeDateFormat(a[0].createDate));
        $('#status').selectpicker('val', a[0].status);
        $('#audit').modal('show');
    };
    function remove() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行")
        } else if (a.length > 1) {
            alert("请选中一行");
        } else {
            var supplierId = a[0].supplierId;
            $.ajax({
                dataType: "json",
                type: "post",
                url: basePath + "supplier/remove.do?supplierId=" + supplierId,
                context: document.body,
                success: function(){
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                },
            });
        }
    }
    function statusFormatter(value,row,index){
        if(value == 1){
            return "启用";
        }else{
            return "禁用";
        }
    }
</script>
</body>
</html>