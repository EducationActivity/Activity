<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/19 0019
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>
<html>
<head>
    <title>活动确认单</title>
    <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
<link href="${basePath}static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>

<link href="${basePath}static/css/bootstrap-table.min.css" rel="stylesheet">

<link href="${basePath}static/css/bootstrap-treeview.css" rel="stylesheet" type="text/css" media="all"/>

<link href="${basePath}static/css/bootstrap-select.min.css" rel="stylesheet">

<link href="${basePath}static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

<script src="${basePath}static/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/jquery-1.9.1.min.js"></script>
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

</body>
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
    $('#activityTime').datetimepicker(option);
    $('#activityTime1').datetimepicker(option);

    $('#createDate').datetimepicker(option);
    $('#createDate1').datetimepicker(option);

    $(function () {
        select();
        select2();
        select3();
        select4();
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

    function select4(){
        $.ajax({
            url:"${basePath}kindergarten/listAll.do?ran="+Math.random(),
            dataType: "json",
            success: function (data) {
                var h = "";
                for (var i = 0; i < data.length; i++) {
                    h += "<option value='"+data[i].kindergartenId+"'>"+data[i].kindergartenName+"</option>";//用appendTo声明是给谁的值
                }
                $("#kindergartenId").append(h);
                // 缺一不可  
                $('#kindergartenId').selectpicker('refresh');
            }
        });
    }


    function validateForm(){
        return $("#kindergartenForm").validate({
            rules: {
                kindergartenName: {
                    required:true
                },
                natureOfKindergarten:{
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
                fees:{
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
                teachingFeatures:{
                    required:true
                },
                activityAddress:{
                    required:true
                },
                createDate:{
                    required:true
                },
                headcount: {
                    required:true
                },
                numberOfContract: {
                    required:true
                },
                numberOfTeachers: {
                    required:true,
                },
                colorOfBalloon: {
                    required:true
                },
                figureId: {
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
                natureOfKindergarten:{
                    required:"幼儿园性质不能为空"
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
                teachingFeatures:{
                    required:"幼儿园的特色不能为空"
                },
                activityAddress: {
                    required: "活动地址不能为空"
                },
                createDate: {
                    required: "收到活动时间不能为空"
                },
                headcount: {
                    required:"幼儿园总人数不能为空"
                },
                numberOfContract: {
                    required:"合同约定人数不能为空"
                },
                numberOfTeachers: {
                    required:"教师人数不能为空"
                },
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
                // if ( element.prop( "type" ) === "checkbox" ) {
                //     error.insertAfter( element.parent( "label" ) );
                if(element.is(':radio') || element.is(':checkbox')){
                    var eid = element.attr('name');
                    error.appendTo(element.parent("label"));
                } else {
                    error.insertAfter( element );
                }
            },
            highlight: function ( element, errorClass, validClass ) {
                $( element ).parents( ".col-sm-4" ).addClass( "has-error" ).removeClass( "has-success" );
            },
            unhighlight: function (element, errorClass, validClass) {
                $( element ).parents( ".col-sm-4" ).addClass( "has-success" ).removeClass( "has-error" );
            }
        } );
    }
    var information = [];
    var classInformation = [];
    var ringDescription = [];
    var game = [];
    $("#btn_submit").on("click",function(){
        if(validateForm().form()){
            var kindergartenId = $("#kindergartenId").val();

            var activityLeader = $("#activityLeader").val();
            var activityAddress = $("#activityAddress").val();
            var createDate = $("#createDate").val();
            var themeId = $("#themeId").selectpicker('val');
            var activityName = $("#activityName").val();
            var activityTime = $("#activityTime").val();
            var site = $("input[name='natureOfKindergarten']:checked").val();
            var rewardType = $("input[name='rewardType']:checked").val();
            var rewardCount = $("#rewardCount").val();
            var rewardContent = $("#rewardContent").val();
            var decorate = $("input[name='decorate']:checked").val();
            var size = $("#size").val();
            var content = $("#content").val();
            var additionalPaidItem = $("input[name='additionalPaidItem']:checkbox").val();
            information.push({"site":site,"rewardType":rewardType,"rewardCount":rewardCount,"rewardContent":rewardContent,"decorate":decorate,"size":size,"content":content,"additionalPaidItem":additionalPaidItem});

            var headcount = $('#headcount').val();
            var numberOfContract = $('#numberOfContract').val();
            var numberOfTeachers = $('#numberOfTeachers').val();
            classInformation.push({"headcount":headcount,"numberOfContract":numberOfContract,"numberOfTeachers":numberOfTeachers});

            var archwayId = $('#archwayId').val();
            var numberOfBalloon = $('#numberOfBalloon').val();
            var colorOfBalloon = $('#colorOfBalloon').val();
            var figureId = $('#figureId').val();
            ringDescription.push({"archwayId":archwayId,"numberOfBalloon":numberOfBalloon,"colorOfBalloon":colorOfBalloon,"figureId":figureId})

            var jsonStr = {};
            var userId = "${franchiseeId}";
            if(userId == null && userId == ""){
                userId = "${user.userId}";
            }
            jsonStr["kindergarten"] = kindergarten;
            jsonStr["information"] = information;
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
                    window.location.href = "${basePath}franchisee/activityToConfirm.do";
                }
            })
            return true;
        }else{
            return false;
        }
    });
    $(function(){
        getTree();
    })
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
</script>
</html>
