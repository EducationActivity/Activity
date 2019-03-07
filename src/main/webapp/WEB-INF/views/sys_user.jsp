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
    <title>管理员列表</title>
</head>
<body>
<section class="content-header">
    <h1>
        后台管理员管理
        <small>管理员管理</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 后台首页</a></li>
        <li class="active">管理员管理</li>
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
            <form id="form" enctype="multipart/form-data" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">子管理员新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="loginName" class="col-md-2">登录账号</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="loginName" name="loginName" placeholder="请输入登录名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userName" class="col-md-2">用户姓名</label>
                        <div class="col-md-10">
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-md-2">联系电话</label>
                        <div class="col-md-10">
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入联系电话">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-md-2">邮箱地址</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="email" name="email" placeholder="请输入邮箱地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-md-2">联系地址</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="address" name="address" placeholder="请输入联系地址">
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
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">管理员信息修改</h4>
                </div>
                <div class="modal-body">
                    <form id="form1" class="form-horizontal" enctype="multipart/form-data">
                    <input type="hidden" id="userId1" name="userId">
                        <div class="form-group">
                            <label for="loginName" class="col-md-2">登录账号</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="loginName1" name="loginName" placeholder="请输入登录名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="userName" class="col-md-2">用户姓名</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="userName1" name="userName" placeholder="请输入用户姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-md-2">联系电话</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="phone1" name="phone" placeholder="请输入联系电话">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-md-2">邮箱地址</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="email1" name="email" placeholder="请输入邮箱地址">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-md-2">联系地址</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="address1" name="address" placeholder="请输入联系地址">
                            </div>
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
        url: basePath + 'sysUser/listAll.do',                      //请求后台的URL（*）
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
            field: 'userId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'loginName',
            title: '登录账号',
            visible:true,
            align: 'center'
        }, {
            field: 'userName',
            title: '用户姓名',
            visible:true,
            align: 'center'
        }, {
            field: 'phone',
            title: '联系电话',
            visible:true,
            align: 'center'
        }, {
            field: 'email',
            title: '邮箱地址',
            visible:true,
            align: 'center'
        }, {
            field: 'address',
            title: '联系地址',
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
        return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="updateSysUser()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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
                url: basePath+"sysUser/add.do",
                data: $("#form").serialize(),
                success: function(data) {
                    $('#add').modal('hide');
                    alert(data.message);
                    $("#table").bootstrapTable("refresh");
                },
                fail: function (data) {
                    alert(data.message);
                    $('#table').bootstrapTable("refresh");
                }
            });
        });
    };

    function updateSysUser() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行");
        } else if (a.length > 1){
            alert("请选中一行");
        }else{
            editInfo();
            $("#btn_update").on("click",function(){
                var userId = $("#userId1").val();
                var loginName = $("#loginName1").val();
                var userName = $("#userName1").val();
                var phone = $("#phone1").val();
                var email = $("#email1").val();
                var address = $("#address1").val();
                $.ajax({
                    url: basePath + "sysUser/update.do",
                    type:"post",
                    dataType:"json",
                    data: {
                        userId:userId,
                        loginName: loginName,
                        userName: userName,
                        phone: phone,
                        email: email,
                        address: address
                    },
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
        $('#userId1').val(a[0].userId);
        $('#loginName1').val(a[0].loginName);
        $('#userName1').val(a[0].userName);
        $('#phone1').val(a[0].phone);
        $('#email1').val(a[0].email);
        $('#address1').val(a[0].address);
        $('#update').modal('show');
    };

    function remove() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行")
        } else if (a.length > 1) {
            alert("请选中一行");
        } else {
            var userId = a[0].userId;
            $.ajax({
                dataType: "json",
                type: "post",
                url: basePath + "sysUser/remove.do?userId=" + userId,
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