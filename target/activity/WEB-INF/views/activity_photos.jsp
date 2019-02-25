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
</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 上传活动图片</button>
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
                        <label for="kindergartenId" class="col-md-2 control-label">幼儿园活动名称</label>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="activityId" name="activityId" title="请选择本次幼儿园活动的名称" data-live-search="true" required="true">

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">选择活动图片</label>
                        <div class="col-md-10">
                            <input type="file" multiple class="file form-control" id="pictures" name="files" data-overwrite-initial="false" data-min-file-count="2"/>
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
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">幼儿园活动图片信息修改</h4>
                </div>
                <div class="modal-body">
                    <form id="form1" class="form-horizontal" enctype="multipart/form-data">
                    <input type="hidden" id="activityPhotosId" name="activityPhotosId">
                    <div class="form-group">
                        <label for="kindergartenId" class="col-md-2 control-label">幼儿园名称</label>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="kindergartenId1" name="kindergartenId" title="请选择本次活动的幼儿园" data-live-search="true" required="true">

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="kindergartenId" class="col-md-2 control-label">幼儿园活动名称</label>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="activityId1" name="activityId" title="请选择本次幼儿园活动的名称" data-live-search="true" required="true">

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">选择活动图片</label>
                        <div class="col-md-10">
                            <input type="file" multiple class="file form-control" id="pictures1" name="files" data-overwrite-initial="false" data-min-file-count="2"/>
                        </div>
                    </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_update" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
        </div>
    </div>
</div>
<div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel2">活动照片查看</h4>
            </div>
            <div class="modal-body">
            <form id="uploadForm" class="form-horizontal">
                <input type="hidden" id="activityPhotosId1" name="activityPhotosId">
                <div class="form-group">
                    <label for="kindergartenId" class="col-md-2 control-label">幼儿园名称</label>
                    <div class="col-md-10">
                        <select class="selectpicker show-tick form-control" id="kindergartenId2" name="kindergartenId" title="请选择本次活动的幼儿园" data-live-search="true" required="true">

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="kindergartenId" class="col-md-2 control-label">幼儿园活动名称</label>
                    <div class="col-md-10">
                        <select class="selectpicker show-tick form-control" id="activityId2" name="activityId" title="请选择本次幼儿园活动的名称" data-live-search="true" required="true">

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">选择活动图片</label>
                    <div class="col-md-10">
                        <input type="file" multiple class="file form-control" id="pictures2" name="files" data-overwrite-initial="false" data-min-file-count="2"/>
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_upload" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
            </div>
            </div>
        </div>
    </div>
</div>

<script>
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
        // ！这里是预览的数据格式
        // initialPreview: [
        //     // IMAGE RAW MARKUP
        //     'http://localhost:8080/amp/base/imgs/app-default.jpg',
        //     // IMAGE RAW MARKUP
        //     'http://localhost:8080/amp/base/imgs/app-default.jpg',
        //     // TEXT RAW MARKUP
        //     '123asd啊实打实',
        //     'http://localhost:8080/amp/base/imgs/123.docx'
        // ],
        // ！这里是回显的数据格式，后台查询后，按照格式展示即可，url是删除访问地址，key是删除的id
        // initialPreviewConfig: [
        //     {type: "image", caption: "Image-1.jpg", size: 847000, url: "/amp/project/delFile.do", key: 1},
        //     {type: "image", caption: "Image-2.jpg", size: 817000, url: "/amp/project/delFile.do", key: '1519713821098wwp4h8v'},  // set as raw markup
        //     {type: "text", size: 1430, caption: "LoremIpsum.txt", url: "/amp/project/delFile.do", key: 3},
        //     {type: "office", size: 102400, caption: "123.docx", url: "/amp/project/delFile.do", key: '1519788281200pwxfx87'}
        // ],
        uploadExtraData: function(previewId, index) {   //额外参数的关键点
            var obj = {};
            obj.fodder = fodderType();
            console.log(obj);
            return obj;
        },
        previewFileIconSettings: {
            'docx': '<i class="fa fa-file-word-o text-primary"></i>',
            'xlsx': '<i class="fa fa-file-excel-o text-success"></i>',
            'pptx': '<i class="fa fa-file-powerpoint-o text-danger"></i>',
            'pdf': '<i class="fa fa-file-pdf-o text-danger"></i>',
            'zip': '<i class="fa fa-file-archive-o text-muted"></i>',
            'sql': '<i class="fa fa-file-word-o text-primary"></i>',
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
            title: '幼儿园编号',
            visible:false,
            align: 'center'
        }, {
            field: 'activityId',
            title: '活动编号',
            visible:false,
            align: 'center'
        },  {
            field: 'activityId',
            title: '活动编号',
            visible:false,
            align: 'center'
        }, {
            field: 'themeId',
            title: '活动名称',
            visible:false,
            align: 'center'
        }, {
            field: 'activityLeader',
            title: '活动负责人',
            visible:true,
            align: 'center'
        }, {
            field: 'activityName',
            title: '活动名称',
            visible:true,
            align: 'center'
        },{
            field:"activityAddress",
            title:"活动地址",
            visible:true,
            align:'center'
        },{
            field:"kindergartenName",
            title:"幼儿园地址",
            visible:true,
            align:'center'
        },{
            field:"teachingFeatures",
            title:"幼儿园教学特色",
            visible:true,
            align:'center'
        },{
            field:"fees",
            title:"幼儿园收费标准",
            visible:true,
            align:'center'
        },{
            field: 'time',
            title: '图片上传时间',
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
        select1();
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
    function select1(){
        $.ajax({
            url: basePath + "activity/listAll.do?ran=Match.Random()",
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].activityId+"'>"+data[i].activityName+"</option>";//用appendTo声明是给谁的值
                }
                $("#activityId").append(h);
                $("#activityId1").append(h);
                // 缺一不可  
                $('#activityId').selectpicker('refresh');
                $("#activityId1").selectpicker('refresh');
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
                        alert(data.message);
                    }
                });
            });
        }
    };

     function editInfo() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#activityPhotosId').val(a[0].activityPhotosId);
        $('#kindergartenId1').val(a[0].kindergartenId);
        $('#activityId1').val(a[0].activityId);
        $('#time1').val(changeDateFormat(a[0].time));//
        $('#update').modal('show');
    };

    function editInfo1() {
        var a = $("#table").bootstrapTable('getSelections');
        $('#activityPhotosId1').val(a[0].activityPhotosId);
        $('#kindergartenId2').val(a[0].kindergartenId);
        $('#activityId2').val(a[0].activityId);
        $('#time2').val(changeDateFormat(a[0].time));//
        $('#upload').modal('show');
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
             // $("#upload").modal("show")
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
                         console.log(url);
                         $("#upload").find("#img_show").html("<image src='"+basePath+url+"' />");
                         $("#upload").modal();
                         // con += url;
                     //     var s2 = json[index].id;
                     //     con +="<img src='"+basePath+url+"'  width='64px' height='64px'/>";
                     });

                     // showimage(con);
                     // $('#table').bootstrapTable("refresh");
                 },
             });
         }
     }
    function showimage(row)
    {

    }

    $( document ).ready( function () {
        $( "#form" ).validate( {
            rules: {
                kindergartenId: {
                    required:true,
                },
                activityId:{
                    required:true,
                },
                time:{
                    required:true,
                }
            },
            messages: {
                kindergartenId: {
                    required: "幼儿园名称不能为空",
                },
                activityId:{
                    required: "活动主题不能为空",
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