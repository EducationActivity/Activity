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
<button href="#" class="btn btn-info btn-xs plus" onclick="addMaterial()"><i class="fa fa-plus"></i> 生成物料</button>
<button href="#" class="btn btn-info btn-xs plus" onclick="materials()"><i class="fa fa-plus"></i> 物料详情</button>

<table id="table">

</table>

<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form1" class="form-horizontal" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">活动物料信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="materialId" name="materialId">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_update" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 显示大图模态框 -->
<div class="modal fade text-center" id="showImgModal">
    <div class="modal-dialog modal-lg" style="display: inline-block; width: auto;">
        <div class="modal-content">
            <div id="img_show">

            </div>
            <%--<img id="showImage" src="">--%>
        </div>
    </div>
</div>
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
         return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><span class="glyphicon glyphicon-pencil">编辑</span></button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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
                    // if(data.length>0){
                    //     alert("该活动已生成物料单，不用重复新增")
                    // }else{
                        $.ajax({
                            url: "${basePath}activityMaterials/addMaterials.do?activityId="+activityId,
                            type: "post",
                            dataType: "json",
                            contentType : "application/json;charsetset=UTF-8",
                            success: function (data){
                                alert(data.message);
                            }
                        })
                    // }
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
                        window.location.href = "${basePath}material/material.do?activityId="+activityId;
                    }else{
                        alert("还没有生成活动物流单,请先去生成活动物料单");
                    }
                }
            })
        }
    }
     function add(){
         $("#add").modal("show");
         $("#btn_submit").on("click",function(){
             $.ajax({
                 type:"post",
                 cache: false,
                 dataType:"json",
                 url: "${basePath}activityMaterials/add.do",
                 data:new FormData($("#form")[0]),
                 processData: false,
                 contentType: false,
                 success: function(data) {
                     $('#add').modal('hide');
                     window.location.reload();
                     alert(data.message);
                 },
                 fail: function (data) {
                     $('#table').bootstrapTable("refresh");
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
                    url: "${basePath}materials/update.do",
                    type:"post",
                    dataType:"json",
                    data: new FormData($("#form1")[0]),
                    processData: false,
                    contentType: false,
                    success: function(data){
                        $('#update').modal('hide');
                        window.location.reload();
                        alert(data.message);
                    },
                    error: function(data){
                        $('#table').bootstrapTable("refresh");
                        alert(data.message);
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#materialId').val(a[0].materialId);
        $('#materialName1').val(a[0].materialName);
        $('#themeId1').val(a[0].themeId);
        // $('#materialPicture1').val(a[0].materialPicture);
         $('#introduce1').val(a[0].introduce);
         $('#materialPrice1').val(a[0].materialPrice);
         $('#materialCount1').val(a[0].materialCount);
         $('#inventoryQuantity1').val(a[0].inventoryQuantity);
         $('#theDelivery1').val(a[0].theDelivery);
         $('#nowTheInventory1').val(a[0].nowTheInventory);
         $('#unit1').val(a[0].unit);
         $('#remark1').val(a[0].remark);
         $('#createDate1').val(changeDateFormat(a[0].createDate));//
        $('#update').modal('show');
    };
     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var materialId = a[0].materialId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: "${basePath}materials/remove.do?materialId=" + materialId,
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