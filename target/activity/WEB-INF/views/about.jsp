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
    <div class="b-title-page area-bg area-bg_dark parallax">
        <div class="area-bg__inner">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                        <h1 class="b-title-page__title">关于稷星</h1>
                        <ol class="breadcrumb">
                            <li><a href="${basePath}index.do">主页</a></li>
                            <li class="active">关于我们</li>
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
                        <h2 class="ui-title-block ui-title-block_weight_normal">我们致力打造<span class="text-primary"> 亲子益智健康成长</span> 平台</h2>
                        <div class="ui-subtitle-block">我们打造知名儿童校园活动品牌，
                            为幼儿学校提供丰富家长与孩子互动沟通的平台，
                            为社会提供儿童教育、学习指导和家园共育等服务，
                            让孩子更快乐、更健康、更优秀的成长，
                            我们一起努力，让孩子的明天更美好！</div>
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
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">我们的特色</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>
                                    凭借游戏教育的形式，
                                    为幼儿辅助教学活动增添新的动力。我们专业开发地亲子互动游戏，
                                    可让孩子通过游戏体验达到玩中学，学中玩的目的。</p>
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
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">我们的团队</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>团队成员包括从事0-7岁幼儿教育教学达10年以上的教育机构管理层人员，
                                    专业开发亲子互动游戏的亲子互动游戏专家以及华师大幼儿教育专家，
                                    </p>
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
                                <h2 class="entry-title entry-title_spacing ui-title-inner"><a href="${basePath}service.do">我们的目标</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>更充分地利用互联网+思维，通过游戏教育形式为中国
                                    家庭提供科学的幼儿个体与集体的亲子活动，
                                    提升孩子身体素质与头脑开发，让孩子更优秀地成长</p>
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
                <h2 class="ui-title-block">为什么选择<span class="text-primary"> 稷星</span></h2>
                <div class="ui-subtitle-block">稷星，值得信赖.</div>
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-people"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">专业化的团队</h3>
                        <div class="b-advantages-2__info">团队成员都是拥有多年策划经验的专家，我们还有专业化的游戏设计师，游戏体验师</div>
                    </div>
                </section>
                <!-- end .b-advantages-->
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-firework"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">物料 &amp; 课程</h3>
                        <div class="b-advantages-2__info">我们还可以提供高性价比的活动物料以及优质的培训课程，一条龙服务.</div>
                    </div>
                </section>
                <!-- end .b-advantages-->
                <section class="b-advantages-2 b-advantages-2_mod-a"><i class="b-advantages-2__icon flaticon-technology"></i>
                    <div class="b-advantages-2__inner">
                        <h3 class="b-advantages-2__title ui-title-inner bg-primary_b">多样化的解决方案</h3>
                        <div class="b-advantages-2__info">我们可以根据您的要求提供多样化的解决方案，让活动更加具有特色.</div>
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
                    <div class="b-progress-list__label"></div><span data-percent="320" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">合作伙伴</span>
                </li>
                <li class="b-progress-list__item">
                    <div class="b-progress-list__label"></div><span data-percent="1560" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">游戏研发</span>
                </li>
                <li class="b-progress-list__item">
                    <div class="b-progress-list__label"></div><span data-percent="593" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">课程研发</span>
                </li>
                <li class="b-progress-list__item">
                    <div class="b-progress-list__label"></div><span data-percent="634" class="b-progress-list__percent js-chart"><span class="js-percent"></span></span><span class="b-progress-list__name">物料类别</span>
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
                        <h2 class="ui-title-block"><span class="text-primary"> 亲为亲子</span> 团队成员</h2>
                        <div class="ui-subtitle-block">我们通过个性化的活动管理服务 & 让您的活动更完美更具有影响力 </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/1.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">窦正娅</h3>
                            <div class="b-team__category">创始人 &amp; 企业法人</div>
                            <div class="b-team__description">公司CEO，自主创业，如今公司在窦女士的带领下蒸蒸日上，业务范围迅速扩张</div>
                            <%--<ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>--%>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/2.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">王小二</h3>
                            <div class="b-team__category">总经理</div>
                            <div class="b-team__description">总经理兼游戏活动设计师，10年以上从业经验，自主研发千余款游戏</div>
                            <%--<ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>--%>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/3.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">李小五</h3>
                            <div class="b-team__category">活动策划经理</div>
                            <div class="b-team__description">专门为客户定制解决方案，设计活动策划</div>
                            <%--<ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>--%>
                            <!-- end social-list-->
                        </div>
                    </section>
                    <!-- end b-team-->
                    <section class="b-team b-team_mod-a">
                        <div class="b-team__media"><img src="${basePath}static/assets/media/components/b-team/4.jpg" alt="Foto" class="img-responsive"/></div>
                        <div class="b-team__inner">
                            <div class="ui-decor-2 bg-primary"></div>
                            <h3 class="b-team__name ui-title-inner">张小六</h3>
                            <div class="b-team__category">课程研发</div>
                            <div class="b-team__description">研发课程，整理相关信息文档，从业经验丰富，获得业界最高奖"金狮奖"</div>
                            <%--<ul class="social-net list-inline">
                                <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                                <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                                <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                                <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                            </ul>--%>
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
                    <h2 class="ui-title-block">客户眼中的<span class="text-primary">稷星</span> </h2>
                    <p>稷星可以帮您做很多事..</p>
                    <ul class="list list-mark-5 list_icon_color-primary list_bold">
                        <li>专业能力极强</li>
                        <li>服务贴心，十分热情</li>
                        <li>价格实惠，性价比高</li>
                        <li>善于创新，研发和推广能力极强</li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <div class="progress-block-group">
                        <div class="progress-block">
                            <div class="progress__title">课程研发</div>
                            <div class="progress progress-w-number">
                                <div style="width: 80%" class="progress-bar bg-primary"><span class="progress-bar__number">80%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">活动设计</div>
                            <div class="progress progress-w-number">
                                <div style="width: 90%" class="progress-bar bg-primary"><span class="progress-bar__number">90%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">游戏研发</div>
                            <div class="progress progress-w-number">
                                <div style="width: 99%" class="progress-bar bg-primary"><span class="progress-bar__number">99%</span></div>
                            </div>
                        </div>
                        <div class="progress-block">
                            <div class="progress__title">物料供应</div>
                            <div class="progress progress-w-number">
                                <div style="width: 97%" class="progress-bar bg-primary"><span class="progress-bar__number">97%</span></div>
                            </div>
                        </div>
                       <%-- <div class="progress-block">
                            <div class="progress__title">Social Seminars</div>
                            <div class="progress progress-w-number">
                                <div style="width: 85%" class="progress-bar bg-primary"><span class="progress-bar__number">85%</span></div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="b-advertisement area-bg area-bg_dark area-bg_op_70 parallax">
        <div class="area-bg__inner">
            <div class="b-advertisement__label bg-primary"><strong>稷星教育科技</strong>-提供多样化的服务</div>
            <h2 class="b-advertisement__title ui-title-block">让稷星来帮您策划您的活动</h2>
            <div class="b-advertisement__info">传递快乐，传递爱</div>
        </div>
    </section>
    <!-- end b-advertisement-->
    <div class="section-default">
        <div class="container">
            <div class="row">
                <div class="col-sm-11">
                    <div data-pagination="true" data-navigation="false" data-single-item="true" data-auto-play="7000" data-transition-style="fade" data-main-text-animation="true" data-after-init-delay="3000" data-after-move-delay="1000" data-stop-on-hover="true" class="owl-carousel owl-theme owl-theme_mod-a enable-owl-carousel">
                        <blockquote class="b-blockquote b-blockquote-3">
                            <p>我们的愿景是通过有趣的活动形式能够让孩子学到更多的知识和经验，让孩子在玩中学，在欢乐中开扩眼界</p>
                            <footer class="b-blockquote__footer">
                                <div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
                                <cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">王小二</span><span class="b-blockquote__category">上海，中国</span></cite>
                            </footer>
                        </blockquote>
                        <!-- end .b-blockquote-->

                        <blockquote class="b-blockquote b-blockquote-3">
                            <p>我们的愿景是通过有趣的活动形式能够让孩子学到更多的知识和经验，让孩子在玩中学，在欢乐中开扩眼界</p>
                            <footer class="b-blockquote__footer">
                                <div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
                                <cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">王小二</span><span class="b-blockquote__category">上海，中国</span></cite>
                            </footer>
                        </blockquote>
                        <!-- end .b-blockquote-->

                        <blockquote class="b-blockquote b-blockquote-3">
                            <p>我们的愿景是通过有趣的活动形式能够让孩子学到更多的知识和经验，让孩子在玩中学，在欢乐中开扩眼界</p>
                            <footer class="b-blockquote__footer">
                                <div class="b-blockquote__face"><img src="${basePath}static/assets/media/components/b-blockquote/face-1.jpg" alt="face" class="img-responsive"/></div>
                                <cite title="Blockquote Title" class="b-blockquote__cite"><span class="b-blockquote__author">王小二</span><span class="b-blockquote__category">上海，中国</span></cite>
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
                                <li class="footer-list__item"><a href="${basePath}static/assets/downloads/doc-2.pdf" class="footer-list__link">分公司</a></li>
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
                        <div class="copyright pull-left">Copyright © 2016-2019 -<strong>稷星教育科技</strong> - 粤ICP备12079258号<a href="terms-of-use.html" class="copyright__link"> 使用条款</a><a href="privacy-policy.html" class="copyright__link">隐私政策</a></div>

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
