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
    <title>活动图片列表</title>
    <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
    <link href="${basePath}static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${basePath}static/css/bootstrap-table.min.css" rel="stylesheet">
    <link href="${basePath}static/css/fileinput.min.css" rel="stylesheet">
    <link href="${basePath}static/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="${basePath}static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${basePath}static/css/style.css" rel="stylesheet" type="text/css" media="all" />

    <script src="${basePath}static/js/jquery-1.9.1.min.js"></script>
    <script src="${basePath}static/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${basePath}static/js/jquery.validate.min.js"></script>
    <script src="${basePath}static/js/fileinput.min.js"></script>
    <script src="${basePath}static/js/bootstrap.min.js"></script>
    <script src="${basePath}static/js/bootstrap-table.min.js"></script>
    <script src="${basePath}static/js/bootstrap-select.min.js"></script>
    <script src="${basePath}static/js/bootstrap-datetimepicker.min.js"></script>

    <!-- 引入中文语言包 -->
    <script src="${basePath}static/js/bootstrap-table-zh-CN.min.js"></script>
    <script src="${basePath}static/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="${basePath}static/js/bootstrap-select.min.js"></script>
    <script src="${basePath}static/js/zh.js"></script>
    <script src="${basePath}static/js/messages_zh.js"></script>
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
                    <h4 class="modal-title" id="myModalLabel">活动照片新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="kindergartenId" class="col-md-2 control-label">幼儿园名称</label>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="kindergartenId" name="kindergartenId" title="请选择本次活动的幼儿园" data-live-search="true" required="true">

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">选择活动图片</label>
                        <div class="col-md-10">
                            <input type="file" multiple class="file file-loading form-control" id="pictures" name="files" data-overwrite-initial="false" data-min-file-count="2"/>
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
            <form id="form1" class="form-horizontal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">幼儿园信息修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="activityPhotosId" name="activityPhotosId">
                    <div class="form-group">
                        <label class="col-md-2">幼儿园名称</label>
                        <input type="text" class="form-control col-md-10" id="kindergarten1" name="kindergarten" placeholder="请输入你要新增的活动名称">
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
<div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form2" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel2">活动图片修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="activityPhotosId1" name="activityPhotosId">
                    <div class="file-loading">
                        <label>选择活动图片</label>
                        <input type="file" multiple class="file file-loading" id="pictures1" name="files" data-overwrite-initial="false" data-min-file-count="2"/>
                        <input type="hidden" name="pictures" id="pictures2"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_upload" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
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
    $('#time').datetimepicker(option);
    $('#time1').datetimepicker(option);
    //初始化文件上传插件
    var options = {
        language:'zh',//设置语言
        uploadUrl:basePath+'activityPhotos/upload.do',//上传的地址
        allowedFileExtensions:['jpg','gif','png','jpeg'],//接收的文件后缀
        uploadAsync:true,//采用同步上传
        maxFileCount:100, //表示允许同时上传的最大文件个数
        enctype:'multipart/form-data',
        validateInitialCount:true,
        showUpload: true,
        maxFileSize:5*1024*1024,//单位为kb，如果为0表示不限制文件大小
        removeFromPreviewOnError: true,                 //当文件不符合规则，就不显示预览
        showCaption: true,
        msgSelected:"{n} {files} 选择",
        uploadExtraData: function(previewId, index) {   //额外参数的关键点
            var obj = {};
            obj.fodder = fodderType();
            console.log(obj);
            return obj;
        }
    };
    // $("#pictures").on("fileuploaded", function (event, data, previewId, index) {
    //     alert(data.response.message);
    // });
    $("#pictures").fileinput(options);
    $("#pictures1").fileinput(options);
    fodderType = function() {
        var fileInput = document.getElementById("pictures");
        // files 是一个 FileList 对象(类似于NodeList对象)
        var files = fileInput.files;
        return files.length;
    };

    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: basePath + 'activityPhotos/listAll.do',                      //请求后台的URL（*）
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
            field: 'activityPhotosId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'kindergartenId',
            title: '幼儿园名称',
            visible:true,
            align: 'center'
        },{
            field: 'time',
            title: '时间',
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
     function operateFormatter(){
         return '<button href="#" class="btn btn-info btn-xs photo" data-toggle="modal" onclick="upload()"><i class="fa fa-photo"></i> 详情</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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
        select();
    }
    function select(){
        $.ajax({
            url: basePath + "kindergarten/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].kindergartenId+"'>"+data[i].kindergartenName+"</option>";//用appendTo声明是给谁的值
                }
                $("#kindergartenId").append(h);
                $("#kindergartenId1").append(h);
                // 缺一不可  
                $('#kindergartenId').selectpicker('refresh');
                $("#kindergartenId1").selectpicker('refresh');
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
                 url: basePath+"activityPhotos/add.do",
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
                    url: basePath + "activityPhotos/update.do",
                    type:"post",
                    dataType:"json",
                    data: $("#form1").serialize(),
                    success: function(data){
                        $('#update').modal('hide')
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
        $('#activityPhotosId').val(a[0].activityPhotosId);
        $('#kindergarten1').val(a[0].kindergarten);
        $('#time1').val(changeDateFormat(a[0].time));//
        $('#update').modal('show');
    };
     function remove() {
         var a = $("#table").bootstrapTable('getSelections');
         if (a.length <= 0) {
             alert("请选中行")
         } else if (a.length > 1) {
             alert("请选中一行");
         } else {
             var activityPhotosId = a[0].activityPhotosId;
             $.ajax({
                 dataType: "json",
                 type: "post",
                 url: basePath + "activityPhotos/remove.do?activityPhotosId=" + activityPhotosId,
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

    $( document ).ready( function () {
        $( "#form" ).validate( {
            rules: {
                kindergarten: {
                    required:true,
                },
                time:{
                    required:true,
                }
            },
            messages: {
                kindergarten: {
                    required: "幼儿园名称不能为空",
                },
                time:{
                    required: "活动时间不能为空"
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
        } );
    } );
</script>
</body>
</html>