<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/16
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" href="${basePath}static/assets/css1/font-awesome.min.css">
    <link rel="stylesheet" href="${basePath}static/assets/css1/simple-line-icons.css">

    <!-- Import Bootstrap CSS File -->

    <!-- <link rel="stylesheet" href="${basePath}static/assets/css1/bootstrap.min.css"> -->

    <!-- Import External CSS Files -->

    <link rel="stylesheet" href="${basePath}static/assets/css1/owl.carousel.min.css">
    <link rel="stylesheet" href="${basePath}static/assets/css1/magnific-popup.css">
    <link rel="stylesheet" href="${basePath}static/assets/css1/selectric.css">

    <!-- Import Template's CSS Files -->

    <link rel="stylesheet" href="${basePath}static/assets/css1/style.css">




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
            <li><a href="${basePath}blog_main.do">咨讯</a></li>
            <li><a href="${basePath}blog_main.do">论坛</a></li>
            <li><a href="${basePath}contact.do">联系我们</a></li>
            <li><a href="${basePath}casePage.do">活动剪影</a></li>
            <li><a href="${basePath}my_account.do">个人中心</a></li>

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
                            <li><a href="${basePath}my_account.do">个人中心</a></li>
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
    <div class="b-title-page area-bg area-bg_dark parallax">
        <div class="area-bg__inner">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                        <h1 class="b-title-page__title">Who We Are</h1>
                        <ol class="breadcrumb">
                            <li><a href="${basePath}index.do">Home</a></li>
                            <li class="active">About</li>
                        </ol>
                        <!-- end breadcrumb-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end b-title-page-->

    <section class="section-default">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
                    <div class="text-center">
                        <h2 class="ui-title-block ui-title-block_weight_normal">We<span class="text-primary"> Create Events</span> That Lasts</h2>
                        <div class="ui-subtitle-block">From Wedding Functions to Birthday Parties or Corporate Events to Musical Functions, We offer full range of Events Management Services that scale to your needs & budget.</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <section class="b-post-sm b-post-sm-1 b-post-sm-1_align_center clearfix">
                        <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/5.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/5.jpg" alt="Foto" class="img-responsive"/></a></div>
                        <div class="entry-main">
                            <div class="entry-header">
                                <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Our Vision</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>Aorem ipsum dolor sit amet consectetur elit sed tempor incididunt ut labore etua dolore mag aliqua minim veniam quis nostrud exercitation</p>
                            </div>
                        </div>
                    </section>
                    <!-- end post-->

                </div>
                <div class="col-sm-4">
                    <section class="b-post-sm b-post-sm-1 b-post-sm-1_align_center clearfix">
                        <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/6.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/6.jpg" alt="Foto" class="img-responsive"/></a></div>
                        <div class="entry-main">
                            <div class="entry-header">
                                <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Our Approach</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>Corem ipsum dolor sit amet consectetur elit sed tempor incididunt ut labore etua dolore mag aliqua minim veniam quis nostrud exercitation</p>
                            </div>
                        </div>
                    </section>
                    <!-- end post-->

                </div>
                <div class="col-sm-4">
                    <section class="b-post-sm b-post-sm-1 b-post-sm-1_align_center clearfix">
                        <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/322x180/7.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/322x180/7.jpg" alt="Foto" class="img-responsive"/></a></div>
                        <div class="entry-main">
                            <div class="entry-header">
                                <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="services.html">Our Goals</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>Eorem ipsum dolor sit amet consectetur elit sed tempor incididunt ut labore etua dolore mag aliqua minim veniam quis nostrud exercitation</p>
                            </div>
                        </div>
                    </section>
                    <!-- end post-->

                </div>
            </div>
        </div>
    </section>
    <div class="block-table block-table-lg">
        <div class="block-table__cell col-lg-6">
            <section class="section-type-2 bg-grey">
                <div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor"></div>
                <h2 class="ui-title-block">Why Choose<span class="text-primary"> Dvents</span></h2>
                <div class="ui-subtitle-block">Corem ipsum dolor sit amet elit sed do eiusmod tempor incididunt labore.</div>
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-people"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">The Events Specialists</h3>
                        <div class="b-advantages-2__info">Sit amet consectetur elit sed lusm tempor incidant temdore labore dolore lorem ipsum consectetur adipisicing elit sed do eiusmod tempor incididunt.</div>
                    </div>
                </section>
                <!-- end .b-advantages-->
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-firework"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">Dedicated Venues &amp; Arrangements</h3>
                        <div class="b-advantages-2__info">Sit amet consectetur elit sed lusm tempor incidant temdore labore dolore lorem ipsum consectetur adipisicing elit sed do eiusmod tempor incididunt.</div>
                    </div>
                </section>
                <!-- end .b-advantages-->
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-technology"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">All Types of Events</h3>
                        <div class="b-advantages-2__info">Sit amet consectetur elit sed lusm tempor incidant temdore labore dolore lorem ipsum consectetur adipisicing elit sed do eiusmod tempor incididunt.</div>
                    </div>
                </section>
                <!-- end .b-advantages-->
            </section>
        </div>
        <div class="block-table__cell col-lg-6"><img src="${basePath}static/assets/media/content/960x783/1.jpg" alt="foto"></div>
    </div>
    <!-- b-progress width parallax-->
    <div class="section-progress section-progress_mod-a area-bg bg-primary_a parallax">
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
    <section class="section-team">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
                    <div class="text-center">
                        <h2 class="ui-title-block"><span class="text-primary"> Dvents</span> Team Members</h2>
                        <div class="ui-subtitle-block">We make your events smart & impactful by personalised event management services</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/1.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">Charles Hasman</h3>
                            <div class="b-team__category">Founder &amp; Director</div>
                            <div class="b-team__description">Eorem ipsum dolor sit ame adipisicn elit sed do eiusmod tempor incidida labore dolor magna</div>
                            <ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/2.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">Kethy Hilton</h3>
                            <div class="b-team__category">Events Manager</div>
                            <div class="b-team__description">Corem ipsum dolor sit ame adipisicn elit sed do eiusmod tempor incidida labore dolor aliqua</div>
                            <ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/3.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">Anna Sydney</h3>
                            <div class="b-team__category">Events Manager</div>
                            <div class="b-team__description">Eorem ipsum dolor sit ame adipisicn elit sed do eiusmod tempor incidida labore dolor magna</div>
                            <ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/4.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">Ava Taylor</h3>
                            <div class="b-team__category">Supervisor</div>
                            <div class="b-team__description">Corem ipsum dolor sit ame adipisicn elit sed do eiusmod tempor incidida labore dolor aliqua</div>
                            <ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                </div>
            </div>
        </div>
    </section>
    <section data-stellar-background-ratio="0.4" class="section-type-3 bg-grey section-texture-2 stellar">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor"></div>
                    <h2 class="ui-title-block"><span class="text-primary"> Dvents</span> Skills</h2>
                    <p>Consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquled enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip volputate consequat aute irure dolor in reprehenderit in velit..</p>
                    <ul class="list list-mark-5 list_icon_color-primary list_bold">
                        <li>Excepteur sint occaecat cupidata non proident sunt</li>
                        <li>Qui officia deserunt anim labor tempore laboris volputate</li>
                        <li>Tempor incididunt uet labore dolore magna aliqua</li>
                        <li>Enim lanim veniam quis nostrud exercitation ullamco</li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <div class="progress-block-group">
                        <div class="progress-block">
                            <div class="progress__title">Birthday Parties</div>
                            <div class="progress progress-w-number">
                                <div style="width: 80%" class="progress-bar bg-primary"><span class="progress-bar__number">80%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">Wedding Events</div>
                            <div class="progress progress-w-number">
                                <div style="width: 90%" class="progress-bar bg-primary"><span class="progress-bar__number">90%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">Corporate Events</div>
                            <div class="progress progress-w-number">
                                <div style="width: 55%" class="progress-bar bg-primary"><span class="progress-bar__number">55%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">Proposal Arrange</div>
                            <div class="progress progress-w-number">
                                <div style="width: 65%" class="progress-bar bg-primary"><span class="progress-bar__number">65%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">Social Seminars</div>
                            <div class="progress progress-w-number">
                                <div style="width: 85%" class="progress-bar bg-primary"><span class="progress-bar__number">85%</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="b-advertisement area-bg area-bg_dark area-bg_op_70 parallax">
        <div class="area-bg__inner">
            <div class="b-advertisement__label bg-primary">Celebrate with<strong> Dvents</strong></div>
            <h2 class="b-advertisement__title ui-title-block">Plan your Birthday Celebration with us!</h2>
            <div class="b-advertisement__info">We will distribute FREE GIFTS to every single kid - That’s Our Promise!</div>
        </div>
    </section>
    <!-- end b-advertisement-->
    <div class="section-default">
        <div class="container">
            <div class="row">
                <div class="col-sm-11">
                    <div data-pagination="true" data-navigation="false" data-single-item="true" data-auto-play="7000" data-transition-style="fade" data-main-text-animation="true" data-after-init-delay="3000" data-after-move-delay="1000" data-stop-on-hover="true" class="owl-carousel owl-theme owl-theme_mod-a enable-owl-carousel">
                        <blockquote class="b-blockquote b-blockquote-3">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea consequat.</p>
                            <footer class="b-blockquote__footer">
                                <div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
                                <cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">Adam Milney</span><span class="b-blockquote__category">California, USA</span></cite>
                            </footer>
                        </blockquote>
                        <!-- end .b-blockquote-->

                        <blockquote class="b-blockquote b-blockquote-3">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea consequat.</p>
                            <footer class="b-blockquote__footer">
                                <div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
                                <cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">Adam Milney</span><span class="b-blockquote__category">California, USA</span></cite>
                            </footer>
                        </blockquote>
                        <!-- end .b-blockquote-->

                        <blockquote class="b-blockquote b-blockquote-3">
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
                            </div><a href="about.html" class="btn btn-default btn-xs"><i class="icon"></i> Read More</a>
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
                                <li class="footer-list__item"><a href="activity.html" class="footer-list__link">Our Services</a></li>
                                <li class="footer-list__item"><a href="${basePath}index.do" class="footer-list__link">Our Team</a></li>
                                <li class="footer-list__item"><a href="about.html" class="footer-list__link">About Dvents</a></li>
                                <li class="footer-list__item"><a href="${basePath}index.do" class="footer-list__link">Clients List</a></li>
                                <li class="footer-list__item"><a href="blog-main.html" class="footer-list__link">News Blog</a></li>
                                <li class="footer-list__item"><a href="${basePath}static/assets/downloads/doc-2.pdf" class="footer-list__link">Brochure</a></li>
                                <li class="footer-list__item"><a href="contact.html" class="footer-list__link">Get In Touch</a></li>
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
                        <div class="copyright pull-left">© 2019<strong> Dvents</strong> - The Events Specialists All Rights Reserved.<a href="terms-of-use.html" class="copyright__link"> Terms of Use</a><a href="privacy-policy.html" class="copyright__link">Privacy Policy</a></div>
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

</body>
</html>