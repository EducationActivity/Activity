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
    <title>活动物料列表</title>
</head>
<body>
<table id="table">

</table>
<script>
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: '<%= basePath%>activity/listAll.do',                      //请求后台的URL（*）
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
            field: 'kindergartenName',
            title: '活动幼儿园名称',
            visible:true,
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
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        },],
    })
    window.operateEvents = {
        'click .view': function (e, value, row, index) {
            showimage(row)
        },
    };
    function showimage(row)
    {
        $("#showImgModal").find("#img_show").html("<image src='"+'${basePath}'+row.materialPicture+"' class='carousel-inner img-responsive img-rounded' />");
        $("#showImgModal").modal();
    }
     function operateFormatter(){
         return '<button href="#" class="btn btn-info btn-xs plus" onclick="addMaterial()"><i class="fa fa-plus"></i> 生成物料</button>\n' +
             '<button href="#" class="btn btn-info btn-xs plus" onclick="materials()"><i class="fa fa-plus"></i> 物料详情</button>\n' +
             '<button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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


    function addMaterial(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var activityId = a[0].activityId;
            $.ajax({
                url: "${basePath}activityMaterials/listById.do?activityId="+activityId,
                type: "post",
                dataType: "json",
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    if(data.length>0){
                        alert("该活动已生成物料单，不用重复新增")
                    }else{
                        $.ajax({
                            url: "${basePath}activityMaterials/addMaterials.do?activityId="+activityId,
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

    function materials(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var activityId = a[0].activityId;
            $.ajax({
                url: "${basePath}activityMaterials/listById.do?activityId="+activityId,
                type: "post",
                dataType: "json",
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    if(data.length>0){
                        window.location.href = "${basePath}activityMaterials/activityMaterials.do?activityId="+activityId;
                    }else{
                        alert("还没有生成活动物流单,请先去生成活动物料单");
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
             var activityId = a[0].activityId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: "${basePath}activityMaterials/removeList.do?activityId=" + activityId,
                 context: document.body,
                 success: function(){
                     alert("删除成功");
                     $('#table').bootstrapTable("refresh");
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