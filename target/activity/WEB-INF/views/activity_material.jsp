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
    <title>幼儿园活动物料信息列表</title>

</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="materialAdd()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <input type="hidden" name="activityId" id="activityId" value="${activity.activityId}">
            <form id="form" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">活动物料信息新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="projectName">项目名称</label>
                        <input type="text" class="form-control" id="projectName" name="projectName" placeholder="请输入你要新增的物料项目名称">
                    </div>
                    <div class="form-group">
                        <label for="materialName">物料名称</label>
                        <input type="text" class="form-control" id="materialName" name="materialName" placeholder="请选择准备的物料名称"/>
                    </div>
                    <div class="form-group">
                        <label for="materialCount">所需物料数量</label>
                        <input type="text" class="form-control" id="materialCount" name="materialCount" placeholder="请选择所需物料数量"/>
                    </div>
                    <div class="form-group">
                        <label for="unit">单位</label>
                        <input type="text" class="form-control" id="unit" name="unit" placeholder="单位"/>
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
                    <h4 class="modal-title" id="myModalLabel1">活动物料信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="projectName">项目名称</label>
                        <input type="text" class="form-control" id="projectName1" name="projectName" placeholder="请输入你要新增的物料项目名称">
                    </div>
                    <div class="form-group">
                        <label for="materialName">物料名称</label>
                        <input type="text" class="form-control" id="materialName1" name="materialName" placeholder="请选择准备的物料名称"/>
                    </div>
                    <div class="form-group">
                        <label for="materialCount">所需物料数量</label>
                        <input type="text" class="form-control" id="materialCount1" name="materialCount" placeholder="请选择所需物料数量"/>
                    </div>
                    <div class="form-group">
                        <label for="unit">单位</label>
                        <input type="text" class="form-control" id="unit1" name="unit" placeholder="单位"/>
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
        url: basePath + 'activityMaterials/getById.do?activityId='+${activityId},                      //请求后台的URL（*）
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
            field: 'id',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'activityId',
            title: '活动编号',
            visible:true,
            align: 'center'
        }, {
            field: 'materialId',
            title: '活动编号',
            visible:true,
            align: 'center'
        }, {
            field: 'projectName',
            title: '项目名称',
            visible:true,
            align: 'center'
        }, {
            field: 'materialName',
            title: '物料名称',
            visible:true,
            align: 'center',
        }, {
            field: 'materialCount',
            title: '所需物料数量',
            visible:true,
            align: 'center',
        }, {
            field: 'unit',
            title: '单位',
            visible:true,
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
    function materialadd() {
        $("#add").modal("show");
        $("#btn_submit").on("click", function () {
            var activityId = $("#activityId").val();
            $.ajax({
                type: "post",
                dataType: "json",
                url: basePath + "material/add.do?activityId=" + activityId,
                data: $('#form').serialize(),
                success: function () {
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

    function update() {
        var a = $("#table").bootstrapTable('getSelections');
        if (a.length <= 0) {
            alert("请选中行")
        } else if (a.length > 1) {
            alert("请选中一行");
        } else {
            editInfo();
            $("#btn_update").on("click", function () {
                var scheduleId = $("#scheduleId").val();
                var activitySchedule = $("#activitySchedule1").val();
                var materialName = $("#materialName1").val();
                var finishTime = $("#finishTime1").val();
                // var finishTime = $("#finishTime1").data("datetimepicker").getDate()
                var executor = $("#executor1").val();
                var content = $("#content1").val();
                $.ajax({
                    type: "post",
                    dataType: "json",
                    url: basePath + "schedule/update.do?scheduleId=" + scheduleId,
                    data: {
                        scheduleId: scheduleId,
                        activitySchedule: activitySchedule,
                        finishTime: finishTime,
                        executor: executor,
                        content: content
                    },
                    success: function () {
                        $('#update').modal('hide')
                        $('#table').bootstrapTable("refresh");
                        alert("修改成功");
                    },
                    error: function () {
                        $('#table').bootstrapTable("refresh");
                        alert("修改失败");
                    }
                });
            });
        }
    }

    function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        var projectName = $("#projectName").val();
        var materialName = $("#materialName").val();
        var unit = $("#unit").val();
        var materialId = $("#materialId").val();

        $('#scheduleId').val(a[0].scheduleId);
        $('#activitySchedule1').val(a[0].activitySchedule);
        $('#readinessTime1').val(changeDateFormat(a[0].readinessTime));
        $('#finishTime1').val(changeDateFormat(a[0].finishTime));
        $('#executor1').val(a[0].executor);
        $('#content1').val(a[0].content);
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
                url: basePath + "schedule/remove.do?scheduleId=" + a[0].scheduleId,
                context: document.body,
                success: function () {
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                },
            });
        }
    }

    $(function () {
        $("#finishTime").datetimepicker({
            format: ' yyyy-mm-dd',  //格式  如果只有yyyy-mm-dd那就是0000-00-00
            autoclose: true,//选择后是否自动关闭
            minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
            language: 'zh-CN', //中文
            weekStart: 1, //一周从星期几开始
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            // daysOfWeekDisabled:"1,2,3", //一周的周几不能选 格式为"1,2,3"  数组格式也行
            todayBtn: true,  //在底部是否显示今天
            todayHighlight: false, //今天是否高亮显示
            keyboardNavigation: true, //方向图标改变日期  必须要有img文件夹 里面存放图标
            showMeridian: false,  //是否出现 上下午
            initialDate: new Date()
            //startDate: "2017-01-01" //日期开始时间 也可以是new Date()只能选择以后的时间
        })
        $("#finishTime1").datetimepicker({
            format: ' yyyy-mm-dd',  //格式  如果只有yyyy-mm-dd那就是0000-00-00
            autoclose: true,//选择后是否自动关闭
            minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
            language: 'zh-CN', //中文
            weekStart: 1, //一周从星期几开始
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            // daysOfWeekDisabled:"1,2,3", //一周的周几不能选 格式为"1,2,3"  数组格式也行
            todayBtn: true,  //在底部是否显示今天
            todayHighlight: false, //今天是否高亮显示
            keyboardNavigation: true, //方向图标改变日期  必须要有img文件夹 里面存放图标
            showMeridian: false,  //是否出现 上下午
            initialDate: new Date()
            //startDate: "2017-01-01" //日期开始时间 也可以是new Date()只能选择以后的时间
        })
    })
</script>
</body>
</html>
