<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);

%>
<html>
<head>
    <title>活动信息确认</title>
    <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
    <link href="${basePath}static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>

    <link href="${basePath}static/css/bootstrap-table.min.css" rel="stylesheet">

    <link href="${basePath}static/css/bootstrap-treeview.css" rel="stylesheet" type="text/css" media="all"/>

    <link href="${basePath}static/css/bootstrap-select.min.css" rel="stylesheet">

    <link href="${basePath}static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <script src="${basePath}static/js/jquery-1.9.1.min.js"></script>
    <script src="${basePath}static/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${basePath}static/js/bootstrap-treeview.js"></script>
    <script src="${basePath}static/js/jquery.validate.min.js"></script>
    <script src="${basePath}static/js/bootstrap.min.js"></script>
    <script src="${basePath}static/js/bootstrap-table.min.js"></script>
    <script src="${basePath}static/js/bootstrap-select.min.js"></script>
    <script src="${basePath}static/js/bootstrap-datetimepicker.min.js"></script>

    <!-- 引入中文语言包 -->
    <script src="${basePath}static/js/bootstrap-table-zh-CN.min.js"></script>
    <script src="${basePath}static/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="${basePath}static/js/bootstrap-select.min.js"></script>
    <script src="${basePath}static/js/messages_zh.js"></script>

</head>
<body>
<button href="#" class="btn btn-info btn-xs plus" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
<button href="#" class="btn btn-info btn-xs plus" onclick="addSchedule()"><i class="fa fa-plus"></i> 生成进度</button>
<%--<button href="#" class="btn btn-info btn-xs plus" onclick="getTree()"><a href="#gameModal" data-toggle="modal"><i class="fa fa-plus"></i> 新增</a></button>--%>
<table id="table">

</table>

