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
      <li><a href="#">活动剪影</a></li>
      <li><a href="${basePath}account.do">个人中心</a></li>
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
                <h1 class="b-title-page__title">联系我们</h1>
                <ol class="breadcrumb">
                  <li><a href="${basePath}index.do">主页</a></li>
                  <li class="active">联系我们</li>
                </ol>
                <!-- end breadcrumb-->
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- end b-title-page-->
      
      <section class="section-contact">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="ui-decor-1"><img src="${basePath}static/assets/media/general/ui-decor-1.png" alt="decor" class="center-block"></div>
              <div class="text-center">
                <h2 class="b-contact__title ui-subtitle-block">如果您需要我们的服务，请联系我们. 能为您服务，是我们的荣幸!</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-lg-offset-0 col-md-6 col-md-offset-3">
              <div data-stellar-background-ratio="0.4" class="b-contact stellar section-texture section-texture_green section-radius">
                <div class="b-contact__name">地址</div>
                <div class="b-contact__info">上海市嘉定区南翔镇惠平路1228号5幢203室</div>
                <div class="b-contact__icon icon-map"></div>
              </div>
              <!-- end b-contact-->
            </div>
            <div class="col-lg-4 col-lg-offset-0 col-md-6 col-md-offset-3">
              <div data-stellar-background-ratio="0.4" class="b-contact stellar section-texture section-texture_blue section-radius">
                <div class="b-contact__name">联系电话</div>
                <div class="b-contact__info">13127781606</div>
                <div class="b-contact__icon icon-call-in"></div>
              </div>
              <!-- end b-contact-->
            </div>
            <div class="col-lg-4 col-lg-offset-0 col-md-6 col-md-offset-3">
              <div data-stellar-background-ratio="0.4" class="b-contact stellar section-texture section-texture_grey section-radius">
                <div class="b-contact__name">电子邮件</div>
                <div class="b-contact__info">1170538717@qq.com</div>
                <div class="b-contact__icon icon-envelope-open"></div>
              </div>
              <!-- end b-contact-->
            </div>
          </div>
        </div>
      </section>
      <div class="section-form-contact">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="ui-title-block"><i class="ui-decor-2 bg-primary"></i> 信息表单</h2>
              <div id="success"></div>
              <form id="contactForm" action="#" method="post" class="b-form-contacts ui-form">
                <div class="row">
                  <div class="col-md-6">
                    <input id="user-name" type="text" name="user-name" placeholder="您的名字" required="required" class="form-control"/>
                    <input id="user-phone" type="tel" name="user-phone" placeholder="您的电话" class="form-control"/>
                  </div>
                  <div class="col-md-6">
                    <input id="user-email" type="email" name="user-email" placeholder="您的邮箱" class="form-control"/>
                    <input id="user-subject" type="text" name="user-subject" placeholder="您通过哪种途径了解到我们" class="form-control last-block_mrg-btn_0"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xs-12">
                    <textarea id="user-message" rows="5" placeholder="内容 ..." required="required" class="form-control"></textarea>
                    <button class="btn btn-default btn-block">提交表单</button>
                  </div>
                </div>
              </form>
              <!-- end .b-form-contact-->
            </div>
            <div class="col-md-6">
              <div id="map" class="map"></div>
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