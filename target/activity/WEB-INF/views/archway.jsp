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
    <title>充气拱门列表</title>
</head>
<body>
<section class="content-header">
    <h1>
        活动内容管理
        <small>活动拱门管理</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 后台首页</a></li>
        <li class="active">活动拱门管理</li>
    </ol>

</section>
<section class="content">
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
</section>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">充气拱门新增</h4>
            </div>
            <div class="modal-body">
            <form id="form" enctype="multipart/form-data" class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-2">
                        <label for="archwayType">拱门类型</label>
                    </div>
                    <div class="col-md-10">
                        <select class="selectpicker show-tick form-control" id="archwayType" name="archwayType" title="请选择拱门类型" data-live-search="true">
                            <option value="0">气球拱门</option>
                            <option value="1">充气拱门</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                        <label for="archwayColor">拱门颜色</label>
                    </div>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="archwayColor" name="archwayColor" placeholder="请输入拱门颜色">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                        <label for="archwayShape">拱门形状</label>
                    </div>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="archwayShape" name="archwayShape" placeholder="请输入拱门形状">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                        <label for="archwayShape">拱门图片</label>
                    </div>
                    <div class="col-md-10">
                        <input type="file" class="file-loading form-control" class="form-control" id="archwayPicture" name="multipartFile" placeholder="请选择拱门图片">
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
            <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form1" enctype="multipart/form-data" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">拱门类型修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="archwayId" name="archwayId">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="archwayType">拱门类型</label>
                        </div>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="archwayType1" name="archwayType" title="请选择拱门类型" data-live-search="true">
                                <option value="0">气球拱门</option>
                                <option value="1">充气拱门</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="archwayColor">拱门颜色</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="archwayColor1" name="archwayColor" placeholder="请输入拱门颜色">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="archwayShape">拱门形状</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="archwayShape1" name="archwayShape" placeholder="请输入拱门形状">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="archwayShape">拱门图片</label>
                        </div>
                        <div class="col-md-10">
                            <input type="file" class="file-loading form-control" id="archwayPicture1" name="multipartFile" placeholder="请选择拱门图片">
                            <%--<img src="img/pic.png" alt="图片" class="img-responsive">--%>
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
    $("#archwayPicture").fileinput(options);
    $("#archwayPicture1").fileinput(options);
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'archway/listAll.do',                      //请求后台的URL（*）
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
        clickToSelect: true,// 是否启用点击选中行
        cache: true,//是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        locale:'zh-CN',//中文支持
        sidePagination: 'client',//客户端处理分页
        columns: [{
            checkbox: true,
            visible: true                  //是否显示复选框
        }, {
            field: 'archwayId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'archwayType',
            title: '拱门类型',
            visible:true,
            align: 'center',
            formatter:function (view,row,index) {
                if(view != null){
                    if(view == 0){
                        return "气球拱门"
                    }else if(view == 1){
                        return "充气拱门"
                    }
                }
            }
        },{
            field: 'archwayColor',
            title: '拱门颜色',
            visible:true,
            align: 'center'
        }, {
            field: 'archwayShape',
            title: '拱门形状',
            visible:true,
            align: 'center'
        },{
            field: 'archwayPicture',
            title: '拱门图片',
            visible:true,
            align: 'center',
            formatter:function(value,row,index){
                var s;
                if(row.archwayPicture!=null){
                    var url = row.archwayPicture;
                    s = '<a class ="view" href="javascript:void(0)"><img src="'+basePath+url+'" class="file-preview-image" style="width:160px;height:80px;max-width:100%;max-height:100%"/></a>';
                }
                return s;
            },
            // events:'operateEvents'
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
        $("#showImgModal").find("#img_show").html("<image src='"+basePath+row.archwayPicture+"' class='carousel-inner img-responsive img-rounded' />");
        $("#showImgModal").modal();
    }
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

    function validateForm(){
        return $("#form").validate({
            onsubmit:true,// 是否在提交时验证
            onfocusout:false,// 是否在获取焦点时验证
            onkeyup :false,// 是否在敲击键盘时验证
            rules: {
                archwayType: {
                    required:true
                },
                archwayShape:{
                    required:true
                },
                archwayPicture:{
                    required:true
                }
            },
            messages: {
                archwayType: {
                    required:"拱门类型不能为空"
                },
                archwayShape:{
                    required:"拱门形状不能为空"
                },
                archwayPicture:{
                    required:"拱门图片不能为空"
                }
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
        });
    }

    //注册表单验证
    $(validateForm());
     function add(){
         $("#add").modal("show");
         alert(validateForm().form());
         $("#btn_submit").on("click",function(){
             if(validateForm().form()){
                 $.ajax({
                     type:"post",
                     cache: false,
                     dataType:"json",
                     url: basePath+"archway/add.do",
                     data: new FormData($("#form")[0]),
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
                 return true;
             }else{
                 return false;
             }
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
                    url: basePath + "archway/update.do",
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
                        window.location.reload();
                        alert(data.message);
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#archwayId').val(a[0].archwayId);
        $('#archwayType1').selectpicker('val',a[0].archwayType);
        $('#archwayColor1').val(a[0].archwayColor);
        $('#archwayShape1').val(a[0].archwayShape);
        $('#archwayPicture2').val(a[0].archwayPicture);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var archwayId = a[0].archwayId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "archway/remove.do?archwayId=" + archwayId,
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