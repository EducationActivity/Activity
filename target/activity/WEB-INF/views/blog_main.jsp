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
    <title>Template / Dvents</title>
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
    <script src="/${basePath}static/assets/js/separate-js/html5shiv-3.7.2.min.js" type="text/javascript"></script><meta content="no" http-equiv="imagetoolbar">
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
                <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">论坛<b class="caret"></b></a>                <ul role="menu" class="dropdown-menu">
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
              <h1 class="b-title-page__title">最新资讯</h1>
              <ol class="breadcrumb">
                <li><a href="${basePath}index.do">主页</a></li>
                <li class="active">新闻</li>
              </ol>
              <!-- end breadcrumb-->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end b-title-page-->

    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <div class="l-main-content posts-group">
            <section class="b-post-1 clearfix">
              <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/780x350/1.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/780x350/1.jpg" alt="Foto" class="img-responsive"/></a></div>
              <div class="entry-main">
                <div class="entry-header">
                  <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-calendar text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">25th August 2016</a></span><span class="entry-meta__item"><i class="entry-meta__icon icon-grid text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">Wedding Events</a></span></div>
                  <h2 class="entry-title">金秋十月，看杨家桥幼儿园如何欢度国庆！！</h2>
                </div>
                <div class="entry-content">
                  <p>经典的古老神话，打开了幼儿想象的翅膀，给了幼儿丰富的想象空间等等。我们应当将这些幼儿喜爱的文化资源和形式，贯穿在幼儿的生活之中，在引领幼儿感受民俗文化的魅力的同时，发挥其教育的功能，激发幼儿的各种兴趣，促进幼儿认知的发展。
                    .</p>
                </div>
                <div class="entry-footer"><a href="${basePath}blog_post.do" class="btn btn-default btn-xs">
                  <div class="icon"></div>查看更多</a>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-speech text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">暂无评论</a></span></div>
                </div>
              </div>
            </section>
            <!-- end post-->


            <section class="b-post-1 clearfix">
              <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/780x350/2.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/780x350/2.jpg" alt="Foto" class="img-responsive"/></a></div>
              <div class="entry-main">
                <div class="entry-header">
                  <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-calendar text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">13th September 2016</a></span><span class="entry-meta__item"><i class="entry-meta__icon icon-grid text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">Corporate Seminars</a></span></div>
                  <h2 class="entry-title">浦东新区广兰幼儿园春季亲子运动会|其乐融融</h2>
                </div>
                <div class="entry-content">
               <p> 春暖花开之时，也使一个活动筋骨的好天气。魔都的春天，悄然来临，浦东新区广兰幼儿园春季亲自运动会于清明节前夕展开...s</p>
                </div>
                <div class="entry-footer"><a href="${basePath}blog_post.do" class="btn btn-default btn-xs">
                  <div class="icon"></div>查看更多</a>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-speech text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">暂无评论</a></span></div>
                </div>
              </div>
            </section>
            <!-- end post-->


            <section class="b-post-1 clearfix">
              <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/780x350/3.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/780x350/3.jpg" alt="Foto" class="img-responsive"/></a></div>
              <div class="entry-main">
                <div class="entry-header">
                  <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-calendar text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">23rd October 2016</a></span><span class="entry-meta__item"><i class="entry-meta__icon icon-grid text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">Birthday Parties</a></span></div>
                  <h2 class="entry-title">欢天喜地迎新年——金豆豆幼儿园亲子游园会</h2>
                </div>
                <div class="entry-content">
                  <p>通过亲子活动，加强家园沟通与合作，密切幼儿、教师、家长三者的关系，增进亲子间的情感交流， 促进幼儿身心的全面发展，促进家长教育观念的更新与科学育儿水平的提升。</p>
                </div>
                <div class="entry-footer"><a href="${basePath}blog_post.do" class="btn btn-default btn-xs">
                  <div class="icon"></div>查看更多</a>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-speech text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">暂无评论</a></span></div>
                </div>
              </div>
            </section>
            <!-- end post-->


            <section class="b-post-1 clearfix">
              <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/780x350/4.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/780x350/4.jpg" alt="Foto" class="img-responsive"/></a></div>
              <div class="entry-main">
                <div class="entry-header">
                  <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-calendar text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">17th December 2016</a></span><span class="entry-meta__item"><i class="entry-meta__icon icon-grid text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">Fashion Shows</a></span></div>
                  <h2 class="entry-title">遇事不掉泪、摔倒再爬起，广州这家幼儿园的孩子个个都是“小战狼”！</h2>
                </div>
                <div class="entry-content">
                  <p>在我国，很多家庭大多重视孩子智力的发展，而忽视对孩子情感的培养。一味地满足孩子的物质需要，孩子养尊处优，“小公主”、“小皇帝”们来到幼儿园，生活自理能力差、做事自我为中心，承受不住挫折，以后如何踏进社会？</p></div>
                <div class="entry-footer"><a href="${basePath}blog_post.do" class="btn btn-default btn-xs">
                  <div class="icon"></div>查看更多</a>
                  <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-speech text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">暂无评论</a></span></div>
                </div>
              </div>
            </section>
            <!-- end post-->


            <div class="ui-decor-1 ui-decor-1_full-width"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
            <div class="row">
              <div class="col-xs-12">
                <div class="pagination__title bg-primary_a">Pages</div>
                <ul class="pagination">
                  <li><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <aside class="l-sidebar l-sidebar_right">
            <div data-stellar-background-ratio="0.4" class="widget widget-searce section-texture bg-primary stellar">
              <h3 class="widget-title"><i class="ui-decor-2"></i>搜一搜</h3>
              <form id="search-global-form" class="form-sidebar">
                <input type="text" class="form-sidebar__input"/>
                <button class="form-sidebar__btn"><i class="icon icon-magnifier"></i></button>
              </form>
            </div>
            <!-- end .widget-->

            <section class="widget section-sidebar">
              <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>导航栏</h3>
              <div class="widget-content">
                <ul class="widget-list list list-mark-5">
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新活动</a></li>
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新课程</a></li>
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新周边</a></li>
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新服务</a></li>
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新策划</a></li>
                  <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">最新解决方案</a></li>
                </ul>
              </div>
            </section>
            <!-- end .widget-->

            <section class="widget section-sidebar">
              <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>近期资讯</h3>
              <div class="widget-content">
                <div class="post-widget clearfix">
                  <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/1.jpg" alt="foto" class="img-responsive"/></a></div>
                  <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">遇事不掉泪，摔倒再爬起，人人都是小战狼...</a>
                    <div class="post-widget__date">
                      <time datetime="2019-03-25 15:20" class="text-primary">March  25, 2019</time>
                    </div>
                  </div>
                  <!-- end .widget-post-->
                </div>
                <div class="post-widget clearfix">
                  <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/2.jpg" alt="foto" class="img-responsive"/></a></div>
                  <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">环保节创意大比拼 ...</a>
                    <div class="post-widget__date">
                      <time datetime="2019-03-23 15:20" class="text-primary">March 23,  2019</time>
                    </div>
                  </div>
                  <!-- end .widget-post-->
                </div>
                <div class="post-widget clearfix">
                  <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/3.jpg" alt="foto" class="img-responsive"/></a></div>
                  <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">新村路幼儿园为迎新年，举行爱心义卖活动...</a>
                    <div class="post-widget__date">
                      <time datetime="2019-01-01 15:20" class="text-primary">January 17, 2019</time>
                    </div>
                  </div>
                  <!-- end .widget-post-->
                </div>
              </div>
            </section>
            <!-- end .widget-->

            <section class="widget widget-best-post section-sidebar">
              <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>每日经典</h3>
              <div class="widget-content">
                <div class="post-widget-2 clearfix">
                  <div class="post-widget-2__media area-bg area-bg_dark area-bg_op_60"><img src="${basePath}static/assets/media/content/posts/292x300/1.jpg" alt="foto" class="img-responsive"/></div>
                  <div class="post-widget-2__inner area-bg__inner">
                    <div class="post-widget-2__date">
                      <time datetime="2012-10-27 15:20" class="text-primary">December 17, 2019</time>
                    </div><a href="${basePath}blog_post.do" class="post-widget-2__title">少年易老学难成，一寸光阴不可轻...</a>
                  </div>
                  <!-- end .widget-post-->

                </div>
              </div>
            </section>
            <!-- end .widget-->

            <section class="widget section-sidebar">
              <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>话题标签</h3>
              <div class="widget-content">
                <ul class="list-tags list-unstyled">
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">游园会</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">水世界</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">运动会</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">篮球课程</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">舞蹈课程</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">捏泥人</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">绘画</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">龙凤字</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">爱心义卖</a></li>
                  <li class="list-tags__item"><a href="services.html" class="list-tags__link bg-primary_h">绘画</a></li>
                </ul>
              </div>
            </section>
            <!-- end .widget-->
          </aside>
          <!-- end .sidebar-->

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
                <div class="copyright pull-left">© 2016-<strong>稷星教育科技</strong> - 粤ICP备12079258号<a href="terms-of-use.html" class="copyright__link"> 使用条款</a><a href="privacy-policy.html" class="copyright__link">隐私政策</a></div>

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