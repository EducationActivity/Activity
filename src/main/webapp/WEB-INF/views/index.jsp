<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
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
			<li><a href="${basePath}service.do">服务</a></li>
			<li><a href="${basePath}about.do">关于我们</a></li>
			<li><a href="${basePath}blog_main.do">论坛</a></li>
			<li><a href="${basePath}contact.do">联系我们</a></li>
			<li><a href="${basePath}casePage.do">活动剪影</a></li>
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
					<li><a href="${basePath}service.do">服务</a></li>
					<li><a href="${basePath}about.do">关于我们</a></li>
					<li><a href="${basePath}blog_main.do">咨讯</a></li>
					<li><a href="${basePath}my_contact.do">联系我们</a></li>
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
							<li><a href="${basePath}service.do">服务</a></li>
							<li><a href="${basePath}account.do">个人中心</a></li>
							<li><a href="${basePath}about.do">关于我们</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">论坛<b class="caret"></b></a>
								<ul role="menu" class="dropdown-menu">
									<li><a href="${basePath}blog_main.do" >查看最新</a></li>
									<li><a href="${basePath}blog_post.do" >发表我的看法</a></li>
								</ul>
							</li>
							<li><a href="${basePath}casePage.do">案例展示</a></li>
							<li><a href="${basePath}contact.do">联系我们</a></li>
							<li><a href="${basePath}expect.do">敬请期待</a></li>
							<%--<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pages<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="404.html" >Page 404</a></li>
                                    <li><a href="headers.html" >Headers</a></li>
                                    <li><a href="typography.html" >Typography</a></li>
                                    <li><a href="privacy-policy.html" >隐私政策</a></li>
                                    <li><a href="terms-of-use.html" >使用条款</a></li>
                                </ul>
                            </li>--%>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<%--end header--%>




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
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400" class="main-slider__info sp-layer">宝马雕车香满路，凤萧声动，玉壶光转，一夜鱼龙舞 ！</div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="600" data-hide-delay="400" class="sp-layer">
								<div class="main-slider__decor bg-primary"></div>
							</div>
							<h2 data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__title sp-layer">宜川一村幼儿园元宵节游园会顺利开幕啦<br></h2>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" class="sp-layer"><a href="${basePath}service.do" class="main-slider__btn btn btn-primary">查看详情</a><a href="${basePath}service.do" class="main-slider__btn btn btn-default">更多活动</a></div>
						</div>
					</div>
				</div>
			</div>
			<!-- Slide 2-->
			<div class="sp-slide"><img src="${basePath}static/assets/media/components/b-main-slider/bg-2.jpg" alt="slider" class="sp-image"/>
				<div class="container">
					<div class="row">
						<div class="col-sm-10 col-sm-offset-1">
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400" class="main-slider__info sp-layer">在这雨季，让孩子和水的世界来一个亲密接触吧 </div>
							<h2 data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__title sp-layer">连绵的雨季里，充满了孩子的笑声</h2>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="600" data-hide-delay="400" class="sp-layer">
								<div class="main-slider__decor bg-primary"></div>
							</div>
							<div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="1200" data-show-delay="2000" data-hide-delay="400" class="sp-layer"><a href="${basePath}service.do" class="main-slider__btn btn btn-default">查看活动</a></div>
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
						<h2 class="ui-title-block ui-title-block_lg">幼儿活动策划大师<span class="text-primary"> 稷星</span></h2>
						<div class="ui-subtitle-block">从各项游戏，到成套的活动，再到拓展出的教育服务，我们为您提供个性化的特色服务</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-puzzle"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">优质的服务</h3>
							<div class="b-advantages__info">团队的专业程度和丰富的实战经验是我们提供优质服务的基础，</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>查看详情</a>
						</div>
					</section>
					<!-- end .b-advantages-->

				</div>
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-magic-wand"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">优秀的团队</h3>
							<div class="b-advantages__info">团队成员皆为教育机构管理层人员，
								从事0-7岁幼儿教育教学达10年以上。</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>查看详情</a>
						</div>
					</section>
					<!-- end .b-advantages-->

				</div>
				<div class="col-sm-4">
					<section class="b-advantages b-advantages-1"><i class="b-advantages__icon text-primary icon-pie-chart"></i>
						<div class="b-advantages__inner">
							<h3 class="b-advantages__title ui-title-inner">很棒的想法</h3>
							<div class="b-advantages__info">团队成员各个都富有创意的想法，众多的游戏可以为您留下一段愉快的时光</div><a href="#" class="btn btn-default btn-xs"><i class="icon"></i>查看详情</a>
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
						<h2 class="ui-title-block"><span class="text-primary">稷星</span> 服务</h2>
						<div class="ui-subtitle-block">让我们的专业团队，来帮您打造一场完美的活动</div>
						<p>我们可以向您提供符合您需求的个性化的活动策划方案，物料准备以及线上线下课程等服务.
						</p>
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
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">游戏</a></h2>
								</div>
								<div class="entry-content">
									<p>近千款游戏可供选择，覆盖生活，学习，益智等方面</p>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-1 b-post_mr-rg_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/4.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/4.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">活动</a></h2>
								</div>
								<div class="entry-content">
									<p>多种多样的主题活动，游园会，运动会，水世界最为受欢迎.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

					</div>
					<div class="col-md-4"><img src="${basePath}static/assets/media/content/340x665/1.jpg" alt="foto" class="img-w-radius img_mr-10 img-responsive"></div>
					<div class="col-md-4">
						<section class="b-post-sm b-post-sm-1 b-post_mr-lf_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/2.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/2.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">课程</a></h2>
								</div>
								<div class="entry-content">
									<p>我们还开设育儿，兴趣，文化课等培训课程，形式丰富多样，趣味性极强.</p>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-1 b-post_mr-lf_38 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/3.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/3.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">物料</a></h2>
								</div>
								<div class="entry-content">
									<p>我们还同物料供应商有商务合作关系，可降低活动举办成本.</p>
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
					<div class="b-progress-list__label"></div><span data-percent="320" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">游戏种类</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="156" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">课程类别</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="594" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">物料种类</span>
				</li>
				<li class="b-progress-list__item">
					<div class="b-progress-list__label"></div><span data-percent="167" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">合作伙伴</span>
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
					<h2 class="ui-title-block"><span class="text-primary">稷星</span> 剪影</h2>
					<div class="ui-subtitle-block">让我们的专业团队，来帮您打造一场完美的活动.</div>
				</div>
			</div>
		</div>
		<div class="b-isotope">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<ul class="b-isotope-filter list-inline">
							<li><a href="" data-filter="*" class="current">所有活动</a></li>
							<li><a href="" data-filter=".corporate">游园会</a></li>
							<li><a href="" data-filter=".birthday">水世界</a></li>
							<li><a href="" data-filter=".product">运动会</a></li>
							<li><a href="" data-filter=".social">DIY</a></li>
							<li><a href="" data-filter=".proposal">表演</a></li>
						</ul>
					</div>
				</div>
			</div>
			<ul class="b-isotope-grid grid list-unstyled js-zoom-gallery">
				<li class="grid-sizer"></li>
				<li class="b-isotope-grid__item grid-item corporate product"><a
						href="${basePath}static/assets/media/content/gallery/480x290/1.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/1.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate proposal"><a
						href="${basePath}static/assets/media/content/gallery/480x290/2.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/2.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item birthday product social proposal"><a
						href="${basePath}static/assets/media/content/gallery/480x290/3.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/3.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item wedding"><a
						href="${basePath}static/assets/media/content/gallery/480x290/4.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/4.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate product social proposal"><a
						href="${basePath}static/assets/media/content/gallery/480x290/5.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/5.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item birthday"><a
						href="${basePath}static/assets/media/content/gallery/480x290/6.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/6.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item wedding social"><a
						href="${basePath}static/assets/media/content/gallery/480x290/7.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/7.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
				<li class="b-isotope-grid__item grid-item corporate birthday"><a
						href="${basePath}static/assets/media/content/gallery/480x290/8.jpg"
						class="b-isotope-grid__inner js-zoom-gallery__item"><img
						src="${basePath}static/assets/media/content/gallery/480x290/8.jpg" alt="foto"/><span
						class="b-isotope-grid__wrap-info"><span class="b-isotope-grid__info"><span
						class="b-isotope-grid__title">Kids at Party</span><span class="b-isotope-grid__categorie">Birthday Parties</span></span><i
						class="icon icon-magnifier-add text-primary"></i></span></a></li>
			</ul>
		</div>
		<!-- end .b-isotope-->
		<div class="text-center"><span class="b-isotope__info">查看所有的活动图片</span><a href="${basePath}index.do" class="b-isotope__btn btn btn-primary">查看完整图片</a></div>
	</section>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<section data-stellar-background-ratio="0.4" class="b-info section-texture section-radius stellar section-texture_green section-radius">
					<h2 class="b-info__title">联系我们 ！</h2>
					<div class="b-info__text">
						提出问题、安排会议或请求提案。我们开始吧 </div><a href="${basePath}index.do" class="b-info__btn btn btn-default btn-sm btn-effect">现在就联系我们吧</a>
				</section>
				<!-- end b-info-->
			</div>
			<div class="col-md-6">
				<section data-stellar-background-ratio="0.4" class="b-info section-texture section-radius stellar b-info_right section-texture_blue section-radius">
					<h2 class="b-info__title">你想加入我们的团队吗!</h2>
					<div class="b-info__text">如果你足够努力足够有责任心，并且热爱这份事业，加入 专业化的团队吧，未来有你，我们才能闪闪发光</div><a href="${basePath}index.do" class="b-info__btn btn btn-default btn-sm btn-effect">加入 专业化的团队</a>
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
					<h2 class="ui-title-block"><span class="te xt-primary">稷星</span> 最新的活动</h2>
					<div class="ui-subtitle-block">让我们的专业团队，来帮您打造一场完美的活动.</div>
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
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>浦东新区广兰幼儿园春季亲子运动会</h3>
										<p>小手拉大手，一起来运动！我们准备了很多趣味活动，如凌空小飞侠，趣味篮球框，勇者大冲关，龟兔赛跑等游戏，.</p>
										<p>让我们相约4月18日这一特殊的日子..</p>
										<h4 class="b-events__subtitle">更多细节</h4>
										<div class="b-events__details"><i class="icon icon-map"></i>广兰幼儿园,  浦东新区, 上海, 中国</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> April 28, 2019  ,  8:00 am to 5:00 pm</div>
									</div>
								</div>
							</div>
						</section>
						<!-- end b-events-->

						<section class="b-events">
							<div class="row">
								<div class="col-sm-6">
									<div class="b-events__media"><img src="${basePath}static/assets/media/components/b-events/555x390_2.jpg" alt="foto" class="img-responsive"/></div>
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
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>欢天喜地迎新年——金豆豆幼儿园亲子游园会</h3>
										<p>通过亲子活动，加强家园沟通与合作，密切幼儿、教师、家长三者的关系，增进亲子间的情感交流，促进幼儿身心的全面发展，促进家长教育观念的更新与科学育儿水平的提升。</p>
										<p>让孩子乐意参加各种亲子活动，体验与家长共同活动的乐趣。
											乐于与家长、同伴交往互动，学会协商，合作。
											理解并遵守亲子活动的基本规则。</p>
										<h4 class="b-events__subtitle">更多详情</h4>
										<div class="b-events__details"><i class="icon icon-map"></i> 金豆豆幼儿园, 宝山区, 上海, 中国</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> March 31, 2019  ,  8:00 am to 5:00 pm</div>
									</div>
								</div>
							</div>
						</section>
						<!-- end b-events-->

						<section class="b-events">
							<div class="row">
								<div class="col-sm-6">
									<div class="b-events__media"><img src="${basePath}static/assets/media/components/b-events/555x390_3.jpg" alt="foto" class="img-responsive"/></div>
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
										<h3 class="b-events__title"><span class="ui-decor-2 bg-primary"></span>金秋十月举国欢庆</h3>
										<p>国庆节是由一个国家制定的用来纪念国家本身的法定假日。古时候，中国古代把皇帝即位、诞辰称为“国庆”。如今，中国国庆节特指中华人民共和国正式成立的纪念日10月1日。</p>
										<p>经典的古老神话，打开了幼儿想象的翅膀，给了幼儿丰富的想象空间等等。我们应当将这些幼儿喜爱的文化资源和形式，贯穿在幼儿的生活之中，在引领幼儿感受民俗文化的魅力的同时，发挥其教育的功能，激发幼儿的各种兴趣，促进幼儿认知的发展..</p>
										<h4 class="b-events__subtitle">More Details</h4>
										<div class="b-events__details"><i class="icon icon-map"></i> 新村路小学, 宝山区, 上海, 中国</div>
										<div class="b-events__details"><i class="icon icon-calendar"></i> October 1, 2017  ,  8:00 am to 5:00 pm</div>
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
								<p>用眼去看孩子的世界，用心去听孩子的世界。走进孩子的世界和他们共同生活，共同游戏，做他们的好朋友。</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">李明</span><span class="b-blockquote__category">沈阳，中国</span></cite>
								</footer>
							</blockquote>
							<!-- end .b-blockquote-->

							<blockquote class="b-blockquote b-blockquote-3 b-blockquote-3_w_bg">
								<p>儿童的思维是在于环境的相互作用中发展起来的</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">皮亚杰</span><span class="b-blockquote__category">California, USA</span></cite>
								</footer>
							</blockquote>
							<!-- end .b-blockquote-->

							<blockquote class="b-blockquote b-blockquote-3 b-blockquote-3_w_bg">
								<p>儿童应该受到良好的教育，这是一般做父母的人的责任，也是他们关心的事，而且国家的幸福与繁荣也靠儿童具有良好的教育。</p>
								<footer class="b-blockquote__footer">
									<div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
									<cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">洛克.</span><span class="b-blockquote__category">California, USA</span></cite>
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
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
						<div class="b-brands__item"><img src="${basePath}static/assets/media/components/b-brands/logo-1.png" alt="foto" class="img-responsive center-block"/></div>
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
				<h2 class="ui-title-block"><span>稷星</span> 联系表单</h2>
				<div class="ui-subtitle-block">如果你需要咨询我们的服务，请联系我们</div>
				<div id="success"></div>
				<form id="contactForm" action="#" method="post" class="b-form-contacts ui-form">
					<div class="row">
						<div class="col-md-6">
							<input id="user-name" type="text" name="user-name" placeholder="名字" required="required" class="form-control"/>
							<input id="user-phone" type="tel" name="user-phone" placeholder="联系方式" class="form-control"/>
						</div>
						<div class="col-md-6">
							<input id="user-email" type="email" name="user-email" placeholder="Email" class="form-control"/>
							<input id="user-subject" type="text" name="user-subject" placeholder="活动类型" class="form-control last-block_mrg-btn_0"/>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<textarea id="user-message" rows="3" placeholder="内容 ..." required="required" class="form-control"></textarea>
							<button class="btn btn-default">发送邮件</button>
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
							<h2 class="b-taglines__title">专业的活动管理服务，让你的活动更难忘！</h2>
							<div class="b-taglines__text">让我们专业的团队来让您的活动更加精彩吧.</div>
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
					<h2 class="ui-title-block"><span class="text-primary">稷星</span> 最新资讯</h2>
					<div class="ui-subtitle-block">让我们专业的团队来让您的活动更加精彩吧.</div>
					<div data-min480="1" data-min768="2" data-min992="3" data-min1200="3" data-pagination="false" data-navigation="false" data-auto-play="4000" data-stop-on-hover="true" class="owl-carousel owl-theme enable-owl-carousel">
						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/1.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/1.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">上大路幼儿园民俗游园会即火热举行！！</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 25th August 2019</a></span></div>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/2.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/2.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">新村路幼儿园新年爱心义卖活动正在筹划...</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 13th September 2019</a></span></div>
								</div>
							</div>
						</section>
						<!-- end post-->

						<section class="b-post-sm b-post-sm-2 clearfix">
							<div class="entry-media"><a href="${basePath}static/assets/media/content/posts/380x290/3.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/380x290/3.jpg" alt="Foto" class="img-responsive"/></a></div>
							<div class="entry-main">
								<div class="entry-header">
									<div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
									<h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">金豆豆幼儿园亲子运动会敬请期待！！</a></h2>
								</div>
								<div class="entry-footer">
									<div class="entry-meta"><span class="entry-meta__item"><i class="icon icon-calendar"></i>Posted<a href="${basePath}blog_post.do" class="entry-meta__link"> 12th April 2019</a></span></div>
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
						<div class="text-center"><a href="${basePath}index.do" class="footer__logo"><img src="${basePath}static/assets/media/general/logo.png" alt="Logo" class="img-responsive"/></a></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<form class="footer-form">
							<div class="row">
								<div class="col-sm-5">
									<h3 class="footer-form__title">获取免费邮件服务</h3>
									<div class="footer-form__info">注册登录后获得最新活动资讯</div>
								</div>
								<div class="col-sm-7">
									<div class="form-group">
										<input type="email" placeholder="请输入你的邮箱地址." class="footer-form__input"/>
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
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> 关于 亲为亲子</h3>
							<div class="footer-section__subtitle">高质量的活动策划与教育培训课程</div>
							<div class="footer__info">
								<p>我们是国内专业的亲子益智健康成长平台，我们凭借互联网+思维，及游戏教育形式为中国家庭提供科学的幼儿个体与集体的亲子活动，提升孩子身体素质与头脑开发</p>
							</div><a href="${basePath}about.do" class="btn btn-default btn-xs"><i class="icon"></i> 查看详情</a>
						</div>
					</div>
					<div class="col-md-3">
						<section class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> 联系我们</h3>
							<div class="footer__contact"><i class="icon icon-map"></i> 上海市嘉定区南翔镇惠平路1228号5幢203室</div>
							<div class="footer__contact"><i class="icon icon-call-in"></i> 13127781606</div>
							<div class="footer__contact"><i class="icon icon-envelope-open"></i> 1170538717@qq.com</div>
							<div class="footer__contact"><i class="icon icon-clock"></i> 周一到周五 9.00 am - 6.00 pm</div>
						</section>
					</div>
					<div class="col-md-3">
						<section class="footer-section">
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> 活动剪影</h3>
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
							<h3 class="footer-section__title ui-title-inner"><i class="ui-decor-2 bg-primary"></i> 快速访问</h3>
							<ul class="footer-list list list-mark-4 list-unstyled">
								<li class="footer-list__item"><a href="${basePath}service.do" class="footer-list__link">我们的服务</a></li>
								<li class="footer-list__item"><a href="${basePath}casePage.do" class="footer-list__link">案例展示</a></li>
								<li class="footer-list__item"><a href="${basePath}about.do" class="footer-list__link">关于亲为亲子</a></li>
								<li class="footer-list__item"><a href="${basePath}index.do" class="footer-list__link">合作伙伴</a></li>
								<li class="footer-list__item"><a href="${basePath}blog_main.do" class="footer-list__link">资讯</a></li>
								<li class="footer-list__item"><a href="${basePath}contact.do" class="footer-list__link">联系我们</a></li>
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
						<div class="copyright pull-left">Copyright © 2016-2019-<strong>稷星教育科技</strong> - 粤ICP备12079258号<a href="terms-of-use.html" class="copyright__link"> 使用条款</a><a href="privacy-policy.html" class="copyright__link">隐私政策</a></div>

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
</body>
</html>
