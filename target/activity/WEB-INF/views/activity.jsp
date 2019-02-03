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
    <title>活动信息列表</title>

</head>
<body>
<%--<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>--%>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">活动信息新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="activityName" class="col-md-2 control-label">活动名称</label>
                        <input type="text" class="form-control col-md-10" id="activityName" name="activityName" placeholder="请输入你要新增的活动名称">
                    </div>
                    <div class="form-group">
                        <label for="theme" class="col-md-2 control-label">活动主题</label>
                        <select class="selectpicker show-tick form-control col-md-10" id="theme" name="theme" title="请选择活动主题" data-live-search="true">

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
            <form id="form1" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">幼儿园信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="activityId" name="activityId">
                    <div class="form-group">
                        <label for="activityName">活动名称</label>
                        <input type="text" class="form-control" id="activityName1" name="activityName" placeholder="请输入你要修改的活动名称" required="true">
                    </div>
                    <div class="form-group">
                        <label for="theme">活动主题</label>
                        <select class="selectpicker show-tick form-control" id="theme1" name="theme" title="请选择活动主题" data-live-search="true" required="true">

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
    $('#table').bootstrapTable({
        url: basePath + 'activity/listAll.do',                      //请求后台的URL（*）
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
            field: 'activityName',
            title: '活动名称',
            visible:true,
            align: 'center'
        }, {
            field: 'themeId',
            title: '活动主题',
            visible:true,
            align: 'center'
        }, {
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    });
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="game()"><i class="fa fa-edit"></i> 游戏</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
    }

    window.onload = function (ev) {
        select()
    }
    function select(){
        $.ajax({
            url: basePath + "activityTheme/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].themeName+"'>"+data[i].themeName+"</option>";//用appendTo声明是给谁的值
                }
                $("#theme").append(h);
                $("#theme1").append(h);
                // 缺一不可  
                $('#theme').selectpicker('refresh');
                $("#theme1").selectpicker('refresh');
            }
        });

    }

    function add(){
        $("#add").modal("show");
        $("#btn_submit").on("click",function(){
            $.ajax({
                type:"post",
                dataType:"json",
                url: basePath+"activity/add.do",
                data:$('#form').serialize(),
                success: function() {
                    $('#add').modal('hide');
                    $('#table').bootstrapTable("refresh");
                    alert("新增成功");
                },
                fail: function () {
                    $('#table').bootstrapTable("refresh");
                    alert("新增失败");
                }
            });
        });
    }
    function game() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行")
        } else if (a.length > 1) {
            alert("请选中一行")
        } else {
            window.location.href = basePath+"game/listPage.do?activityId="+a[0].activityId;
        }
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
                var activityId = $("#activityId").val();
                var activityName = $("#activityName1").val();
                var theme = $("#theme1").val();
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url: basePath+"activity/update.do?activityId="+activityId,
                    data:{
                        activityName:activityName,
                        theme:theme
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
        $('#activityId').val(a[0].activityId);
        $('#activityName1').val(a[0].activityName);
        $('#theme1').selectpicker('val',a[0].theme);
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
                url: basePath + "activity/remove.do?activityId=" + a[0].activityId,
                context: document.body,
                success: function () {
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                },
            });
        }
    }


    $( document ).ready( function () {
        $( "#form" ).validate( {
            rules: {
                activityName: {
                    required:true,
                },
                theme:{
                    required:true,
                },
            },
            messages: {
                activityName: {
                    required: "活动名称不能为空",
                },
                theme:{
                    required: "活动主题不能为空",
                },
            },
            errorElement: "em",
            errorPlacement: function ( error, element ) {
                // Add the `help-block` class to the error element
                error.addClass( "help-block" );
                if ( element.prop( "type" ) === "checkbox" ) {
                    error.insertAfter( element.parent( "label" ) );
                } else {
                    error.insertAfter( element );
                }
            },
            highlight: function ( element, errorClass, validClass ) {
                $( element ).parents( ".col-md-10" ).addClass( "has-error" ).removeClass( "has-success" );
            },
            unhighlight: function (element, errorClass, validClass) {
                $( element ).parents( ".col-md-10" ).addClass( "has-success" ).removeClass( "has-error" );
            }
        } );
    } );
</script>

</body>
</html>
