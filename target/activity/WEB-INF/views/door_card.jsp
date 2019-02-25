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
    <title>方案模板列表</title>
</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<table id="table">

</table>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form" enctype="multipart/form-data" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">模板新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="schemeName">模板名称</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="schemeName" name="schemeName" placeholder="请输入方案模板名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="planTemplate">方案模板</label>
                        </div>
                        <div class="col-md-10">
                            <input type="file" class="file-loading" id="planTemplate" name="multipartFile" placeholder="请选择方案模板">
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
            <form id="form1" enctype="multipart/form-data" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">方案模板修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="schemeId" name="schemeId">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="schemeName">模板名称</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="schemeName1" name="schemeName" placeholder="请输入方案模板名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="planTemplate">方案模板</label>
                        </div>
                        <div class="col-md-10">
                            <input type="file" class="file-loading" id="planTemplate1" name="multipartFile" placeholder="请选择方案模板">
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

<script>
    //初始化文件上传插件
    var options = {
        dropZoneTitle : "请选择一个文案模板进行上传",
        language:'zh',//设置语言
        // uploadUrl:basePath+'activityPhotos/upload.do',//上传的地址
        allowedFileExtensions:['pdf','ppt','pptx'],//接收的文件后缀
        initialPreviewConfig: {type:"pdf"},
        uploadAsync:true,//采用同步上传
        // maxFileCount:100, //表示允许同时上传的最大文件个数
        enctype:'multipart/form-data',
        validateInitialCount:true,
        showUpload: false,
        maxFileSize:50*1024*1024,//单位为kb，如果为0表示不限制文件大小
        removeFromPreviewOnError: true,                 //当文件不符合规则，就不显示预览
        showCaption: true,
        // uploadExtraData: function(previewId, index) {   //额外参数的关键点
        //     var obj = {};
        //     obj.fodder = fodderType();
        //     console.log(obj);
        //     return obj;
        // }
    };
    $("#planTemplate").fileinput(options);
    $("#planTemplate1").fileinput(options);
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'scheme/listAll.do',                      //请求后台的URL（*）
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
            field: 'schemeId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'schemeName',
            title: '模板名称',
            visible:true,
            align: 'center'
        },{
            field: 'planTemplate',
            title: '方案模板',
            visible:true,
            align: 'center',
            // formatter:function(value,row,index){
            //     var s;
            //     var url = row.figurePicture;
            //     if(url != null && url != ""){
            //         s = '<a class ="view" href="javascript:void(0)"><img src="'+basePath+url+'" class="file-preview-image" style="width:160px;height:80px;max-width:100%;max-height:100%"/></a>';
            //     }
            //     return s;
            // },
            //点击查看大图
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
    // function showimage(row)
    // {
    //     $("#showImgModal").find("#img_show").html("<image src='"+basePath+row.figurePicture+"' class='carousel-inner img-responsive img-rounded' />");
    //     $("#showImgModal").modal();
    // }
    function operateFormatter(){
     return '<button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
    };

    function validateForm(){
        return $("#form").validate({
            rules: {
                schemeName: {
                    required:true
                }
            },
            messages: {
                schemeName: {
                    required:"方案名称不能为空"
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
         $("#btn_submit").on("click",function(){
             if(validateForm().form()){
                 $.ajax({
                     type:"post",
                     cache: false,
                     dataType:"json",
                     url: basePath+"scheme/add.do",
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
                    url: basePath + "scheme/update.do",
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
        $('#schemeId').val(a[0].schemeId);
        $('#schemeName1').val(a[0].schemeName);
        $('#update').modal('show');
    };

     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var schemeId = a[0].schemeId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "scheme/remove.do?schemeId=" + schemeId,
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