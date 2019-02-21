<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<<<<<<< HEAD
<<<<<<< HEAD
<html lang="en">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="x-ua-compatible" content="ie=edge"/>
	<title>亲为亲子活动平台</title>
	<meta content="" name="description"/>
	<meta content="" name="keywords"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta content="telephone=no" name="format-detection"/>
	<meta name="HandheldFriendly" content="true"/>
	<link rel="stylesheet" href="${basePath}static/assets/css/master.css"/>
	<!-- SWITCHER-->
	<link href="${basePath}static/assets/plugins/switcher/css/switcher.css" rel="stylesheet" id="switcher-css"/>
	<link href="${basePath}static/assets/plugins/switcher/css/color1.css" rel="alternate stylesheet" title="color1"/>
	<link href="${basePath}static/assets/plugins/switcher/css/color2.css" rel="alternate stylesheet" title="color2"/>
	<link href="${basePath}static/assets/plugins/switcher/css/color3.css" rel="alternate stylesheet" title="color3"/>
	<link href="${basePath}static/assets/plugins/switcher/css/color4.css" rel="alternate stylesheet" title="color4"/>
	<link href="${basePath}static/assets/plugins/switcher/css/color5.css" rel="alternate stylesheet" title="color5"/>
	<link rel="icon" type="image/x-icon" href="${basePath}static/image/favicon.ico"/><!--[if lt IE 9 ]>
	<script src="${basePath}static/assets/js/separate-js/html5shiv-3.7.2.min.js" type="text/javascript"></script><meta content="no" http-equiv="imagetoolbar">
	<![endif]-->
</head>
<body>
<!-- Loader-->
<div id="page-preloader"><span class="spinner border-t_second_b border-t_prim_a"></span></div>
<!-- Loader end-->

