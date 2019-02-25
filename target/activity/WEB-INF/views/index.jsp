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
<title>首页</title>
<link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>static/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="<%=basePath%>static/js/simpleCart.min.js"></script>
<!-- start menu -->
<link href="<%=basePath%>static/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>static/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><a href="#">帮助</a></li>
					<%--<li><a href="contact.html">联系我们</a></li>--%>
					<%--<li><a href="login.html">Track Order</a></li>--%>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link">Email:<a href="mailto:info@example.com">mail@example.com</a></li>|
					<li class="top_link"><a href="<%=basePath%>franchisee/account.do">${loginName}</a></li>
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
				<a href="${basePath}index.do"><h1>亲为亲子活动平台</h1></a>
			</div>
			 <!---->
		 
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
			 </div>
			<div class="clearfix"> </div>
	  </div>
</div>
<div class="banner">
	 <div class="container">
	 </div>
</div>

<div class="welcome">
	 <div class="container">
		 <h3 align="center">活动案例</h3>
		 <a href="#"><p align="right">更多</p></a>
	 </div>
</div>
<!---->
<div class="bride-grids">
	 <div class="container">
		 <div class="col-md-4 bride-grid">
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="<%=basePath%>static/images/20190104095406.jpg" alt=""/>
						<figcaption>
							<%--<h4>Nullam molestie </h4>--%>
							<%--<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																--%>
						</figcaption>			
				 </figure>
				 <div class="clearfix"></div>
				 <h3>Wedding Dresses</h3>
			 </div>
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="<%=basePath%>static/images/20190104095432.jpg" alt=""/>
						<figcaption>
							<%--<h4>Nullam molestie </h4>--%>
							<%--<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																--%>
						</figcaption>			
				 </figure>	
				 <div class="clearfix"></div>
				 <h3>BridalParty & Dresses</h3>
			 </div>
		 </div>
		 <div class="col-md-4 bride-grid">
				<div class="content-grid l-grids">
						<img src="<%=basePath%>static/images/20190104095449.jpg" alt=""/>
				 <h3>Bridesmade Dresses</h3>
			 </div>
		 </div>
		 <div class="col-md-4 bride-grid">
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="<%=basePath%>static/images/20190104095441.jpg" alt=""/>
						<figcaption>
							<%--<h4>Nullam molestie </h4>--%>
							<%--<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																--%>
						</figcaption>			
				 </figure>	
				 <div class="clearfix"></div>
				 <h3>Wedding</h3>
			 </div>
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="<%=basePath%>static/images/20190104095445.jpg" alt=""/>
						<figcaption>
							<%--<h4>Nullam molestie </h4>--%>
							<%--<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																--%>
						</figcaption>			
				 </figure>
					<div class="clearfix"></div>
				 <h3>Most Beautiful</h3>
			 </div>
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
<div class="featured">
	 <div class="container">
		 <h3>活动</h3>
		 <div class="feature-grids">
			 <div class="col-md-3 feature-grid jewel">
				 <a href="product.html"><img src="<%=basePath%>static/images/20190104095449.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="<%=basePath%>static/images/20190104095436.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 68000</p>
						 <span class="pric1"><del>Rs 70000</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
			 </div>
			 <div class="col-md-3 feature-grid jewel">
				 <a href="product.html"><img src="<%=basePath%>static/images/20190104095457.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Wedding Ceramic Pot </h4>
						 <p>Rs 1200</p>
						 <span class="pric1"><del>Rs 2000</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="<%=basePath%>static/images/20190104095501.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
					 <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div>
                 </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
		 <div class="feature-grids">
			 <div class="col-md-3 feature-grid jewel">
				 <a href="product.html"><img src="<%=basePath%>static/images/p7.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div>
                 </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="<%=basePath%>static/images/p11.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div>
                 </a>
			 </div>
			 <div class="col-md-3 feature-grid jewel">
				 <a href="product.html"><img src="<%=basePath%>static/images/p12.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="<%=basePath%>static/images/f2.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Jewellerys #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="product.html"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="arrivals">
	 <div class="container">	
		 <h3>物料</h3>
		 <div class="arrival-grids">			 
			 <ul id="flexiselDemo1">
				 <li>
					 <a href="product.html"><img src="<%=basePath%>static/images/a1.jpg" alt=""/>
					 <div class="arrival-info">
						 <h4>Fusion Black Polyester Suits</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li>
					 <a href="product.html"><img src="<%=basePath%>static/images/a2.jpg" alt=""/>
						<div class="arrival-info">
						 <h4>Vogue4All White Net Gowns</h4>
						 <p>Rs 14000</p>
						 <span class="pric1"><del>Rs 15000</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li>
					 <a href="product.html"><img src="<%=basePath%>static/images/a3.jpg" alt=""/>
						<div class="arrival-info">
						 <h4>Platinum Waist Coat Set Navy</h4>
						 <p>Rs 4000</p>
						 <span class="pric1"><del>Rs 8500</del></span>
						 <span class="disc">[45% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li>
                    <a href="product.html"><img src="<%=basePath%>static/images/a4.jpg" alt=""/>
                   <div class="arrival-info">
						 <h4>La Fanatise White Net Gowns</h4>
						 <p>Rs 18000</p>
						 <span class="pric1"><del>Rs 21000</del></span>
						 <span class="disc">[8% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div>
                    </a>
				 </li>
				</ul>
				<script type="text/javascript">
				 $(window).load(function() {			
				  $("#flexiselDemo1").flexisel({
					visibleItems: 4,
					animationSpeed: 1000,
					autoPlay: true,
					autoPlaySpeed: 3000,    		
					pauseOnHover:true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
							changePoint:480,
							visibleItems: 1
						}, 
						landscape: { 
							changePoint:640,
							visibleItems: 2
						},
						tablet: { 
							changePoint:768,
							visibleItems: 3
						}
					}
				});
				});
				</script>
				<script type="text/javascript" src="<%=basePath%>static/js/jquery.flexisel.js"></script>
		  </div>
	 </div>
