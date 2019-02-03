<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>家长信息列表</title>
</head>
<body>

<table id="table">

</table>
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">家长信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="parentsId" name="parentsId">
                    <div class="form-group">
                        <label for="name">家长姓名</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="请输入家长姓名"/>
                    </div>
                    <div class="form-group">
                        <label for="sex">性别</label>
                        <input type="text" class="form-control" id="sex" name="sex" placeholder="请选择性别"/>
                    </div>
                    <div class="form-group">
                        <label for="phone">联系电话</label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入联系电话"/>
                    </div>
                    <div class="form-group">
                        <label for="email">邮箱</label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="请输入邮箱"/>
                    </div>
                    <div class="form-group">
                        <label for="address">联系地址</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="请输入联系地址"/>
                    </div>
                    <div class="form-group">
                        <label for="kindergarten">孩子所在幼儿园</label>
                        <input type="text" class="form-control" id="kindergarten" name="kindergarten" placeholder="请输入孩子所在幼儿园"/>
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
    $('#table').bootstrapTable({
        url: basePath + 'parents/listAll.do',                      //请求后台的URL（*）
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
            field: 'parentsId',
            title: '家长编号',
            visible: true,
            align: 'center'
        }, {
            field: 'name',
            title: '姓名',
            visible: true,
            align: 'center'
        }, {
            field: 'sex',
            title: '性别',
            visible: true,
            align: 'center'
        }, {
            field: 'phone',
            title: '电话',
            visible: true,
            align: 'center'
        }, {
            field: 'email',
            title: '邮箱',
            visible: true,
            align: 'center'
        }, {
            field: 'address',
            title: '联系地址',
            visible: true,
            align: 'center'
        }, {
            field: 'kindergarten',
            title: '孩子所属幼儿园',
            visible:true,
            align: 'center'
        }, {
            field:'ID',
            title: '操作',
            align: 'center',
            formatter: operateFormatter()
        },],
    });
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
    }
    function update(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            editInfo();
            $("#btn_update").on("click",function(){
                var parentsId = $("#parentsId").val();
                var name = $("#name").val();
                var sex = $("#sex").val();
                var phone = $("#phone").val();
                var email = $("#email").val();
                var address = $("#address").val();
                var kindergarten = $("#kindergarten").val();
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url: basePath+"parents/update.do?parentsId="+a[0].parentsId,
                    data:{
                        parentsId:parentsId,
                        name:name,
                        sex:sex,
                        phone:phone,
                        email:email,
                        address:address,
                        kindergarten:kindergarten
                    },
                    success: function(){
                        $('#update').modal('hide')
                        $('#table').bootstrapTable("refresh");
                        alert("修改成功");
                    },
                    error: function(){
                        $('#table').bootstrapTable("refresh");
                        alert("修改失败");
                    }});
            });
        }
    }
    function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#parentsId').val(a[0].parentsId);
        $('#name').val(a[0].name);
        $('#sex').val(a[0].sex);
        $('#phone').val(a[0].phone);
        $('#email').val(a[0].email);
        $('#address').val(a[0].address);
        $('#kindergarten').val(a[0].kindergarten);
        $('#update').modal('show');
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
                url: basePath + "parents/remove.do?parentsId=" + a[0].parentsId,
                context: document.body,
                success: function () {
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                },
            });
        }
    }
</script>
</body>
</html>
