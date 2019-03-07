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
    <title>课程信息列表</title>
</head>
<body>
<section class="content-header">
    <h1>
        供应商管理
        <small>课程管理</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 后台首页</a></li>
        <li class="active">课程管理</li>
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
            <form id="form" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">课程信息新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="courseName">课程名称</label>
                        <input type="text" class="form-control" id="courseName" name="courseName" placeholder="请输入课程名称">
                    </div>
                    <div class="form-group">
                        <label for="institutions">授课机构</label>
                        <input type="text" class="form-control" id="institutions" name="institutions" placeholder="请输入授课机构"/>
                    </div>
                    <div class="form-group">
                        <label for="venue">上课地点</label>
                        <input type="text" class="form-control" id="venue" name="venue" placeholder="请输入上课地点"/>
                    </div>
                    <div class="form-group">
                        <label for="mobile">联系电话</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="请输入联系电话"/>
                    </div>
                    <div class="file-loading">
                        <label>选择课程图片</label>
                        <input type="file" multiple class="file" id="coursePicture" name="file"/>
                    </div>
                    <div class="form-group">
                        <label for="coursePrice">单次课程价格</label>
                        <input type="Number" class="form-control" id="coursePrice" name="coursePrice" placeholder="请输入课程价格"/>
                    </div>
                    <div class="form-group">
                        <label for="totalHours">课程的总课时</label>
                        <input type="Number" class="form-control" id="totalHours" name="totalHours" placeholder="请输入课程的总课时"/>
                    </div>
                    <div class="form-group">
                        <label for="courseDetails">课程详情</label>
                        <input type="text" class="form-control" id="courseDetails" name="courseDetails" placeholder="请输入课程详情"/>
                    </div>
                    <div class="form-group">
                        <label for="typeId">课程类型</label>
                        <select class="selectpicker show-tick form-control" id="typeId" name="typeId" title="请选择课程类型" data-live-search="true">

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
                    <h4 class="modal-title" id="myModalLabel1">幼儿园信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="courseId" name="courseId">
                    <div class="form-group">
                        <label for="courseName">课程名称</label>
                        <input type="text" class="form-control" id="courseName1" name="courseName" placeholder="请输入课程名称">
                    </div>
                    <div class="form-group">
                        <label for="institutions">授课机构</label>
                        <input type="text" class="form-control" id="institutions1" name="institutions" placeholder="请输入授课机构"/>
                    </div>
                    <div class="form-group">
                        <label for="venue">上课地点</label>
                        <input type="text" class="form-control" id="venue1" name="venue" placeholder="请输入上课地点"/>
                    </div>
                    <div class="form-group">
                        <label for="mobile">联系电话</label>
                        <input type="text" class="form-control" id="mobile1" name="mobile" placeholder="请输入联系电话"/>
                    </div>
                    <div class="file-loading">
                        <label>选择课程图片</label>
                        <input type="file" multiple class="file" id="coursePicture1" name="file"/>
                    </div>
                    <div class="form-group">
                        <label for="coursePrice">单次课程价格</label>
                        <input type="text" class="form-control" id="coursePrice1" name="coursePrice" placeholder="请输入课程价格"/>
                    </div>
                    <div class="form-group">
                        <label for="totalHours">课程的总课时</label>
                        <input type="Number" class="form-control" id="totalHours1" name="totalHours" placeholder="请输入课程的总课时"/>
                    </div>
                    <div class="form-group">
                        <label for="courseDetails">课程详情</label>
                        <input type="text" class="form-control" id="courseDetails1" name="courseDetails" placeholder="请输入课程详情"/>
                    </div>
                    <div class="form-group">
                        <label for="typeId1">课程类型</label>
                        <select class="selectpicker show-tick form-control" id="typeId1" name="typeId" title="请选择课程类型" data-live-search="true">
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
    //设置时间控件
    var option = {
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
        autoclose: true,//选中自动关闭
        clearBtn:true,
        todayBtn: true//显示今日按钮
    }
    $('#createDate').datetimepicker(option);
    $('#createDate1').datetimepicker(option);

    fodderType = function() {
        var fileInput = document.getElementById("coursePicture");
        // files 是一个 FileList 对象(类似于NodeList对象)
        var files = fileInput.files;
        return files.length;
    };

    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'course/listAll.do',                      //请求后台的URL（*）
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
            field: 'courseId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'courseName',
            title: '课程名称',
            visible:true,
            align: 'center'
        }, {
            field: 'institutions',
            title: '授课机构',
            visible:true,
            align: 'center'
        }, {
            field: 'venue',
            title: '上课地点',
            visible:true,
            align: 'center'
        }, {
            field: 'mobile',
            title: '联系电话',
            visible:true,
            align: 'center'
        }, {
            field: 'coursePicture',
            title: '课程图片',
            visible:true,
            align: 'center',
            formatter:function(value,row,index){
                var s;
                if(row.coursePicture!=null){
                    var url = row.coursePicture;
                    s = '<a class = "view" href="javascript:void(0)"><img style="width:300px;height:40px;" src="'+basePath+url+'"/></a>';
                }
                return s;
            }
        }, {
            field: 'coursePrice',
            title: '单次课程价格',
            visible:true,
            align: 'center'
        }, {
            field: 'totalHours',
            title: '课程总课时',
            visible:true,
            align: 'center'
        }, {
            field: 'courseDetails',
            title: '课程详情',
            visible:true,
            align: 'center'
        }, {
            field: 'createDate',
            title: '创建时间',
            visible:true,
            align:'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        },{
            field: 'typeId',
            title: '课程类型编号',
            visible:true,
            align: 'center'
        },{
            field: 'typeName',
            title: '课程类型',
            visible:true,
            align: 'center'
        }, {
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
            url: basePath + "courseType/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].typeId+"'>"+data[i].typeName+"</option>";//用appendTo声明是给谁的值
                }
                $("#typeId").append(h);
                $("#typeId1").append(h);
                // 缺一不可  
                $('#typeId').selectpicker('refresh');
                $("#typeId1").selectpicker('refresh')
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
                 url: basePath+"course/add.do",
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
                    url: basePath + "course/update.do",
                    type:"post",
                    dataType:"json",
                    data: new FormData($("#form1")[0]),
                    processData: false,
                    contentType: false,
                    success: function(data){
                        $('#update').modal('hide')
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
        $('#courseId').val(a[0].courseId);
        $('#courseName1').val(a[0].courseName);
        $('#institutions1').val(a[0].institutions);
        $('#venue1').val(a[0].venue);
        $('#mobile1').val(a[0].mobile);
        // $('#coursePicture1').val(a[0].coursePicture);
        $('#coursePrice1').val(a[0].coursePrice);
        $('#totalHours1').val(a[0].totalHours);
        $('#courseDetails1').val(a[0].courseDetails);
         // $(".chosen-select").val($("#typeId1").val(a[0].typeId));
         $('#typeId1').selectpicker('val', a[0].typeId);
        $('#update').modal('show');
    };
     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var courseId = a[0].courseId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "course/remove.do?courseId=" + courseId,
                 context: document.body,
                 success: function(){
                     alert("删除成功");
                     $('#table').bootstrapTable("refresh");
                 },
             });
         }
     }
     function upload(){
         var a = $("#table").bootstrapTable('getSelections');
         if(a.length <= 0){
             alert("请选中行")
         }else if(a.length>1){
             alert("请选中一行")
         }else{
             var activityPhotosId = a[0].activityPhotosId;
             $("#upload").modal("show")
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "activityPhotos/pictureList.do?activityPhotosId=" + activityPhotosId,
                 context: document.body,
                 success: function(data){
                     var json=eval(data);
                     var con;
                     $.each(json,function(index,item){
                         var url=json[index].picture;
                         var s2 = json[index].id;
                         con +="<img src='"+basePath+url+"'  width='64px' height='64px'/>";
                     });
                     $("#pictures2").val(con);
                     console.log(con);
                     $('#table').bootstrapTable("refresh");
                 },
                 fail: function () {
                     alert(data.message);
                     $('#table').bootstrapTable("refresh");
                 }
             });
         }
     }
</script>
</body>
</html>