</div>
<!---->
<%--<div class="shoping">--%>
	 <%--<div class="container">--%>
		 <%--<div class="shpng-grids">--%>
			 <%--<div class="col-md-4 shpng-grid">--%>
				 <%--<h3>Free Shipping</h3>--%>
				 <%--<p>On Order Over Rs999</p>--%>
			 <%--</div>--%>
			 <%--<div class="col-md-4 shpng-grid">--%>
				 <%--<h3>Order Return</h3>--%>
				 <%--<p>Return Within 14days</p>--%>
			 <%--</div>--%>
			 <%--<div class="col-md-4 shpng-grid">--%>
				 <%--<h3>COD</h3>--%>
				 <%--<p>Cash On Delivery</p>--%>
			 <%--</div>--%>
			 <%--<div class="clearfix"></div>--%>
		 <%--</div>--%>
	 <%--</div>--%>
<%--</div>--%>
<!---->
<%--<div class="footer">--%>
	 <%--<div class="container">--%>
		 <%--<div class="ftr-grids">--%>
			 <%--<div class="col-md-3 ftr-grid">--%>
				 <%--<h4>About Us</h4>--%>
				 <%--<ul>--%>
					 <%--<li><a href="#">Who We Are</a></li>--%>
					 <%--<li><a href="contact.html">Contact Us</a></li>--%>
					 <%--<li><a href="#">Our Sites</a></li>--%>
					 <%--<li><a href="#">In The News</a></li>--%>
					 <%--<li><a href="#">Team</a></li>--%>
					 <%--<li><a href="#">Carrers</a></li>					 --%>
				 <%--</ul>--%>
			 <%--</div>--%>
			 <%--<div class="col-md-3 ftr-grid">--%>
				 <%--<h4>Customer service</h4>--%>
				 <%--<ul>--%>
					 <%--<li><a href="#">FAQ</a></li>--%>
					 <%--<li><a href="#">Shipping</a></li>--%>
					 <%--<li><a href="#">Cancellation</a></li>--%>
					 <%--<li><a href="#">Returns</a></li>--%>
					 <%--<li><a href="#">Bulk Orders</a></li>--%>
					 <%--<li><a href="#">Buying Guides</a></li>					 --%>
				 <%--</ul>--%>
			 <%--</div>--%>
			 <%--<div class="col-md-3 ftr-grid">--%>
				 <%--<h4>Your account</h4>--%>
				 <%--<ul>--%>
					 <%--<li><a href="account.html">Your Account</a></li>--%>
					 <%--<li><a href="#">Personal Information</a></li>--%>
					 <%--<li><a href="#">Addresses</a></li>--%>
					 <%--<li><a href="#">Discount</a></li>--%>
					 <%--<li><a href="#">Track your order</a></li>					 					 --%>
				 <%--</ul>--%>
			 <%--</div>--%>
			 <%--<div class="col-md-3 ftr-grid">--%>
				 <%--<h4>Categories</h4>--%>
				 <%--<ul>--%>
					 <%--<li><a href="#">> Wedding</a></li>--%>
					 <%--<li><a href="#">> Jewellerys</a></li>--%>
					 <%--<li><a href="#">> Shoes</a></li>--%>
					 <%--<li><a href="#">> Flowers</a></li>--%>
					 <%--<li><a href="#">> Cakes</a></li>--%>
					 <%--<li><a href="#">...More</a></li>					 --%>
				 <%--</ul>--%>
			 <%--</div>--%>
			 <%--<div class="clearfix"></div>--%>
		 <%--</div>		--%>
	 <%--</div>--%>
<%--</div>--%>
<!---->
 <div class="copywrite">
	 <div class="container" align="center">
			 <p>Copyright © 2019 Wedding Store All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		 </div>
</div>		 
</body>
</html>
