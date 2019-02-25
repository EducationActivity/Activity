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
    <title>环境创设列表</title>
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
                    <h4 class="modal-title" id="myModalLabel">环境创设新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="archwayId">拱门类型</label>
                        <select class="selectpicker show-tick form-control" id="archwayId" name="archwayId" title="请选择拱门类型" data-live-search="true" multiple>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="numberOfBalloon">气柱数量</label>
                        <input type="Number" class="form-control" id="numberOfBalloon" name="numberOfBalloon" placeholder="请输入气球立柱数量"/>
                    </div>
                    <div class="form-group">
                        <label for="colorOfBalloon">气柱颜色</label>
                        <input type="text" class="form-control" id="colorOfBalloon" name="colorOfBalloon" placeholder="请输入气球立柱颜色"/>
                    </div>
                    <div class="form-group">
                        <label for="figureId">人偶类型</label>
                        <select class="selectpicker show-tick form-control" id="figureId" name="figureId" title="请选择人偶" data-live-search="true" multiple>

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
                    <h4 class="modal-title" id="myModalLabel1">环境创设修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="ringDescriptionId" name="ringDescriptionId">
                    <div class="form-group">
                        <label for="archwayId">拱门类型</label>
                        <select class="selectpicker show-tick form-control" id="archwayId1" name="archwayId" title="请选择拱门类型" data-live-search="true">

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="numberOfBalloon">气柱数量</label>
                        <input type="text" class="form-control" id="numberOfBalloon1" name="numberOfBalloon" placeholder="请输入气球立柱数量"/>
                    </div>
                    <div class="form-group">
                        <label for="colorOfBalloon">气柱颜色</label>
                        <input type="Number" class="form-control" id="colorOfBalloon1" name="colorOfBalloon" placeholder="请输入气球立柱颜色"/>
                    </div>
                    <div class="form-group">
                        <label for="figureId">人偶类型</label>
                        <select class="selectpicker show-tick form-control" id="figureId1" name="figureId" title="请选择人偶" data-live-search="true">

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
        url: basePath + 'ringDescription/listAll.do',                      //请求后台的URL（*）
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
            field: 'ringDescriptionId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'archwayId',
            title: '拱门类型',
            visible:true,
            align: 'center',
            formatter:type()
        },{
            field: 'numberOfBalloon',
            title: '气球立柱数量',
            visible:true,
            align: 'center'
        }, {
            field: 'colorOfBalloon',
            title: '气球立柱颜色',
            visible:true,
            align: 'center'
        },{
            field: 'figureId',
            title: '人偶名称',
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
    function select1(){
        $.ajax({
            url: basePath + "figure/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].figureId+"'>"+data[i].figureName+"</option>";//用appendTo声明是给谁的值
                }
                $("#figureId").append(h);
                $("#figureId1").append(h);
                // 缺一不可  
                $('#figureId').selectpicker('refresh');
                $("#figureId1").selectpicker('refresh')
            }
        });
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
    function type(value,index,row){
        if(value == 0){
            return "气球拱门"
        }else{
            return "充气拱门"
        }
    }
    window.onload = function (ev) {
        select();
        select1();
    }
    function select(){
        $.ajax({
            url: basePath + "archway/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].archwayId+"'>"+data[i].archwayShape;+"</option>";//用appendTo声明是给谁的值
                }
                $("#archwayId").append(h);
                $("#archwayId1").append(h);
                // 缺一不可  
                $('#archwayId').selectpicker('refresh');
                $("#archwayId1").selectpicker('refresh')
            }
        });
    }
     function add(){
         $("#add").modal("show");
         $("#btn_submit").on("click",function(){
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: basePath+"ringDescription/add.do",
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
                    url: basePath + "ringDescription/update.do",
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
        $('#ringDescriptionId').val(a[0].ringDescriptionId);
        $('#archwayId1').selectpicker('val',a[0].archwayId);
        $('#numberOfBalloon1').val(a[0].numberOfBalloon);
        $('#colorOfBalloon1').val(a[0].colorOfBalloon);
        $('#figureId1').selectpicker('val', a[0].figureId);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var ringDescriptionId = a[0].ringDescriptionId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "ringDescription/remove.do?ringDescriptionId=" + ringDescriptionId,
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