<div class="modal fade" id="kindergartenModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">幼儿园信息新增</h4>
            </div>
            <div class="modal-body">
                <form id="kindergartenForm" class="form-horizontal">
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="kindergartenName">名称:</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="kindergartenName" name="kindergartenName" placeholder="请输入你要新增的幼儿园名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="linkman">联系人:</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="linkman" name="linkman" placeholder="请输入园方联系人">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="phone">联系电话:</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入联系人电话">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label">性质:</label>
                            </div>
                            <div class="col-md-10">
                                <label class="radio-inline">
                                    <input type="radio" name="natureOfKindergarten" id="natureOfKindergarten" value="0" checked>公立
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="natureOfKindergarten" id="natureOfKindergarten1" value="1">私立
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="teachingFeatures">教学特色:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="teachingFeatures" name="teachingFeatures" placeholder="请输入你幼儿园的教学特色">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="kindergartenAddress">地址:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="kindergartenAddress" name="kindergartenAddress" placeholder="请输入幼儿园所在地址">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <label clalss="control-label" for="remark">备注:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="remark" name="remark" placeholder="请输入备注">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="activityLeader">负责人:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="activityLeader" name="activityLeader" placeholder="请输入活动负责人"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="themeId">活动主题:</label>
                            </div>
                            <div class="col-md-10">
                                <select class="selectpicker show-tick form-control" id="themeId" name="themeId" placeholder="请选择活动主题" data-live-search="true" required="true" onselect="0">

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="activityName">活动名称:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="activityName" name="activityName" placeholder="请输入活动名称"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="activityTime">活动时间:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="activityTime" name="activityTime" placeholder="请选择活动时间"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2">
                                <label class="control-label" for="activityAddress">活动地址:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="activityAddress" name="activityAddress" placeholder="请输入活动地址">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="createDate">收到时间:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="createDate" name="createDate" placeholder="请选择收到活动时间"/>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="classModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel3">班级信息新增</h4>
            </div>
            <div class="modal-body">
                <form id="classForm" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="headcount">幼儿园总人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="headcount" name="headcount" placeholder="请输入幼儿园总人数">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfContract">合同约定人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfContract" name="numberOfContract" placeholder="请输入合同约定人数">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfTeachers">教师人数</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfTeachers" name="numberOfTeachers" placeholder="请输入教师人数">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_class" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>下一步</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="ringModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel4">环境创设新增</h4>
            </div>
            <div class="modal-body">
                <form id="ringForm" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="archwayId">拱门类型</label>
                        </div>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="archwayId" name="archwayId" title="请选择拱门类型" data-live-search="true">

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="numberOfBalloon">气柱数量</label>
                        </div>
                        <div class="col-md-10">
                            <input type="Number" class="form-control" id="numberOfBalloon" name="numberOfBalloon" placeholder="请输入气球立柱数量"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="colorOfBalloon">布置气球颜色</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="colorOfBalloon" name="colorOfBalloon" placeholder="请输入布置气球颜色"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label for="figureId">人偶类型</label>
                        </div>
                        <div class="col-md-10">
                            <select class="selectpicker show-tick form-control" id="figureId" name="figureId" title="请选择人偶" data-live-search="true">

                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_ring" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>下一步</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="gameModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel1">活动游戏新增</h4>
                </div>
                <div class="modal-body">
                <form id="gameForm" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-2 control-label">游戏名</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="gameId" name="gameId" placeholder="选择这次活动的游戏" readonly/>
                        </div>
                    </div>
                    <div id="tree">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_submit1" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    //加载表格,由于bootstrap的刷新也在这,所以先销毁一下表格在加载表示刷新
    $("#table").bootstrapTable('destroy');
    $('#table').bootstrapTable({
        url: '${basePath}kindergarten/listAll.do',                      //请求后台的URL（*）
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
            field: 'kindergartenId',
            title: '编号',
            visible:true,
            align: 'center'
        }, {
            field: 'kindergartenName',
            title: '幼儿园名称',
            visible:true,
            align: 'center'
        }, {
           field: 'linkman',
            title: '联系人',
            visible:false,
            align: 'center'
        }, {
            field: 'phone',
            title: '联系电话',
            visible:false,
            align: 'center'
        }, {
            field: 'natureOfKindergarten',
            title: '性质',
            visible:false,
            align: 'center',
            formatter: function (value, row, index) {
                if (value == 0) {
                    return "公立";
                } else {
                    return "私立";
                }
            }
        }, {
            field:'teachingFeatures',
            title:'教学特色',
            visible:false,
            align:'center'
        },{
            field: 'kindergartenAddress',
            title: '幼儿园地址',
            visible:true,
            align: 'center'
        }, {
            field: 'remark',
            title: '备注',
            visible: false,
            align: 'center'
        }, {
            field: 'activityLeader',
            title: '负责人',
            visible:true,
            align: 'center'
        }, {
            field: 'themeId',
            title: '活动主题',
            visible:true,
            align: 'center'
        }, {
            field: 'activityName',
            title: '活动名称',
            visible:true,
            align: 'center'
        }, {
            field: 'activityTime',
            title: '活动时间',
            visible:true,
            align: 'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        }, {
            field: 'activityAddress',
            title: '活动地址',
            visible:true,
            align: 'center'
        }, {
            field: 'createDate',
            title: '收到活动时间',
            visible:true,
            align: 'center',
            //——修改——获取日期列的值进行转换
            formatter: operateTMSRPFormatter
        }, {
            field:'ID',
            title: '操作',
            visible: true,
            align: 'center',
            formatter: operateFormatter()
        }],
    });
    function operateFormatter(){
        return '<button href="#" class="btn btn-info btn-xs list" onclick="schedule()"><i class="fa fa-list"></i> 进度</button> <button href="#" class="btn btn-info btn-xs edit" data-toggle="modal" onclick="update()"><i class="fa fa-edit"></i> 修改</button> <button href="#" class="btn btn-danger btn-xs delete" onclick="remove()"><i class="fa fa-trash-o"></i> 删除</button>'
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

    //设置时间控件
    var option = {
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: 2,//最精准的时间选择为日期  0-分 1-时 2-日 3-月
        autoclose: true,//选中自动关闭
        clearBtn:true,
        todayBtn: true//显示今日按钮
    }
    $('#activityTime').datetimepicker(option);
    $('#activityTime1').datetimepicker(option);

    $('#createDate').datetimepicker(option);
    $('#createDate1').datetimepicker(option);

    $(function () {
        select();
        select2();
        select3();
        // select4();
    })
    function select(){
        $.ajax({
            url: "${basePath}activityTheme/listAll.do?ran="+Math.random(),
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
    function select2(){
        $.ajax({
            url: "${basePath}archway/listAll.do?ran="+Math.random(),
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].archwayId+"'>"+data[i].archwayShape+"</option>";//用appendTo声明是给谁的值
                }
                $("#archwayId").append(h);
                $("#archwayId1").append(h);
                // 缺一不可  
                $('#archwayId').selectpicker('refresh');
                $("#archwayId1").selectpicker('refresh')
            }
        });

    }

    function select3(){
        $.ajax({
            url:"${basePath}figure/listAll.do?ran="+Math.random(),
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

    function validateForm(){
        return $("#kindergartenForm").validate({
            rules: {
            kindergartenName: {
                required:true
            },
            linkman: {
                required:true
            },
            phone: {
                required:true,
                    rangelength:[11,11]
            },
            kindergartenAddress:{
                required:true
            },
            activityLeader:{
                required:true
            },
            theme:{
                required:true
            },
            activityName:{
                required:true
            },
            activityTime:{
                required:true
            },
            activityAddress:{
                required:true
            },
            createDate:{
                required:true
            }
        },
        messages: {
            kindergartenName: {
                required: "幼儿园名称不能为空"
            },
            linkman: {
                required: "园方联系人不能为空"
            },
            phone: {
                required: "联系人电话不能为空",
                rangelength: "手机号码为11位"
            },
            kindergartenAddress: {
                required: "幼儿园地址不能为空"
            },
            activityLeader: {
                required: "活动负责人不能为空"
            },
            theme: {
                required: "活动主题不能为空"
            },
            activityName: {
                required: "活动名称不能为空"
            },
            activityTime: {
                required: "活动时间不能为空"
            },
            activityAddress: {
                required: "活动地址不能为空"
            },
            createDate: {
                required: "收到活动时间不能为空"
            }
        },
        errorElement: "em",
            errorPlacement: function ( error, element ) {
                // Add the `help-block` class to the error element
                error.addClass( "help-block" );
                // if ( element.prop( "type" ) === "checkbox" ) {
                //     error.insertAfter( element.parent( "label" ) );
                if(element.is(':radio') || element.is(':checkbox')){
                    var eid = element.attr('name');
                    error.appendTo(element.parent());
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
    }

    function validateForm1(){
        return $("#classForm").validate({
            rules: {
                headcount: {
                    required:true
                },
                numberOfContract: {
                    required:true
                },
                numberOfTeachers: {
                    required:true,
                }
            },
            messages: {
                headcount: {
                    required:"幼儿园总人数不能为空"
                },
                numberOfContract: {
                    required:"合同约定人数不能为空"
                },
                numberOfTeachers: {
                    required:"教师人数不能为空"
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

    function validateForm2(){
        return $("#ringForm").validate({
            rules: {
                colorOfBalloon: {
                    required:true
                },
                figureId: {
                    required:true
                }
            },
            messages: {
                colorOfBalloon: {
                    required:"气球颜色不能为空"
                },
                figureId: {
                    required:"人偶类型不能为空"
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


    function validateForm3(){
        return $("#gameForm").validate({
            rules: {
                gameId1: {
                    required:true
                }
            },
            messages: {
                gameId1: {
                    required:"游戏名称不能为空"
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

    $(validateForm1());

    $(validateForm2());

    $(validateForm3());
    var kindergarten = [];
    var classInformation = [];
    var ringDescription = [];
    var game = [];
    function add(){
        window.location.href = "${basePath}franchisee/activityConfirmationAdded.do";
        // $("#kindergartenModal").modal("show");
        // $("#btn_submit").on("click",function(){
        //     if(validateForm().form()){
        //         // var kindergartenId = $("#kindergartenId").val();
        //         var kindergartenName = $("#kindergartenName").val();
        //         var linkman = $("#linkman").val();
        //         var phone = $("#phone").val();
        //         var natureOfKindergarten = $("input[name='natureOfKindergarten']:checked").val();
        //         // $('#natureOfKindergarten input:radio:checked').val();
        //         var teachingFeatures = $("#teachingFeatures").val();
        //         var kindergartenAddress = $("#kindergartenAddress").val();
        //         var remark = $("#remark").val();
        //         var activityLeader = $("#activityLeader").val();
        //         var themeId = $("#themeId").selectpicker('val');
        //         var activityName = $("#activityName").val();
        //         var activityTime = $("#activityTime").val();
        //         var activityAddress = $("#activityAddress").val();
        //         var createDate = $("#createDate").val();
        //         kindergarten.push({"kindergartenName":kindergartenName,"linkman":linkman,"phone":phone,"natureOfKindergarten":natureOfKindergarten,"teachingFeatures":teachingFeatures,"kindergartenAddress":kindergartenAddress,"remark":remark,"activityLeader":activityLeader,"themeId":themeId,"activityName":activityName,"activityTime":activityTime,"activityAddress":activityAddress,"createDate":createDate});
        //         $('#kindergartenModal').modal("hide");
        //         $("#classModal").modal("show");
        //         classAdd();
        //         return true;
        //     }else{
        //         return false;
        //     }
        // });
    }

    function classAdd(){
        $("#btn_class").on("click",function(){
            if(validateForm1().form()){
            // var classInformationId = $('#classInformationId').val();
            var headcount = $('#headcount').val();
            var numberOfContract = $('#numberOfContract').val();
            var numberOfTeachers = $('#numberOfTeachers').val();
            classInformation.push({"headcount":headcount,"numberOfContract":numberOfContract,"numberOfTeachers":numberOfTeachers});
                $('#classModal').modal('hide');
                $("#ringModal").modal("show");
                ringDescriptionAdd();
                return true;
            }else{
                return false;
            }
        });
    }
    function ringDescriptionAdd(){
        $("#add").modal("show");
        $("#btn_ring").on("click",function(){
            if(validateForm2().form()){
                // var ringDescriptionId = $('#ringDescriptionId').val();
                var archwayId = $('#archwayId').val();
                var numberOfBalloon = $('#numberOfBalloon').val();
                var colorOfBalloon = $('#colorOfBalloon').val();
                var figureId = $('#figureId').val();

                ringDescription.push({"archwayId":archwayId,"numberOfBalloon":numberOfBalloon,"colorOfBalloon":colorOfBalloon,"figureId":figureId})
                    $('#ringModal').modal('hide');
                    $('#gameModal').modal('show');
                return true;
            }else{
                return false;
            }

        });
    }

    function getTree(){
        $.ajax({
            type:"post",
            url:"${basePath}activityTheme/listTree.do",
            dataType:"json",
            success: function (data) {
                var name = "";
                // var tree = data;
                console.log(data);
                $('#tree').treeview({
                    data: data,//数据源
                    showCheckbox: false,   //是否显示复选框
                    highlightSelected: true,    //是否高亮选中
                    multiSelect: true,    //多选
                    levels : 1,
                    color: "#010A0E",
                    // onNodeSelected: function (e, m) { //Treeview 被选中事件
                    //     var id=m.tags[0];
                    //     var remark=m.text;
                    // },
                    onNodeSelected: function (event, data) {
                        game.push({"gameId":data.id,"gameName":data.text});
                        nameValue(name);
                    },
                    onNodeUnselected: function (event, data) { //Treeview 取消选中事件
                        for(var i=0;i<game.length;i++){
                            if(game[i].gameId==data.id){
                                game.splice(i,1);
                            }
                        }
                        nameValue(name)
                    },
                    error: function () {
                        alert("菜单加载失败！")
                    },
                });
            }
        })
    }
    function nameValue(name){
        for(var i in game){
            if(name.length==0){
                name += game[i].gameName;
            }else{
                name += ","+game[i].gameName;
            }

        }
        $("#gameId").val(name);
    }

    $("#btn_submit1").on("click",function () {
        if(validateForm3().form()){
            var jsonStr = {};
            var userId = "${franchisee}";
            if(userId == null && userId == ""){
                userId = "${user.userId}";
            }
            jsonStr["kindergarten"] = kindergarten;
            jsonStr["classInformation"] = classInformation;
            jsonStr["ringDescription"] = ringDescription;
            jsonStr["game"] = game;
            console.log(jsonStr);
            $.ajax({
                url: "${basePath}kindergarten/add.do?userId="+userId,
                type: "post",
                dataType: "json",
                data: JSON.stringify(jsonStr),
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    alert(data.message);
                    $("#gameModal"). modal(hide);
                }
            })
        }
    })

    function addSchedule(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var kindergartenId = a[0].kindergartenId;
            $.ajax({
                url: "${basePath}kindergarten/addSchedule.do?kindergartenId="+kindergartenId,
                type: "post",
                dataType: "json",
                contentType : "application/json;charsetset=UTF-8",
                success: function (data){
                    alert(data.message);
                }
            })

        }
    }

    function schedule(){
        var a = $("#table").bootstrapTable('getSelections');
        if(a.length<=0){
            alert("请选中行")
        }else if(a.length>1){
            alert("请选中一行");
        }else{
            var kindergartenId = a[0].kindergartenId;
            window.location.href = "${basePath}kindergarten/schedule1.do?kindergartenId="+kindergartenId;

        }
    }

    $('#ringModal').on('hidden.bs.modal', function () {
        getTree();
    });

    $('#gameModal').on('hidden.bs.modal', function () {
        window.location.reload();
    })

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
                url: "${basePath}kindergarten/remove.do?kindergartenId=" + a[0].kindergartenId,
                context: document.body,
                success: function () {
                    alert("删除成功");
                    $('#table').bootstrapTable("refresh");
                }
            });
        }
    }

    function initTableHeight(){
        //拿到父窗口的centerTabs高度(这是iframe子页面拿到父窗口元素的方法，需要根据自己项目所使用的框架自行修改元素的id)
        var panelH = $("#mainframe", parent.document).height();
        //拿到顶部工具栏高度
        var toolBarH = $(".pull-right").height();
        //计算表格container该设置的高度
        var height = panelH - toolBarH - 91;
        // var height = 15;
         $(".fixed-table-body").css({"height": height});
    }

    //初始化表格高度,以保证分页工具栏始终显示
    initTableHeight();

</script>
</html>
