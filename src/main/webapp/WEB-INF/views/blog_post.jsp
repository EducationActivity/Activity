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
  <%--end header--%>





  <div class="b-title-page area-bg area-bg_dark parallax">
        <div class="area-bg__inner">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                <h1 class="b-title-page__title">News Detail</h1>
                <ol class="breadcrumb">
                  <li><a href="${basePath}index.do">Home</a></li>
                  <li><a href="${basePath}blog_main.do">News</a></li>
                  <li class="active">Details</li>
                </ol>
                <!-- end breadcrumb-->
                <div class="ui-decor-1"></div>
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
              <article class="b-post-1 clearfix">
                <div class="entry-media"><a href="${basePath}static/assets/media/content/posts/780x400/1.jpg" class="js-zoom-images"><img src="${basePath}static/assets/media/content/posts/780x400/1.jpg" alt="Foto" class="img-responsive"/></a></div>
                <div class="entry-main">
                  <div class="entry-header">
                    <div class="ui-decor-2 ui-decor-2_vert bg-primary"></div>
                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon icon-calendar text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">25th August 2016</a></span><span class="entry-meta__item"><i class="entry-meta__icon icon-grid text-primary"></i><a href="${basePath}blog_post.do" class="entry-meta__link">Birthday Parties</a></span></div>
                    <h2 class="entry-title">Labore sed dolore magna aliqua enim volputate</h2>
                  </div>
                  <div class="entry-content">
                    <p>Corem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur enim ad minim veniam ua quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Sunt in culpa qui officia deserunt mollit anim id est laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accu antium doloremque laudantium totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
                    <blockquote class="b-blockquote b-blockquote-1 text-primary_a">
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolre magna aliquat enim ad minim veniam quis nostrud exercitation sed ipsum ullamco laboris.</p>
                    </blockquote>
                    <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur enim ad minim veniam ua quis nostrud exercitation ullamco.</p>
                    <h3>Wedding Events</h3>
                    <p>Enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur enim ad minim veniam ua quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse dolore at fugiat nulla pariatur excepteur sint occaecat cupidatat non proident.</p>
                  </div>
                  <div class="ui-decor-1 ui-decor-1_full-width"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"/></div>
                  <div class="entry-footer">
                    <div class="entry-footer__social-links"><span class="social-net__title bg-primary_a">Share Post:</span>
                      <ul class="social-net list-inline">
                        <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                        <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                        <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                        <li class="social-net__item"><a href="instagram.com" class="social-net__link text-primary_h"><i class="icon fa fa-instagram"></i></a></li>
                      </ul>
                      <!-- end social-list-->
                    </div>
                    <div class="post-tags"><a href="${basePath}blog_post.do" class="post-tags__link">wedding,</a><a href="${basePath}blog_post.do" class="post-tags__link">bridal,</a><a href="${basePath}blog_post.do" class="post-tags__link">birthday,</a><a href="${basePath}blog_post.do" class="post-tags__link">event</a></div>
                  </div>
                </div>
              </article>
              <!-- end post-->
              
              <article class="about-author bg-grey clearfix">
                <div class="about-author__img"><img src="${basePath}static/assets/media/content/posts/about-author/1.jpg" alt="foto" class="img-responsive"/></div>
                <div class="about-author__inner">
                  <div class="about-author__header"><span class="about-author__title">Adam Milney</span><span class="about-author__category">Admin : Dvents</span></div>
                  <div class="about-author__description">Wonsectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquled tempor enim minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea volputate consequat aute irure dolor sed ipsum duial reprehenderit.</div>
                </div>
              </article>
              <!-- end about-author-->
              
              <section class="section-comment">
                <h2 class="ui-subtitle-block"><span class="ui-decor-2 bg-primary"></span>COMMENTS</h2>
                <ul class="comments-list list-unstyled">
                  <li>
                    <article class="comment clearfix">
                      <div class="comment-avatar"><img src="${basePath}static/assets/media/content/posts/face/1.jpg" alt="face" class="img-responsive"/></div>
                      <div class="comment-inner">
                        <header class="comment-header">
                          <cite class="comment-author">William Smith</cite>
                          <time datetime="2012-10-27" class="comment-datetime">5 hours ago</time><a href="${basePath}blog_post.do" class="comment-btn text-primary"><i class="icon icon-action-undo"></i>reply</a>
                        </header>
                        <div class="comment-body">
                          <p>Elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqul enimd minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                      </div>
                    </article>
                    <ul class="children list-unstyled">
                      <li>
                        <article class="comment clearfix">
                          <div class="comment-avatar"><img src="${basePath}static/assets/media/content/posts/face/2.jpg" alt="face" class="img-responsive"/></div>
                          <div class="comment-inner">
                            <header class="comment-header">
                              <cite class="comment-author">Scott Irvine</cite>
                              <time datetime="2012-10-27" class="comment-datetime">5 hours ago</time><a href="${basePath}blog_post.do" class="comment-btn text-primary"><i class="icon icon-action-undo"></i>reply</a>
                            </header>
                            <div class="comment-body">
                              <p>Elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqul enimd minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                          </div>
                        </article>
                      </li>
                    </ul>
                  </li>
                </ul>
              </section>
              <!-- end section-comment-->
              
              <section id="section-reply-form" class="section-reply-form">
                <h2 class="ui-subtitle-block"><span class="ui-decor-2 bg-primary"></span>LEAVE A COMMENT</h2>
                <form action="#" method="post" class="form-reply ui-form ui-form-1 typography-last-elem">
                  <div class="row">
                    <div class="col-xs-12">
                      <textarea rows="2" placeholder="Your Message ..." class="form-control"></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <input type="text" placeholder="Your Name" class="form-control"/>
                    </div>
                    <div class="col-md-4">
                      <input type="email" placeholder="Your Email" class="form-control"/>
                    </div>
                    <div class="col-md-4">
                      <input type="url" placeholder="Your Website" class="form-control"/>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-xs-12">
                      <button class="ui-form__btn btn btn-primary">send  comment</button>
                    </div>
                  </div>
                </form>
              </section>
              <!-- end section-reply-form-->
            </div>
          </div>
          <div class="col-md-3">
            <aside class="l-sidebar l-sidebar_right">
              <div data-stellar-background-ratio="0.4" class="widget widget-searce section-texture section-texture_blue stellar">
                <h3 class="widget-title"><i class="ui-decor-2"></i>search blog</h3>
                <form id="search-global-form" class="form-sidebar">
                  <input type="text" class="form-sidebar__input"/>
                  <button class="form-sidebar__btn"><i class="icon icon-magnifier"></i></button>
                </form>
              </div>
              <!-- end .widget-->
              
              <section class="widget section-sidebar">
                <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>blog Services</h3>
                <div class="widget-content">
                  <ul class="widget-list list list-mark-5">
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Wedding Events</a></li>
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Birthday Parties</a></li>
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Corporate Seminars</a></li>
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Special Day Celebrations</a></li>
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Live Concerts</a></li>
                    <li class="widget-list__item"><a href="${basePath}blog_post.do" class="widget-list__link text-primary_h">Fashion Shows</a></li>
                  </ul>
                </div>
              </section>
              <!-- end .widget-->
              
              <section class="widget section-sidebar">
                <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>recent posts</h3>
                <div class="widget-content">
                  <div class="post-widget clearfix">
                    <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/1.jpg" alt="foto" class="img-responsive"/></a></div>
                    <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">Corem ipsum dolor amets minium laboris ...</a>
                      <div class="post-widget__date">
                        <time datetime="2012-10-27 15:20" class="text-primary">August  25, 2016</time>
                      </div>
                    </div>
                    <!-- end .widget-post-->
                  </div>
                  <div class="post-widget clearfix">
                    <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/2.jpg" alt="foto" class="img-responsive"/></a></div>
                    <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">Enim ad minim veniam quis fugiat ullamaco ...</a>
                      <div class="post-widget__date">
                        <time datetime="2012-10-27 15:20" class="text-primary">September 23,  2016</time>
                      </div>
                    </div>
                    <!-- end .widget-post-->
                  </div>
                  <div class="post-widget clearfix">
                    <div class="post-widget__media"><a href="${basePath}blog_post.do"><img src="${basePath}static/assets/media/content/posts/90x80/3.jpg" alt="foto" class="img-responsive"/></a></div>
                    <div class="post-widget__inner"><a href="${basePath}blog_post.do" class="post-widget__title">Daboris nisi ut aliquip ex ea esae volputate ...</a>
                      <div class="post-widget__date">
                        <time datetime="2012-10-27 15:20" class="text-primary">December 17, 2016</time>
                      </div>
                    </div>
                    <!-- end .widget-post-->
                  </div>
                </div>
              </section>
              <!-- end .widget-->
              
              <section class="widget widget-best-post section-sidebar">
                <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>featured post</h3>
                <div class="widget-content">
                  <div class="post-widget-2 clearfix">
                    <div class="post-widget-2__media area-bg area-bg_dark area-bg_op_60"><img src="${basePath}static/assets/media/content/posts/292x300/1.jpg" alt="foto" class="img-responsive"/></div>
                    <div class="post-widget-2__inner area-bg__inner">
                      <div class="post-widget-2__date">
                        <time datetime="2012-10-27 15:20" class="text-primary">December 17, 2016</time>
                      </div><a href="${basePath}blog_post.do" class="post-widget-2__title">Daboris nisi ut aliquip exdsea esae volputate ...</a>
                    </div>
                    <!-- end .widget-post-->
                    
                  </div>
                </div>
              </section>
              <!-- end .widget-->
              
              <section class="widget section-sidebar">
                <h3 class="widget-title"><i class="ui-decor-2 bg-primary"></i>tags cloud</h3>
                <div class="widget-content">
                  <ul class="list-tags list-unstyled">
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">aniversary</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">party</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">kids</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">birthday</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">wedding</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">lunch</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">corporate meeting</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">engagement</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">proposal</a></li>
                    <li class="list-tags__item"><a href="${basePath}activity_detail.do" class="list-tags__link bg-primary_h">seminars</a></li>
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
                    <li class="footer-list__item"><a href="${basePath}activity_detail.do" class="footer-list__link">Our Services</a></li>
                    <li class="footer-list__item"><a href="${basePath}index.do" class="footer-list__link">Our Team</a></li>
                    <li class="footer-list__item"><a href="${basePath}about.do" class="footer-list__link">About Dvents</a></li>
                    <li class="footer-list__item"><a href="${basePath}index.do" class="footer-list__link">Clients List</a></li>
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
  </body>
</html>