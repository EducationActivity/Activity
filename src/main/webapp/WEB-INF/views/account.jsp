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
<title>我的账号</title>
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


<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="${basePath}static/js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="${basePath}static/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${basePath}static/js/memenu.js"></script>
<script src="${basePath}static/js/messages_zh.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
	<style>
		.panel-group{max-height:770px;overflow: auto;}
		.leftMenu{margin:10px;margin-top:5px;}
		.leftMenu .panel-heading{font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
		.leftMenu .panel-heading span{position:absolute;right:10px;top:12px;}
		.leftMenu .menu-item-left{padding: 2px; background: transparent; border:1px solid transparent;border-radius: 6px;}
		.leftMenu .menu-item-left:hover{background:#C4E3F3;border:1px solid #1E90FF;}
	</style>
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><a href="#">帮助</a></li>|
					<li><a href="#">加入我们</a></li>|
					<li><a href="#">我的活动</a></li>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link">Email:<a href="mailto:info@example.com">mail@example.com</a></li>|
					<li class="top_link"><a href="${basePath}franchisee/account.do">我的账号</a></li>
				</ul>
			</div>
            <div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="header-top">
	 <div class="header-bottom">
		 <div class="container">			
				<div class="logo">
					<a href="${basePath}index.do"><h1>首页</h1></a>
				</div>
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="${basePath}index.do">首页</a></li>
					<li class="grid"><a href="#">活动</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="product.html">New Arrivals</a></li>
										<li><a href="product.html">Men</a></li>
										<li><a href="product.html">Women</a></li>
										<li><a href="product.html">Accessories</a></li>
										<li><a href="product.html">Kids</a></li>
										<li><a href="product.html">login</a></li>
										<li><a href="product.html">Brands</a></li>
										<li><a href="product.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="product.html">Men</a></li>
										<li><a href="product.html">Women</a></li>
										<li><a href="product.html">Brands</a></li>
										<li><a href="product.html">Kids</a></li>
										<li><a href="product.html">Accessories</a></li>
										<li><a href="product.html">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="product.html">Levis</a></li>
										<li><a href="product.html">Persol</a></li>
										<li><a href="product.html">Nike</a></li>
										<li><a href="product.html">Edwin</a></li>
										<li><a href="product.html">New Balance</a></li>
										<li><a href="product.html">Jack & Jones</a></li>
										<li><a href="product.html">Paul Smith</a></li>
										<li><a href="product.html">Ray-Ban</a></li>
										<li><a href="product.html">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">物料</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="product.html">New Arrivals</a></li>
										<li><a href="product.html">Men</a></li>
										<li><a href="product.html">Women</a></li>
										<li><a href="product.html">Accessories</a></li>
										<li><a href="product.html">Kids</a></li>
										<li><a href="product.html">login</a></li>
										<li><a href="product.html">Brands</a></li>
										<li><a href="product.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="product.html">Men</a></li>
										<li><a href="product.html">Women</a></li>
										<li><a href="product.html">Brands</a></li>
										<li><a href="product.html">Kids</a></li>
										<li><a href="product.html">Accessories</a></li>
										<li><a href="product.html">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="product.html">Levis</a></li>
										<li><a href="product.html">Persol</a></li>
										<li><a href="product.html">Nike</a></li>
										<li><a href="product.html">Edwin</a></li>
										<li><a href="product.html">New Balance</a></li>
										<li><a href="product.html">Jack & Jones</a></li>
										<li><a href="product.html">Paul Smith</a></li>
										<li><a href="product.html">Ray-Ban</a></li>
										<li><a href="product.html">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">课程</a></li>
					<li><a href="${basePath}franchisee/account.do">我的账号</a></li>
					<li class="grid"><a href="#">联系我们</a></li>
				</ul>
				<div class="clearfix"> </div>
			 </div>
			 <!---->
			 <%--<div class="cart box_1">--%>
			 <%--<a href="checkout.html">--%>
			 <%--<h3> <div class="total">--%>
			 <%--<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>--%>
			 <%--<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></h3>--%>
			 <%--</a>--%>
			 <%--<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>--%>
			 <%--<div class="clearfix"> </div>--%>
			 <%--</div>--%>
		 	<div class="clearfix"></div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
	  </div>
</div>
<!---->
<div class="container">
	  <ol class="breadcrumb">
		  <li><a href="${basePath}index.do">首页</a></li>
		  <li class="active">我的账号</li>
	 </ol>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="panel-group table-responsive" role="tablist">
				<div class="panel panel-primary leftMenu">
					<!-- 利用data-target指定要折叠的分组列表 -->
					<div class="panel-heading" id="collapseListGroupHeading1" data-toggle="collapse" data-target="#collapseListGroup1" role="tab" >
						<h4 class="panel-title">
							我的账号
							<span class="glyphicon glyphicon-chevron-up right"></span>
						</h4>
					</div>
					<!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
					<div id="collapseListGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading1">
						<ul class="list-group">
							<li class="list-group-item">
								<!-- 利用data-target指定URL -->
								<button class="menu-item-left" onclick="update()">
									<span class="glyphicon glyphicon-triangle-right"></span>个人信息
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="#updatePwd" data-toggle="modal">
										<span class="glyphicon glyphicon-triangle-right"></span>修改密码
									</a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="${basePath}franchisee/loginOut.do">
										<span class="glyphicon glyphicon-triangle-right"></span>安全退出
									</a>
								</button>
							</li>
						</ul>
					</div>
				</div><!--panel end-->
				<div class="panel panel-primary leftMenu">
					<div class="panel-heading" id="collapseListGroupHeading2" data-toggle="collapse" data-target="#collapseListGroup2" role="tab" >
						<h4 class="panel-title">
							活动信息
							<span class="glyphicon glyphicon-chevron-down right"></span>
						</h4>
					</div>
					<div id="collapseListGroup2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
						<ul class="list-group">
							<li class="list-group-item">
								<button class="menu-item-left">
                                    <a href="${basePath}franchisee/activityToConfirm.do" target="mainframe">
                                         <p class="glyphicon glyphicon-triangle-right">活动确认单</p>
                                    </a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="${basePath}kindergarten/franchiseeListPage.do" target="mainframe">
										<p class="glyphicon glyphicon-triangle-right">幼儿园信息列表</p>
									</a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="#">
										<p class="glyphicon glyphicon-triangle-right">活动物料列表</p>
									</a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="#">
										<p class="glyphicon glyphicon-triangle-right">活动游戏列表</p>
									</a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="#">
										<p class="glyphicon glyphicon-triangle-right">活动人员列表</p>
									</a>
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<a href="${basePath}activityPhotos/franchiseeListPage.do" target="mainframe">
                                        <p class="glyphicon glyphicon-triangle-right">活动图片列表</p>
                                    </a>
								</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="panel panel-primary leftMenu">
					<div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab" >
						<h4 class="panel-title">
							分组3
							<span class="glyphicon glyphicon-chevron-down right"></span>
						</h4>
					</div>
					<div id="collapseListGroup3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading3">
						<ul class="list-group">
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项3-1
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项3-2
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项3-3
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项3-4
								</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10">
            <div style="width: 100%;height: 1561px;">
                <iframe id="mainframe" width="100%" height="1500px" scrolling="no" frameborder="0" noresize="noresize" name="mainframe" src="${basePath}franchisee/myAccount.do?franchiseeId=${franchiseeId}"></iframe>
            </div>
		</div>
	</div>
</div>

<div class="modal fade" id="updatePwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog" role="document">
		<form id="updatePwdForm" class="form-horizontal" method="post">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="franchiseeId" name="franchiseeId" value="${franchiseeId }" />
					<div class="form-group">
						<div class="col-md-2">
							<label class="control-label" for="password">新密码:</label>
						</div>
						<div class="col-md-10">
							<input id="password" name="password" type="password" class="form-control"
								   placeholder="请输入新密码">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2">
							<label class="control-label" for="rowPassword">确认密码:</label>
						</div>
						<div class="col-md-10">
							<input id="rowPassword" name="rowPassword" type="password" class="form-control"
								   placeholder="请输入确认密码">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="close" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="submit" class="btn btn-primary">保存</button>
				</div>
			</div>
		</form>
	</div>
</div>
<div class="modal fade" id="franchiseeUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">修改加盟商的信息</h4>
			</div>
			<div class="modal-body">
				<form id="franchiseeUpdateForm" class="form-horizontal">
				<input type="hidden" id="franchiseeId1" name="franchiseeId" value="${franchiseeId}">
				<div class="form-group">
					<div class="col-md-2">
						<label class="control-label" for="loginName">登录名:</label>
					</div>
					<div class="col-md-10">
						<input type="text" name="loginName" id="loginName" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-2">
						<label class="control-label" for="franchiseeName">姓名:</label>
					</div>
					<div class="col-md-10">
						<input type="text" name="franchiseeName" id="franchiseeName" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-2">
						<label class="control-label" for="phone">电话:</label>
					</div>
					<div class="col-md-10">
						<input type="text" name="phone" id="phone" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-2">
						<label class="control-label" for="email">邮箱:</label>
					</div>
					<div class="col-md-10">
						<input type="text" name="email" id="email" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-2">
						<label class="control-label" for="locality">所在地:</label>
					</div>
					<div class="col-md-10">
						<input type="text" name="locality" id="locality" class="form-control">
					</div>
				</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" id="btn_submit" class="btn btn-primary">保存</button>
			</div>

		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</div>

 <div class="copywrite">
	 <div class="container">
		 <p>Copyright © 2018 Wedding Store All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	 </div>
</div>
<script !src="">
    function validateForm(){
        return $("#updatePwdForm").validate( {
            rules: {
                password: {
                    required:true,
                    rangelength:[6,12]
                },
                rowPassword: {
                    required: true,
                    rangelength: [6,12],
                    equalTo:"#password"
                }
            },
            messages: {
                password: {
                    required: "新密码密码不能为空",
                    rangelength: "密码长度在6到12位之间"
                },
                rowPassword: {
                    required: "确认密码不能为空",
                    rangelength: "密码长度在6到12位之间",
                    equalTo:"确认密码与新密码不一致"
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
    }
    function validateForm1(){
        return $("#franchiseeUpdateForm").validate({
            rules: {
                loginName: {
                    required:true
                },
                franchiseeName: {
                    required:true
                },
                phone: {
                    required:true,
					rangelength:[11,11]
                },
                email: {
                    required:true,
					email:true
                },
                locality: {
                    required:true
                }
            },
            messages: {
                loginName: {
                    required: "新密码密码不能为空"
                },
				franchiseeName: {
                    required: "姓名不能为空"
                },
                phone: {
                    required:"手机号码不能为空",
                    rangelength:"手机号码为11位"
                },
                email: {
                    required:"邮箱不能为空",
                    email:"邮箱格式不正确"
                },
                locality: {
                    required:"地址不能为空"
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
    }
	//注册表单验证
	$(validateForm());
	$(validateForm1());

    $("#submit").on("click",function () {
        var franchiseeId = $("#franchiseeId").val();
        if(validateForm().form()){
            $.ajax({
                url: "${basePath}franchisee/updatePwd.do?franchiseeId="+franchiseeId,
                type:"post",
                dataType:"json",
                data: $("#updatePwdForm").serialize(),
                success: function(data){
                    $('#updatePwd').modal('hide');
                    window.location.reload();
                    alert(data.message);
                },
                error: function(data){
                    window.location.reload();
                    alert(data.message);
                }
            });
        }
    });
	function update(){
        var franchiseeId = $("#franchiseeId1").val();
        selectById(franchiseeId);
        $("#btn_submit").on("click",function () {
            if(validateForm1().form()){
                var loginName = $("#loginName").val();
                var franchiseeName = $("#franchiseeName").val();
                var phone = $("#phone").val();
                var email = $("#email").val();
                var locality = $("#locality").val();
                $.ajax({
                    url: "${basePath}franchisee/update.do",
                    type:"post",
                    dataType:"json",
                    data: {
                        franchiseeId:franchiseeId,
                        loginName:loginName,
                        franchiseeName:franchiseeName,
                        phone:phone,
                        email:email,
                        locality:locality
                    },
                    success: function(data){
                        $('#franchiseeUpdateModel').modal('hide');
                        window.location.reload();
                        alert(data.message);
                    },
                    error: function(data){
                        window.location.reload();
                        alert(data.message);
                    }
                });
            }
        })
	}

    function selectById(franchiseeId){
        $.ajax({
            url: "${basePath}franchisee/listById.do?franchiseeId="+franchiseeId,
            type:"post",
            dataType:"json",
			success:function(data){
                $("#loginName").val(data[0].loginName);
                $("#franchiseeName").val(data[0].franchiseeName);
                $("#phone").val(data[0].phone);
                $("#email").val(data[0].email);
                $("#locality").val(data[0].locality);
                $('#franchiseeUpdateModel').modal('show');
			}
        });
	}

    $('#updatePwd').on('hidden.bs.modal', function () {
        window.location.reload();
    })

    $('#franchiseeUpdateModel').on('hidden.bs.modal', function () {
        window.location.reload();
    })


    $(function(){
        $(".panel-heading").click(function(e){
            /*切换折叠指示图标*/
            $(this).find("span").toggleClass("glyphicon-chevron-down");
            $(this).find("span").toggleClass("glyphicon-chevron-up");
        });
    });

</script>
</body>

</html>