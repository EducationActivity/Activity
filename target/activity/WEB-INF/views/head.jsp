<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <!--<script src="${basePath}static/assets/js/separate-js/html5shiv-3.7.2.min.js" type="text/javascript"></script><meta content="no" http-equiv="imagetoolbar">-->
    <![endif]-->
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

</head>
<body>
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
            <li><a href="${basePath}activity.do">活动</a></li>
            <li><a href="${basePath}wupin.do">物料</a></li>
            <li><a href="${basePath}course1.do">课程</a></li>
            <li><a href="${basePath}about.do">About</a></li>
            <li><a href="${basePath}blog-main.do">News</a></li>
            <li><a href="${basePath}contact.do">Contact</a></li>
            <li><a href="#">活动剪影</a></li>
            <li><a href="#">论坛</a></li>

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
                    <li><a href="${basePath}activity.do">活动</a></li>
                    <li><a href="${basePath}wupin.do">物料</a></li>
                    <li><a href="${basePath}course1.do">课程</a></li>
                    <li><a href="${basePath}about.do">About</a></li>
                    <li><a href="${basePath}blog-main.html">News</a></li>
                    <li><a href="${basePath}Contact.do">Contact</a></li>
                    <li><a href="#">活动剪影</a></li>
                    <li><a href="#">论坛</a></li>
                </ul>

            </div>
        </nav>
        <button type="button" class="fullmenu-close"><i class="fa fa-times"></i></button>
    </div>


    <header class="header header-boxed-width header-background-trans header-logo-black header-topbarbox-1-left header-topbarbox-2-right header-navibox-1-left header-navibox-2-right header-navibox-3-right header-navibox-4-right">
        <div class="top-bar">
            <div class="container container-boxed-width">
                <div class="container">
                    <div class="header-topbarbox-1">
                        <ul class="top-bar-contact">
                            <li class="top-bar-contact__item"><i class="icon icon-call-in"></i> (+01) 123 456 7899</li>
                            <li class="top-bar-contact__item"><i class="icon icon-envelope-open"></i> Contact [at] Dvents.com</li>
                            <li class="top-bar-contact__item"><i class="icon icon-clock"></i> Mon – Fri  9.00 am – 6.00 pm</li>
                        </ul>
                    </div>
                    <div class="header-topbarbox-2">
                        <ul class="social-net list-inline">
                            <li class="social-net__item"><a href="twitter.com" class="social-net__link text-primary_h"><i class="icon fa fa-twitter"></i></a></li>
                            <li class="social-net__item"><a href="facebook.com" class="social-net__link text-primary_h"><i class="icon fa fa-facebook"></i></a></li>
                            <li class="social-net__item"><a href="plus.google.com" class="social-net__link text-primary_h"><i class="icon fa fa-google-plus"></i></a></li>
                            <li class="social-net__item"><a href="linkedin.com" class="social-net__link text-primary_h"><i class="icon fa fa-linkedin"></i></a></li>
                        </ul>
                        <!-- end social-list-->
                    </div>
                </div>
            </div>
        </div>
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
                            <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">主页<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="${basePath}index.do" >Home ver 01</a></li>
                                    <!--<li><a href="home-2.html" >Home ver 02</a></li>-->
                                </ul>
                            </li>
                            <li><a href="${basePath}activity.do">活动</a></li>
                            <li><a href="${basePath}wupin.do">物料</a></li>
                            <li><a href="${basePath}course1.do">课程</a></li>
                            <li><a href="${basePath}about.do">About</a></li>
                            <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">News<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="${basePath}blog-main.do" >Blog main</a></li>
                                    <li><a href="${basePath}blog-post.do" >Blog post</a></li>
                                </ul>
                            </li>
                            <li><a href="${basePath}contact.do">Contact</a></li>
                            <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pages<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="${basePath}404.do" >404</a></li>
                                    <li><a href="${basePath}headers.do" >header</a></li>
                                    <li><a href="${basePath}typography.do" >typo</a></li>
                                    <li><a href="${basePath}privacy-policy.do" >隐私政策</a></li>
                                    <li><a href="${basePath}terms-of-use.do" >terms-of-use</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- end .header-->
</div>
</body>
</html>
