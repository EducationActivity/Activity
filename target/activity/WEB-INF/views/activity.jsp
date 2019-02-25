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
<button href="#" class="btn btn-info btn-xs plus" onclick="addSchedule()"><i class="fa fa-plus"></i> 生成进度</button>
<button href="#" class="btn btn-info btn-xs list" onclick="schedule()"><i class="fa fa-list"></i> 进度</button>
<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="game()"><i class="fa fa-edit"></i> 游戏</button>
<table id="table">

</table>

<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title" id="myModalLabel1">幼儿园活动信息修改</h4>
        </div>
            <div class="modal-body">
            <form id="updateForm" role="form" class="form-horizontal" enctype="multipart/form-data">
                <input type="hidden" name="activityId" id="activityId">
                <div class="form-group">
                    <label for="activityName" class="col-md-2 control-label">幼儿园活动名称：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="activityName" name="activityName" placeholder="请输入你要修改的幼儿园活动名称">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="themeId">活动主题：</label>
                    <div class="col-md-10">
                        <select class="selectpicker show-tick form-control" id="themeId" name="themeId" placeholder="请选择活动主题" data-live-search="true" required="true">

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="activityLeader">活动负责人：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="activityLeader" name="activityLeader" placeholder="请输入活动负责人">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="activityTime">活动时间：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="activityTime" name="activityTime" placeholder="请输入活动时间">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="activityAddress">活动地址：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="activityAddress" name="activityAddress" placeholder="请输入活动幼儿园地址">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="createDate">创建活动时间：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="createDate" name="createDate" placeholder="请输入活动备注">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="remark">活动备注：</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="remark" name="remark" placeholder="请输入活动备注">
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
            visible:false,
            align: 'center'
        },{
            field: 'linkman',
            title: '活动幼儿园联系人',
            visible:true,
            align: 'center'
        },{
            field: 'phone',
            title: '联系电话',
            visible:true,
            align: 'center'
        },{
            field: 'kindergartenName',
            title: '活动幼儿园名称',
            visible:true,
            align: 'center'
        },{
            field: 'kindergartenAddress',
            title: '活动幼儿园地址',
            visible:false,
            align: 'center'
        },{
            field: 'activityLeader',
            title: '活动负责人',
            visible:false,
            align: 'center'
        },{
            field: 'activityTime',
            title: '活动时间',
            visible:true,
            align: 'center',
            formatter:operateTMSRPFormatter
        },{
            field: 'activityAddress',
            title: '活动地址',
            visible:true,
            align: 'center'
        },{
            field: 'createDate',
            title: '活动创建时间',
            visible:false,
            align: 'center',
            formatter:operateTMSRPFormatter
        },{
            field: 'remark',
            title: '活动备注',
            visible:false,
            align: 'center'
        },{
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    });
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
    }

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
                    h += "<option value='"+data[i].themeId+"'>"+data[i].themeName+"</option>";//用appendTo声明是给谁的值
                }
                $("#themeId").append(h);
                $("#themeId1").append(h);
                // 缺一不可  
                $('#themeId').selectpicker('refresh');
                $("#themeId1").selectpicker('refresh');
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
            window.location.href = basePath+"game/listActivityPage.do?activityId="+a[0].activityId;
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
                var activityId = $('#activityId').val();
                var activityName = $('#activityName').val();
                var themeId = $('#themeId').val();
                // var linkman = $('#linkman1').val();
                // var phone = $('#phone1').val();
                // var kindergartenName = $('#kindergartenName1').val();
                // var kindergartenAddress = $('#kindergartenAddress1').val();
                var activityLeader = $('#activityLeader').val();
                var activityTime = $('#activityTime').val();
                var activityAddress = $('#activityAddress').val();
                var createDate = $('#createDate').val();
                var remark = $('#remark').val();
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url: basePath+"activity/update.do?activityId="+activityId,
                    data:{
                        activityId:activityId,
                        activityName:activityName,
                        themeId:themeId,
                        // linkman:linkman,
                        // phone:phone,
                        // kindergartenName:kindergartenName,
                        // kindergartenAddress:kindergartenAddress,
                        activityLeader:activityLeader,
                        activityTime:activityTime,
                        activityAddress:activityAddress,
                        createDate:createDate,
                        remark:remark
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
        $('#activityName').val(a[0].activityName);
        $('#themeId').selectpicker('val',a[0].themeId);
        // $('#linkman').val(a[0].linkman);
        // $('#phone').val(a[0].phone);
        // $('#kindergartenName').val(a[0].kindergartenName);
        // $('#kindergartenAddress').val(a[0].kindergartenAddress);
        $('#activityLeader').val(a[0].activityLeader);
        $('#activityTime').val(operateTMSRPFormatter(a[0].activityTime));
        $('#activityAddress').val(a[0].activityAddress);
        $('#createDate').val(operateTMSRPFormatter(a[0].createDate));
        $('#remark').val(a[0].remark);
        $('#update').modal('show');
    }

    function addSchedule(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var activityId = a[0].activityId;
            $.ajax({
                url: "${basePath}schedule/getById.do?activityId="+activityId,
                type: "post",
                dataType: "json",
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    if(data.length>0){
                        alert("该活动已生成活动进度，不用重复新增")
                    }else{
                        $.ajax({
                            url: "${basePath}kindergarten/addSchedule.do?activityId="+activityId,
                            type: "post",
                            dataType: "json",
                            contentType : "application/json;charsetset=UTF-8",
                            success: function (data){
                                alert(data.message);
                            }
                        })
                    }
                }
            })
        }
    }

    function schedule(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var activityId = a[0].activityId;
            $.ajax({
                url: "${basePath}schedule/getById.do?activityId="+activityId,
                type: "post",
                dataType: "json",
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    if(data.length>0){
                        window.location.href = "${basePath}activity/schedule.do?activityId="+activityId;
                    }else{
                        alert("还没有生成活动进度,请先去生成活动进度");
                    }
                }
            })
        }
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
