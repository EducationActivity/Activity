<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<head>
    <title>亲为亲子活动平台</title>
    <link href="${basePath}/static/css/style1.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="${basePath}static/js/jquery.min.js"></script>
    <script src="${basePath}static/js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script src="${basePath}static/js/jquery.validate.min.js"></script>
    <script src="${basePath}static/js/jquery.form.js"></script>

    <link href='${basePath}static/css/family=Nixie+One.css' rel='stylesheet' type='text/css'>
    <link href='${basePath}static/css/family=Source+Sans+Pro.css' rel='stylesheet' type='text/css'>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
    <style>
        .login-error {
            text-align: center;
            color: #F00;
        }
    </style>
    <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
</head>
<body>
<div class="main">
    <h1>亲为亲子活动平台</h1>
    <h2>欢迎物料供应商</h2>
    <div class="sap_tabs">
        <div class="login-error">${supplier_msg}</div>
        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
            <ul class="resp-tabs-list">
                <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>注册</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>登录</span></li>
                <div class="clear"></div>
            </ul>
            <!---->
            <div class="resp-tabs-container">
                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                    <div class="facts">
                        <!--login1-->
                        <div class="register">
                        <form id="registerForm" method="post" action="${basePath}supplier/add.do">
                            <input placeholder="供应商姓名" type="text" id="supplierName" name="supplierName"/>
                            <input placeholder="登录名" type="text" id="loginName" name="loginName"/>
                            <input placeholder="密码" type="password" id="password" name="password"/>
                            <input placeholder="确认密码" type="password" id="confirmPassword" name="confirmPassword"/>
                            <input placeholder="电话" type="text" id="phone" name="phone"/>
                            <input placeholder="邮箱" type="text" id="email" name="email"/>
                            <input placeholder="地址" type="text" id="address" name="address"/>
                            <div class="sign-up">
                                <input type="submit" value="创建账号"/>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>
                <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
                    <div class="facts">
                        <div class="register">
                            <form id="loginForm" method="post" action="${basePath}supplier/login.do">
                                <input placeholder="登录名" type="text" id="loginName1" name="loginName">
                                <input placeholder="密码" type="password" id="password1" name="password">
                                <div class="sign-up">
                                    <input type="submit" value="提交"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <a href="javascript:void(0);" onclick="skip()">加盟商注册登录</a>
            </div>
        </div>
    </div>
    <!--start-copyright-->
    <div class="copy-right">
        <div class="wrap">
            <p>Copyright &copy; 2018 Responsive Tabs Form.  All rights  Reserved | Design by <a href="http://w3layouts.com">亲为亲子活动平台</a></p>
        </div>
    </div>
    <!--//end-copyright-->
</div>
</body>
<script>
function validateForm(){
    $("#registerForm").validate({
        rules:{
            "supplierName":{
              "required":true
            },
            "loginName":{
                "required":true,
            },
            "password":{
                "required":true,
                "rangelength":[6,12]
            },
            "confirmPassword":{
                "required":true,
                "rangelength":[6,12],
                "equalTo":"#password"
            },
            "phone":{
                "required":true,
                "rangelength":[11,11]
            },
            "email":{
                "required":true,
                "email":true
            },
            "address":{
                "required":true
            }
        },
        messages:{
            "supplierName":{
                "required":"物料供应商名字不能为空"
            },
            "loginName":{
                "required":"用户名不能为空"
            },
            "password":{
                "required":"密码不能为空",
                "rangelength":"密码长度6-12位"
            },
            "confirmPassword":{
                "required":"确认密码不能为空",
                "rangelength":"密码长度6-12位",
                "equalTo":"两次密码不一致"
            },
            "phone":{
                "required":"电话号码不能为空",
                "rangelength":"电话号码长度为11位"
            },
            "email":{
                "required":"邮箱不能为空",
                "email":"邮箱格式不正确"
            },
            "address":{
                "required":"用户所在地不能为空"
            }

        }
    });
}
var options = {
    url: "${basePath}supplier/add.do", //提交地址:默认是form的action,如果申明,则会覆盖
    data:$("#registerForm").serialize(),
    type: "post",   //默认是form的method（get or post），如果申明，则会覆盖
    beforeSubmit: validateForm(), //提交前的回调函数
    success: function (data,status){
        alert(data.message)
    },  //提交成功后的回调函数
    // target: "#output",  //把服务器返回的内容放入id为output的元素中
    dataType: "json", //html(默认), xml, script, json...接受服务端返回的类型
    clearForm: true,  //成功提交后，是否清除所有表单元素的值
    resetForm: true,  //成功提交后，是否重置所有表单元素的值
    timeout: 10000     //限制请求的时间，当请求大于3秒后，跳出请求
};

$('#registerForm').ajaxForm(options);

$("#loginForm").validate({
    rules: {
        "loginName": {
            "required": true,
        },
        "password": {
            "required": true,
            "rangelength": [6, 12]
        }
    },
    messages: {
        "loginName": {
            "required": "用户名不能为空"
        },
        "password": {
            "required": "密码不能为空",
            "rangelength": "密码长度6-12位"
        }
    },

})

function skip(){
    window.location.href = "${basePath}login.do"
}
</script>
</html>