<div data-header="sticky" data-header-top="200" data-canvas="container" class="l-theme animated-css">

	<!-- Start Switcher-->
	<div class="switcher-wrapper">
		<div class="demo_changer">
			<div class="demo-icon text-primary"><i class="fa fa-cog fa-spin fa-2x"></i></div>
			<div class="form_holder">
				<div class="predefined_styles">
					<div class="skin-theme-switcher">
						<h4>Color</h4><a href="javascript:void(0);" data-switchcolor="color1" style="background-color:#fe3e01;" class="styleswitch"></a><a href="javascript:void(0);" data-switchcolor="color2" style="background-color:#FFAC3A;" class="styleswitch"></a><a href="javascript:void(0);" data-switchcolor="color3" style="background-color:#28af0f;" class="styleswitch"></a><a href="javascript:void(0);" data-switchcolor="color4" style="background-color:#e425e9;" class="styleswitch"></a><a href="javascript:void(0);" data-switchcolor="color5" style="background-color:#0c02bd;" class="styleswitch"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end switcher-->
	<!-- ==========================-->
	<!-- SEARCH MODAL-->
	<!-- ==========================-->
	<div class="header-search open-search">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
					<div class="navbar-search">
						<form class="search-global">
							<input type="text" placeholder="Type to search" autocomplete="off" name="s" value="" class="search-global__input"/>
							<button class="search-global__btn"><i class="icon stroke icon-Search"></i></button>
							<div class="search-global__note">Begin typing your search above and press return to search.</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<button type="button" class="search-close close"><i class="fa fa-times"></i></button>
	</div>
	<!-- ==========================-->
	<!-- MOBILE MENU-->
	<!-- ==========================-->
	<div data-off-canvas="mobile-slidebar left overlay">
		<ul class="nav navbar-nav">
			<li><a href="${basePath}index.do" >主页</a></li>
			<li><a href="${basePath}activity_frontPage.do">活动</a></li>
			<li><a href="${basePath}wupin_frontPage.do">物料</a></li>
			<li><a href="${basePath}course_frontPage.do">课程</a></li>
			<li><a href="${basePath}about.do">关于我们</a></li>
			<li><a href="${basePath}blog_main.do">咨讯</a></li>
			<li><a href="${basePath}contact.do">联系我们</a></li>
			<li><a href="#">活动剪影</a></li>
			<li><a href="${basePath}account.do">个人中心</a></li>

		</ul>
	</div>
	<!-- ==========================-->
	<!-- FULL SCREEN MENU-->
	<!-- ==========================-->
	<div class="wrap-fixed-menu" id="fixedMenu">
		<nav class="fullscreen-center-menu">

			<div class="menu-main-menu-container">

				<ul class="nav navbar-nav">
					<li><a href="${basePath}index.do" >主页</a></li>
					<li><a href="${basePath}activity_frontPage.do">活动</a></li>
					<li><a href="${basePath}wupin_frontPage.do">物料</a></li>
					<li><a href="${basePath}course_frontPage.do">课程</a></li>
					<li><a href="${basePath}about.do">关于我们</a></li>
					<li><a href="${basePath}blog_main.do">咨讯</a></li>
					<li><a href="${basePath}contact.do">联系我们</a></li>
					<li><a href="${basePath}account.do">个人中心</a></li>
					<li><a href="#">活动剪影</a></li>
					<li><a href="#">论坛</a></li>
				</ul>



			</div>    </nav>
		<button type="button" class="fullmenu-close"><i class="fa fa-times"></i></button>
	</div>


	<header class="header header-boxed-width header-background-trans header-logo-black header-topbarbox-1-left header-topbarbox-2-right header-navibox-1-left header-navibox-2-right header-navibox-3-right header-navibox-4-right">

		<div class="container container-boxed-width">
			<nav id="nav" class="navbar">
				<div class="container">
					<div class="header-navibox-1">
						<!-- Mobile Trigger Start-->
						<button class="menu-mobile-button visible-xs-block js-toggle-mobile-slidebar toggle-menu-button"><i class="toggle-menu-button-icon"><span></span><span></span><span></span><span></span><span></span><span></span></i></button>
						<!-- Mobile Trigger End--><a href="${basePath}index.do" class="navbar-brand scroll"><img src="${basePath}static/assets/media/general/logo.png" alt="logo" class="normal-logo"/><img src="${basePath}static/assets/media/general/logo.png" alt="logo" class="scroll-logo hidden-xs"/></a>
					</div>
					<div class="header-navibox-3">
						<ul class="nav navbar-nav hidden-xs clearfix vcenter">
							<li>
								<button class="js-toggle-screen toggle-menu-button"><i class="toggle-menu-button-icon"><span></span><span></span><span></span><span></span><span></span><span></span></i></button>
							</li>
							<li><a href="#" class="btn_header_search"><i class="fa fa-search"></i></a></li>
						</ul>
					</div>
					<div class="header-navibox-2">
						<ul class="yamm main-menu nav navbar-nav">
							<%--<li class="dropdown"><a href="${basePath}index.do" data-toggle="dropdown" class="dropdown-toggle">主页<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="${basePath}index.do" >Home ver 01</a></li>
                                    <li><a href="home-2.html" >Home ver 02</a></li>
                                </ul>
                            </li>--%>
							<li><a href="${basePath}index.do">主页</a></li>
							<li><a href="${basePath}activity_frontPage.do">活动</a></li>
							<li><a href="${basePath}wupin_frontPage.do">物料</a></li>
							<li><a href="${basePath}course_frontPage.do">课程</a></li>
							<li><a href="${basePath}account.do">个人中心</a></li>
							<li><a href="${basePath}about.do">关于我们</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">咨讯<b class="caret"></b></a>
								<ul role="menu" class="dropdown-menu">
									<li><a href="${basePath}blog_main.do" >新闻页</a></li>
									<li><a href="${basePath}blog_post.do" >发表我的看法</a></li>
								</ul>
							</li>
							<li><a href="${basePath}contact.do">联系我们</a></li>
							<%--<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pages<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="404.html" >Page 404</a></li>
                                    <li><a href="headers.html" >Headers</a></li>
                                    <li><a href="typography.html" >Typography</a></li>
                                    <li><a href="privacy-policy.html" >Privacy policy</a></li>
                                    <li><a href="terms-of-use.html" >Terms of use</a></li>
                                </ul>
                            </li>--%>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>


	<div id="main-slider" data-slider-width="100%" data-slider-height="860px" data-slider-arrows="true" data-slider-buttons="false" class="main-slider slider-pro">
		<div class="sp-slides">
			<!-- Slide 1-->
			<div class="sp-slide"><img src="${basePath}static/assets/media/components/b-main-slider/bg-1.jpg" alt="slider" class="sp-image"/>
				<div class="container">
					<div class="row">
						<div class="col-sm-10 col-sm-offset-1">
							<div data-width="100%" data-show-transition="right" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" data-vertical="190px" data-horizontal="0" class="main-slider__item-1 sp-layer"><img src="${basePath}static/assets/media/components/b-main-slider/item-1.png" alt="Item"/></div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" data-vertical="250px" data-horizontal="100%" class="main-slider__item-2 sp-layer"><img src="${basePath}static/assets/media/components/b-main-slider/item-2.png" alt="Item"/></div>
							<div data-width="100%" data-show-transition="right" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" data-vertical="530px" data-horizontal="0" class="main-slider__item-3 sp-layer"><img src="${basePath}static/assets/media/components/b-main-slider/item-3.png" alt="Item"/></div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400" class="main-slider__info sp-layer">Birthday Event Management Specialists</div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="600" data-hide-delay="400" class="sp-layer">
								<div class="main-slider__decor bg-primary"></div>
							</div>
							<h2 data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__title sp-layer">celebrate your events<br>that lasts longer</h2>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" class="sp-layer"><a href="services.html" class="main-slider__btn btn btn-primary">ask for a quote</a><a href="services.html" class="main-slider__btn btn btn-default">read more</a></div>
						</div>
					</div>
				</div>
			</div>
			<!-- Slide 2-->
			<div class="sp-slide"><img src="${basePath}static/assets/media/components/b-main-slider/bg-2.jpg" alt="slider" class="sp-image"/>
				<div class="container">
					<div class="row">
						<div class="col-sm-10 col-sm-offset-1">
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400" class="main-slider__info sp-layer">We are the Event Management Specialists</div>
							<h2 data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__title sp-layer">we personalize your wedding events</h2>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="600" data-hide-delay="400" class="sp-layer">
								<div class="main-slider__decor bg-primary"></div>
							</div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" class="sp-layer"><a href="services.html" class="main-slider__btn btn btn-default">our features</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end .main-slider-->
	<section class="section-default">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
					<div class="text-center">
						<h2 class="ui-title-block ui-title-block_lg">Welcome to<span class="text-primary"> Dvents</span></h2>
						<div class="ui-subtitle-block">From Wedding Functions to Birthday Parties or Corporate Events to Musical Functions,<br>We offer full range of Events Management Services that scale to your needs & budget.</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-puzzle"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">Great Services</h3>
							<div class="b-advantages__info">Aorem ipsum dolor sit amet consectetur elit sed lusm tempor incididunt ut labore et dolore mag aliqua enima minim veniam quis nostrud exercitation</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>Read More</a>
						</div>
					</section>
					<!-- end .b-advantages-->

				</div>
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-magic-wand"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">Great People</h3>
							<div class="b-advantages__info">Corem ipsum dolor sit amet consectetur elit sed lusm tempor incididunt ut labore et dolore mag aliqua enima minim veniam quis nostrud exercitation</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>Read More</a>
						</div>
					</section>
					<!-- end .b-advantages-->

				</div>
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-pie-chart"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">Great Ideas</h3>
							<div class="b-advantages__info">Eorem ipsum dolor sit amet consectetur elit sed lusm tempor incididunt ut labore et dolore mag aliqua enima minim veniam quis nostrud exercitation</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>Read More</a>
						</div>
					</section>
					<!-- end .b-advantages-->

				</div>
			</div>
		</div>
	</section>
	<section class="section-default bg-grey">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="text-center">
						<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
						<h2 class="ui-title-block"><span class="text-primary">Dvents</span> Services</h2>
						<div class="ui-subtitle-block">We make your events smart & impactful by personalised event management services</div>
						<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua enim ad minim veniam quis nostrud exercitation ex ea consequat duis aute irure dolor in reprehenderit in voluptate labore et dolore magna aliqua cillum dolore</p>
					</div>
				</div>
			</div>
		</div>
		<div class="label-vertical">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<section class="b-post-sm b-post-sm-1 b-post_mr-rg_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/1.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/1.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Social Events</a></h2>
								</div>
								<div class="entry-content">
									<p>Sit amet consectetur elit sed lusm tempor incidant temdore ut labore etua dolore.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-1 b-post_mr-rg_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/2.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/2.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Corporate Seminars</a></h2>
								</div>
								<div class="entry-content">
									<p>Sit amet consectetur elit sed lusm tempor incidant temdore ut labore etua dolore.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

					</div>
					<div class="col-md-4"><img src="${basePath}static/assets/media/content/340x665/1.jpg" alt="foto" class="img-w-radius img_mr-10 img-responsive"></div>
					<div class="col-md-4">
						<section class="b-post-sm b-post-sm-1 b-post_mr-lf_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/3.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/3.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Wedding Events</a></h2>
								</div>
								<div class="entry-content">
									<p>Sit amet consectetur elit sed lusm tempor incidant temdore ut labore etua dolore.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-1 b-post_mr-lf_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/4.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/4.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Birthday Parties</a></h2>
								</div>
								<div class="entry-content">
									<p>Sit amet consectetur elit sed lusm tempor incidant temdore ut labore etua dolore.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- b-progress width parallax-->
	<div class="section-progress section-progress_mod-a area-bg area-bg_dark parallax">
		<div class="area-bg__inner">
			<ul class="b-progress-list b-progress-list_no-icon list-unstyled clearfix">
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="320" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">Featured Events</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="156" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">Loyal Customers</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="594" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">Good Comments</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="167" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">Trophies Won</span>
				</li>
			</ul>
		</div>
	</div>
	<!-- end b-progress width parallax-->


	<section class="section-gallery">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor"></div>
					<h2 class="ui-title-block"><span class="text-primary">Dvents</span> Gallery</h2>
					<div class="ui-subtitle-block">We make your events smart & impactful by personalised event management services.</div>
				</div>
			</div>
		</div>
		<div class="b-isotope">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<ul class="b-isotope-filter list-inline">
							<li><a href="" data-filter="*" class="current">all events</a></li>
							<li><a href="" data-filter=".corporate">corporate events</a></li>
							<li><a href="" data-filter=".birthday">birthday parties</a></li>
							<li><a href="" data-filter=".wedding">wedding events</a></li>
							<li><a href="" data-filter=".product">product launches</a></li>
							<li><a href="" data-filter=".social">social meetings</a></li>
							<li><a href="" data-filter=".proposal">proposal events</a></li>
						</ul>
					</div>
				</div>
			</div>
			<ul class="b-isotope-grid grid list-unstyled js-zoom-gallery">
				<li class="grid-sizer"></li>
				<li class="b-isotope-grid__item grid-item corporate product"><a href="${basePath}static/assets/media/content/gallery/480x290/1.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/1.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate proposal"><a href="${basePath}static/assets/media/content/gallery/480x290/2.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/2.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item birthday product social proposal"><a href="${basePath}static/assets/media/content/gallery/480x290/3.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/3.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item wedding"><a href="${basePath}static/assets/media/content/gallery/480x290/4.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/4.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate product social proposal"><a href="${basePath}static/assets/media/content/gallery/480x290/5.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/5.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item birthday"><a href="${basePath}static/assets/media/content/gallery/480x290/6.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/6.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item wedding social"><a href="${basePath}static/assets/media/content/gallery/480x290/7.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/7.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate birthday"><a href="${basePath}static/assets/media/content/gallery/480x290/8.jpg" class="b-isotope-grid__inner js-zoom-gallery__item"><img src="${basePath}static/assets/media/content/gallery/480x290/8.jpg" alt="foto"/><span class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i class="icon icon-magnifier-add text-primary"></i></span></a></li>
			</ul>
		</div>
		<!-- end .b-isotope-->
		<div class="text-center"><span class="b-isotope__info">See Our Full Gallery of Events!</span><a href="home.html" class="b-isotope__btn btn btn-primary">visit full gallery</a></div>
	</section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<section data-stellar-background-ratio="0.4" class="b-info section-texture section-radius stellar section-texture_green section-radius">
					<h2 class="b-info__title">Get in Touch With Us!</h2>
					<div class="b-info__text">Ask questions, schedule a meeting or request a proposal. Let’s Get Started</div><a href="home.html" class="b-info__btn btn btn-default btn-sm btn-effect">contact us now</a>
				</section>
				<!-- end b-info-->
			</div>
			<div class="col-md-6">
				<section data-stellar-background-ratio="0.4" class="b-info section-texture section-radius stellar b-info_right section-texture_blue section-radius">
					<h2 class="b-info__title">Do You want To Work With Us!</h2>
					<div class="b-info__text">If you are talented enough than you can join our team and have a bright future</div><a href="home.html" class="b-info__btn btn btn-default btn-sm btn-effect">join our team</a>
				</section>
				<!-- end b-info-->
			</div>
		</div>
	</div>
	<section class="section-default">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor"></div>
					<h2 class="ui-title-block"><span class="text-primary">Dvents</span> Upcoming Events</h2>
					<div class="ui-subtitle-block">We make your events smart & impactful by personalised event management services.</div>
					<div data-pagination="true" data-navigation="false" data-single-item="true" data-auto-play="7000" data-transition-style="fade" data-main-text-animation="true" data-after-init-delay="3000" data-after-move-delay="1000" data-stop-on-hover="true" class="owl-carousel owl-theme enable-owl-carousel">
						<section class="b-events">
							<div class="row">
								<div class="col-sm-6">
									<div class="b-events__media"><img src="${basePath}static/assets/media/components/b-events/555x390_1.jpg" alt="foto" class="img-responsive"/></div>
									<div class="text-center">
										<div class="b-events-calendar bg-primary">
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">25</span><span class="b-events-calendar__title">days</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">16</span><span class="b-events-calendar__title">hours</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">47</span><span class="b-events-calendar__title">mins</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">38</span><span class="b-events-calendar__title">secs</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="b-events__inner">
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>The ABCD Concert 2016</h3>
										<p>Consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqul enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
										<p>Excepteur sint occaecat cupidata non proident sunt in culpa qui officia deserunt mol lit anim id est laborum tempore laboris volputate..</p>
										<h4 class="b-events__subtitle">More Details</h4>
										<div class="b-events__details"><i class="icon icon-map"></i> 32-B, Envato St, Themeforest Ave, CA</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> September 13, 2016  ,  5:00 pm to 11:00 pm</div>
									</div>
								</div>
							</div>
						</section>
						<!-- end b-events-->

						<section class="b-events">
							<div class="row">
								<div class="col-sm-6">
									<div class="b-events__media"><img src="${basePath}static/assets/media/components/b-events/555x390_1.jpg" alt="foto" class="img-responsive"/></div>
									<div class="text-center">
										<div class="b-events-calendar bg-primary">
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">25</span><span class="b-events-calendar__title">days</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">16</span><span class="b-events-calendar__title">hours</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">47</span><span class="b-events-calendar__title">mins</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">38</span><span class="b-events-calendar__title">secs</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="b-events__inner">
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>The ABCD Concert 2016</h3>
										<p>Consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqul enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
										<p>Excepteur sint occaecat cupidata non proident sunt in culpa qui officia deserunt mol lit anim id est laborum tempore laboris volputate..</p>
										<h4 class="b-events__subtitle">More Details</h4>
										<div class="b-events__details"><i class="icon icon-map"></i> 32-B, Envato St, Themeforest Ave, CA</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> September 13, 2016  ,  5:00 pm to 11:00 pm</div>
									</div>
								</div>
							</div>
						</section>
						<!-- end b-events-->

						<section class="b-events">
							<div class="row">
								<div class="col-sm-6">
									<div class="b-events__media"><img src="${basePath}static/assets/media/components/b-events/555x390_1.jpg" alt="foto" class="img-responsive"/></div>
									<div class="text-center">
										<div class="b-events-calendar bg-primary">
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">25</span><span class="b-events-calendar__title">days</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">16</span><span class="b-events-calendar__title">hours</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">47</span><span class="b-events-calendar__title">mins</span></div>
											<div class="b-events-calendar__item"><span class="b-events-calendar__number">38</span><span class="b-events-calendar__title">secs</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="b-events__inner">
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>The ABCD Concert 2016</h3>
										<p>Consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqul enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
										<p>Excepteur sint occaecat cupidata non proident sunt in culpa qui officia deserunt mol lit anim id est laborum tempore laboris volputate..</p>
										<h4 class="b-events__subtitle">More Details</h4>
										<div class="b-events__details"><i class="icon icon-map"></i> 32-B, Envato St, Themeforest Ave, CA</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> September 13, 2016  ,  5:00 pm to 11:00 pm</div>
									</div>
								</div>
							</div>
						</section>
						<!-- end b-events-->

					</div>
					<!-- end slider-->

				</div>
			</div>
		</div>
	</section>
	<div class="section-default area-bg area-bg_type-1 area-bg_dark parallax">
		<div class="area-bg__inner">
			<div class="container">
				<div class="row">
					<div class="col-sm-11">
						<div data-pagination="true" data-navigation="false" data-single-item="true" data-auto-play="7000" data-transition-style="fade" data-main-text-animation="true" data-after-init-delay="3000" data-after-move-delay="1000" data-stop-on-hover="true" class="owl-carousel owl-theme owl-theme_mod-a enable-owl-carousel">
							<blockquote class="b-blockquote b-blockquote-3 b-blockquote-3_w_bg">
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea consequat.</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">Adam Milney</span><span class="b-blockquote__category">California, USA</span></cite>
								</footer>
							</blockquote>
							<!-- end .b-blockquote-->

							<blockquote class="b-blockquote b-blockquote-3 b-blockquote-3_w_bg">
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea consequat.</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">Adam Milney</span><span class="b-blockquote__category">California, USA</span></cite>
								</footer>
							</blockquote>
							<!-- end .b-blockquote-->

							<blockquote class="b-blockquote b-blockquote-3 b-blockquote-3_w_bg">
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea consequat.</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">Adam Milney</span><span class="b-blockquote__category">California, USA</span></cite>
								</footer>
							</blockquote>
							<!-- end .b-blockquote-->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section-brands">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div data-min480="1" data-min768="3" data-min992="5" data-min1200="5" data-pagination="false" data-navigation="false" data-auto-play="4000" data-stop-on-hover="true" class="b-brands owl-carousel owl-theme enable-owl-carousel">
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-2.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-3.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-4.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-5.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-3.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-4.png" alt="foto" class="img-responsive center-block"/></div>
					</div>
					<!-- end b-brands-->






				</div>
			</div>
		</div>
	</div>
	<div class="block-table block-table-md">
		<div class="block-table__cell col-md-6"><img src="${basePath}static/assets/media/content/960x750/1.jpg" alt="foto"></div>
		<div class="block-table__cell col-md-6">
			<section data-stellar-background-ratio="0.4" class="section-form-contact section-form-contact_color_white section-texture bg-primary stellar">
				<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1_wh.png" alt="decor"></div>
				<h2 class="ui-title-block"><span>Dvents</span> Contact Form</h2>
				<div class="ui-subtitle-block">Send us a message for your personalized event booking.</div>
				<div id="success"></div>
				<form id="contactForm" action="#" method="post" class="b-form-contacts ui-form">
					<div class="row">
						<div class="col-md-6">
							<input id="user-name" type="text" name="user-name" placeholder="Full Name" required="required" class="form-control"/>
							<input id="user-phone" type="tel" name="user-phone" placeholder="Phone" class="form-control"/>
						</div>
						<div class="col-md-6">
							<input id="user-email" type="email" name="user-email" placeholder="Email" class="form-control"/>
							<input id="user-subject" type="text" name="user-subject" placeholder="Event type" class="form-control last-block_mrg-btn_0"/>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<textarea id="user-message" rows="3" placeholder="Message ..." required="required" class="form-control"></textarea>
							<button class="btn btn-default">Send Message</button>
						</div>
					</div>
				</form>
				<!-- end .b-form-contact-->

			</section>
		</div>
	</div>
	<section class="b-taglines area-bg area-bg_dark parallax">
		<div class="area-bg__inner">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="b-taglines__inner">
							<h2 class="b-taglines__title">With a full range of Event Planning Services, our Clients have Successful & Prosperous Events!</h2>
							<div class="b-taglines__text">We make your events smart & impactful by personalised event management services.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end b-taglines-->


	<section class="section-default">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor"></div>
					<h2 class="ui-title-block"><span class="text-primary">Dvents</span> Latest News</h2>
					<div class="ui-subtitle-block">We make your events smart & impactful by personalised event management services.</div>
					<div data-min480="1" data-min768="2" data-min992="3" data-min1200="3" data-pagination="false" data-navigation="false" data-auto-play="4000" data-stop-on-hover="true" class="owl-carousel owl-theme enable-owl-carousel">
						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/1.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/1.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Sorem ipsum dola sit amet elit sed eusmod tempor incidunt</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 25th August 2016</a></span></div>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/2.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/2.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Minim veniam quis nostrud exercal itation ulyamco laboris</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 13th September 2016</a></span></div>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/3.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/3.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Aliquip ex ea consequat duis aute irure dolor reprehenderit</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 12th February 2017</a></span></div>
								</div>
							</div>
						</section>
						<!-- end post-->

					</div>
					<!-- end slider-->
				</div>
			</div>
		</div>
	</section>
	<footer class="footer">
		<div class="footer__main">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="text-center"><a href="home.html" class="footer__logo"><img src="${basePath}static/assets/media/general/logo.png" alt="Logo" class="img-responsive"/></a></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<form class="footer-form">
							<div class="row">
								<div class="col-sm-5">
									<h3 class="footer-form__title">Get the FREE Newsletter</h3>
									<div class="footer-form__info">Sign up to get the updates about new events</div>
								</div>
								<div class="col-sm-7">
									<div class="form-group">
										<input type="email" placeholder="Your email address ..." class="footer-form__input"/>
										<button class="footer-form__btn form-control-feedback"><i class="icon icon-envelope-open text-primary_h"></i></button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> About Dvents</h3>
							<div class="footer-section__subtitle">The Events Specialists!</div>
							<div class="footer__info">
								<p>Aorem ipsum dolor sit amet elit sed lum tempor incididunt ut labore el dolore alg minim veniam quis nostrud lorem psum dolor sit amet sed incididunt.</p>
							</div><a href="${basePath}about.do" class="btn btn-default btn-xs"><i class="icon"></i> Read More</a>
						</div>
					</div>
					<div class="col-md-3">
						<section class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> Keep In Touch</h3>
							<div class="footer__contact"><i class="icon icon-map"></i> 38-2 Hilton Street, California, USA</div>
							<div class="footer__contact"><i class="icon icon-call-in"></i> (+01) 123 456 7890</div>
							<div class="footer__contact"><i class="icon icon-envelope-open"></i> info@dvents.org</div>
							<div class="footer__contact"><i class="icon icon-clock"></i> Mon - Fri 9.00 am - 6.00 pm</div>
						</section>
					</div>
					<div class="col-md-3">
						<section class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> Events Gallery</h3>
							<ul class="footer-gallery list-unstyled js-zoom-gallery clearfix">
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-1.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-1.jpg" alt="foto" class="img-responsive"/></a></li>
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-2.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-2.jpg" alt="foto" class="img-responsive"/></a></li>
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-3.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-3.jpg" alt="foto" class="img-responsive"/></a></li>
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-4.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-4.jpg" alt="foto" class="img-responsive"/></a></li>
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-5.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-5.jpg" alt="foto" class="img-responsive"/></a></li>
								<li class="footer-gallery__item"><a href="${basePath}static/assets/media/components/footer/gallery-6.jpg" class="footer-gallery__link js-zoom-gallery__item"><img src="${basePath}static/assets/media/components/footer/gallery-6.jpg" alt="foto" class="img-responsive"/></a></li>
							</ul>
						</section>
					</div>
					<div class="col-md-3">
						<section class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> Quick Links</h3>
							<ul class="footer-list list list-mark-4 list-unstyled">
								<li class="footer-list__item"><a href="services.html" class="footer-list__link">Our Services</a></li>
								<li class="footer-list__item"><a href="home.html" class="footer-list__link">Our Team</a></li>
								<li class="footer-list__item"><a href="${basePath}about.do" class="footer-list__link">About Dvents</a></li>
								<li class="footer-list__item"><a href="home.html" class="footer-list__link">Clients List</a></li>
								<li class="footer-list__item"><a href="${basePath}blog_main.do" class="footer-list__link">News Blog</a></li>
								<li class="footer-list__item"><a href="${basePath}static/assets/downloads/doc-2.pdf" class="footer-list__link">Brochure</a></li>
								<li class="footer-list__item"><a href="${basePath}contact.do" class="footer-list__link">Get In Touch</a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
		<div class="footer__bottom">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="copyright pull-left">© 2016<strong> Dvents</strong> - The Events Specialists All Rights Reserved.<a href="terms-of-use.html" class="copyright__link"> Terms of Use</a><a href="privacy-policy.html" class="copyright__link">Privacy Policy</a></div>
						<ul class="social-net list-inline pull-right">
							<li class="social-net__item"><a href="youtube.com" class="social-net__link text-primary_h"><i class="icon fa fa-youtube"></i></a></li>
							<li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
							<li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
							<li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
							<li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
						</ul>
						<!-- end social-list-->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- .footer-->

