<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <title>亲为亲子平台用户登录</title>
    <link rel="icon" href="${basePath}static/loginSpecial/images/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${basePath}static/loginSpecial/images/favicon.ico" type="image/x-icon"/>
    <link href="${basePath}static/loginSpecial/css/default.css" rel="stylesheet" type="text/css" />
    <!--必要样式-->
    <link href="${basePath}static/loginSpecial/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}static/loginSpecial/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}static/loginSpecial/css/loaders.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}static/loginSpecial/js/jquery-2.1.1.min.js"></script>

</head>
<body>
<div class='login'>
    <!--<img class="MyLogo" src="loginSpecial/images/logo01.png" alt="   LOGO">-->
    <div class='login_title'>
        <span>前台用户登录</span>
    </div>
    <form id="loginForm" method="post" enctype="multipart/form-data" class="form-horizontal" action="${basePath}franchisee/login.do">
    <div class='login_fields'>
        <div class='login_fields__user'>
            <div class='icon'>
                <img alt="" src='${basePath}static/loginSpecial/img/user_icon_copy.png'>
            </div>
            <input name="loginName" id="loginName" class="{required:true,minlength:5,messages:{required:'请输入用户名'},equalTo:'#loginName'}" placeholder='用户名' maxlength="16" type='text' autocomplete="off"/>
            <div class='validation'>
                <img alt="" src='${basePath}static/loginSpecial/img/tick.png'>
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='${basePath}static/loginSpecial/img/lock_icon_copy.png'>
            </div>
            <input name="password" id="password" placeholder='密码' class="ValidateNum" maxlength="16" type='password' autocomplete="off"/>
            <div class='validation'>
                <img alt="" src='${basePath}static/loginSpecial/img/tick.png'>
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='${basePath}static/loginSpecial/img/key.png'>
            </div>
            <input name="checkCode" id="checkCode" class="ValidateNum" placeholder='验证码不区分大小写' maxlength="4" type='text' autocomplete="off">
    <%--<canvas class="J_codeimg" id="check" width="300" height="80">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>--%>
            <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
            <a onclick="changeImg()" href="javascript:void(0);">
                <img id="_code" class="J_codeimg" src="${basePath}franchisee/getGifCode.do"/>
            </a>
            </div>
        </div>
        <div class='login_fields__submit'>
            <input type='button' id="btn_login" value='登录'>
        </div>
    </div>
    <div>
        ${franchisee_msg}
    </div>
    </form>
    <div class='disclaimer'>
        <p>欢迎登陆亲为亲子活动平台</p>
    </div>
</div>

<link href="${basePath}static/loginSpecial/layui/css/layui.css" rel="stylesheet" type="text/css" />
<!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
<script type="text/javascript" src="${basePath}static/loginSpecial/js/jquery-ui.min.js"></script>
<script type="text/javascript" src='${basePath}static/loginSpecial/js/stopExecutionOnTimeout.js?t=1'></script>
<script src="${basePath}static/loginSpecial/layui/layui.js" type="text/javascript"></script>
<script src="${basePath}static/loginSpecial/js/Particleground.js" type="text/javascript"></script>
<%--<script src="${basePath}static/loginSpecial/js/Treatment.js" type="text/javascript"></script>--%>
<script src="${basePath}static/loginSpecial/js/jquery.mockjax.js" type="text/javascript"></script>
<%--<script src="${basePath}static/loginSpecial/js/controlLogin.js" type="text/javascript"></script>--%>
<script type="text/javascript">
    // 粒子背景特效
    $('body').particleground({
        dotColor: '#E8DFE8',
        lineColor: '#1b3273'
    });
    function changeImg(){
        var img = document.getElementById("_code");
        var d = new Date();
        var time = d.getTime();
        img.src = "${basePath}franchisee/getGifCode.do?time="+time;
        console.log(img.src)
    }

    $(function(){
        $("#btn_login").on("click",function(){
            if($("#loginName").val() == ""){
                alert("请输入登录账号");
                $("#loginName").focus();
                return false;
            }else if($("#password").val() == ""){
                alert("密码不能为空");
                $("#password").focus();
                return false;
            }else if($("#checkCode").val() == "") {
                alert("验证码不能为空");
                $("#checkCode").focus();
            }else{
                if($("#checkCode").val() != ""){
                    var checkCode = $("#checkCode").val();
                    $.ajax({
                        url :"${basePath}franchisee/verify.do",
                        type:"post",
                        dataType:"json",
                        data : {
                            checkCode : checkCode
                        },
                        success : function(data) {
                            let result = data.result;
                            console.log(result);
                            if(result=="success"){
                            <%--$.ajax({--%>
                            <%--url:"${basePath}franchisee/login.do",--%>
                            <%--type:"post",--%>
                            <%--dataType:"json",--%>
                            <%--data:$("#loginForm").serialize(),--%>
                            <%----%>
                            <%--})--%>
                                return $("#loginForm").submit();

                            }else{
                                alert(data.message);
                            }
                        }
                    });

                }
            }

        });
    })
</script>
</body>
</html>