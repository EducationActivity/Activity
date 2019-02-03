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
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data" method="post" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">仓库物料新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialName" class="control-label">物料名称</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="materialName" name="materialName" placeholder="请输入物料名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialPicture" class="control-label">选择物料图片</label>
                        </div>
                        <div class="col-md-10">
                            <input type="file" multiple class="file-loading" id="materialPicture" name="file" data-overwrite-initial="false"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="introduce" class="control-label">物料介绍</label>
                        </div>
                        <div class="col-md-10">
                            <input type="textarea" class="form-control" id="introduce" name="introduce" placeholder="请输入物料的介绍"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialPrice" class="control-label">物料价格</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="materialPrice" name="materialPrice" placeholder="请输入价格物料"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialCount" class="control-label">物料数量</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="materialCount" name="materialCount" placeholder="请输入物料数量">
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
            <form id="form1" class="form-horizontal" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">仓库物料信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="materialId" name="materialId">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialName" class="control-label">物料名称</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="materialName1" name="materialName" placeholder="请输入物料名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialPicture" class="control-label">选择物料图片</label>
                        </div>
                        <div class="col-md-10">
                            <input type="file" multiple class="file-loading" id="materialPicture1" name="file" data-overwrite-initial="false"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="introduce" class="control-label">物料介绍</label>
                        </div>
                        <div class="col-md-10">
                            <input type="textarea" class="form-control" id="introduce1" name="introduce" placeholder="请输入物料的介绍"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialPrice" class="control-label">物料价格</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="materialPrice1" name="materialPrice" placeholder="请输入价格物料"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="materialCount" class="control-label">物料数量</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="materialCount1" name="materialCount" placeholder="请输入物料数量">
                        </div>
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
    //初始化文件上传插件
    var options = {
        language:'zh',//设置语言
        // uploadUrl:basePath+'activityPhotos/upload.do',//上传的地址
        allowedFileExtensions:['jpg','gif','png','jpeg'],//接收的文件后缀
        uploadAsync:true,//采用同步上传
        // maxFileCount:100, //表示允许同时上传的最大文件个数
        enctype:'multipart/form-data',
        validateInitialCount:true,
        showUpload: false,
        maxFileSize:5*1024*1024,//单位为kb，如果为0表示不限制文件大小
        removeFromPreviewOnError: true,                 //当文件不符合规则，就不显示预览
        showCaption: true,
        msgSelected:"{n} {files} select",
        // uploadExtraData: function(previewId, index) {   //额外参数的关键点
        //     var obj = {};
        //     obj.fodder = fodderType();
        //     console.log(obj);
        //     return obj;
        // }
    };
    $("#materialPicture").fileinput(options);
    $("#materialPicture1").fileinput(options);
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: '<%= basePath%>materials/listAll.do',                      //请求后台的URL（*）
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
            field: 'materialId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'materialName',
            title: '物料名称',
            visible:true,
            align: 'center'
        }, {
            field: 'materialPicture',
            title: '物料图片',
            visible:true,
            align: 'center',
            formatter:function(value,row,index){
                var s;
                if(row.materialPicture!=null){
                    var url = row.materialPicture;
                    s = '<a class = "view" href="javascript:void(0)"><img style="width:300px;height:40px;" src="'+'${basePath}'+url+'"/></a>';
                }
                return s;
            },
            //点击查看大图
            // events:'operateEvents'
        }, {
            field: 'introduce',
            title: '物料介绍',
            visible:false,
            align: 'center'
        },  {
            field: 'materialCount',
            title: '物料数量',
            visible:true,
            align: 'center'
        }, {
            field: 'materialPrice',
            title: '物料价格(元)',
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

    $("#materialPicture").fileinput(options);
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
                 url: "${basePath}materials/add.do",
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
        // $('#materialPicture1').val(a[0].materialPicture);
         $('#introduce1').val(a[0].introduce);
         $('#materialPrice1').val(a[0].materialPrice);
         $('#materialCount1').val(a[0].materialCount);
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