</div>
<!-- end layout-theme-->


<!-- ++++++++++++-->
<!-- MAIN SCRIPTS-->
<!-- ++++++++++++-->
<script src="${basePath}static/assets/libs/jquery-1.12.4.min.js"></script>
<script src="${basePath}static/assets/libs/jquery-migrate-1.2.1.js"></script>
<!-- Bootstrap-->
<script src="${basePath}static/assets/libs/bootstrap/bootstrap.min.js"></script>
<!-- User customization-->
<script src="${basePath}static/assets/js/custom.js"></script>
<!---->
<!-- Color scheme-->
<script src="${basePath}static/assets/plugins/switcher/js/dmss.js"></script>
<!-- Select customization & Color scheme-->
<script src="${basePath}static/assets/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Slider 1-->
<script src="${basePath}static/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
<!-- Slider 2-->
<script src="${basePath}static/assets/plugins/bxslider/vendor/jquery.easing.1.3.js"></script>
<script src="${basePath}static/assets/plugins/bxslider/vendor/jquery.fitvids.js"></script>
<script src="${basePath}static/assets/plugins/bxslider/jquery.bxslider.min.js"></script>
<!-- Pop-up window-->
<script src="${basePath}static/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Headers scripts-->
<script src="${basePath}static/assets/plugins/headers/slidebar.js"></script>
<script src="${basePath}static/assets/plugins/headers/header.js"></script>
<!-- Mail scripts-->
<script src="${basePath}static/assets/plugins/jqBootstrapValidation.js"></script>
<script src="${basePath}static/assets/plugins/contact_me.js"></script>
<!-- Parallax-->
<script src="${basePath}static/assets/plugins/stellar/jquery.stellar.min.js"></script>
<!-- Filter and sorting images-->
<script src="${basePath}static/assets/plugins/isotope/isotope.pkgd.min.js"></script>
<script src="${basePath}static/assets/plugins/isotope/imagesLoaded.js"></script>
<!-- Progress numbers-->
<script src="${basePath}static/assets/plugins/rendro-easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="${basePath}static/assets/plugins/rendro-easy-pie-chart/waypoints.min.js"></script>
<!-- Animations-->
<script src="${basePath}static/assets/plugins/scrollreveal/scrollreveal.min.js"></script>
<!-- Main slider-->
<script src="${basePath}static/assets/plugins/slider-pro/jquery.sliderPro.min.js"></script>
=======
=======
>>>>>>> 613d511d00266cca61f7a346f931564f199de68d
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
<<<<<<< HEAD
>>>>>>> 613d511d00266cca61f7a346f931564f199de68d
=======
>>>>>>> 613d511d00266cca61f7a346f931564f199de68d
</body>
</html>
