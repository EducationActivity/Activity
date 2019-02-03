<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
<title>管理后台-用户登录</title>
<script>
	var basePath = "${basePath}";
</script>

<link href="${basePath }static/css/style.default.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>

  <![endif]-->
<script src="${basePath }static/js/html5shiv.min.js"></script>
<script src="${basePath }static/js/respond.min.js"></script>
<script src="${basePath}static/js/jquery-1.11.1.min.js"></script>
<script src="${basePath}static/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${basePath}static/js/bootstrap.min.js"></script>
<script src="${basePath}static/js/custom.js"></script>

<style>
.login-error {
	text-align: center;
	color: #F00;
}
</style>

</head>

<body class="signin">
	<section>
		<div class="signinpanel">
			<div class="row">
				<div class="col-md-12">
					<form method="post" action="${basePath}sysUser/register.do">
						<h3 class="nomargin" align="center">后台用户登录</h3>
						<div class="login-error">${msg}</div>
						<p class="mt5 mb20"></p>
						<input type="text" class="form-control uname" name="loginName" placeholder="登录账号" required />
						<input type="password" class="form-control pword" name="userPassword" placeholder="密码" required />
						<!-- <a href=""><small>忘记密码?</small></a> -->
						<button type="submit" class="btn btn-success btn-block">登录</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>