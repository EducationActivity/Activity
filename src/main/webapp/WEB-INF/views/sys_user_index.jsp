<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
  request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><sitemesh:write property='title'>亲为亲子后台管理系统</sitemesh:write></title>
  <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
  <script>
      var basePath = "${basePath}";
  </script>

  <link href="${basePath}static/css/bootstrap.min.css" rel="stylesheet">
  <link href="${basePath }static/css/style.default.css" rel="stylesheet">

  <link href="${basePath}static/css/bootstrap-table.min.css" rel="stylesheet">
  <link href="${basePath}static/css/bootstrap-treeview.css" rel="stylesheet" type="text/css" media="all"/>
  <link href="${basePath}static/css/fileinput.min.css" rel="stylesheet">
  <link href="${basePath}static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="${basePath}static/css/bootstrap-select.min.css" rel="stylesheet">


  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <%--<link rel="stylesheet" href="${basePath}static/bower_components/bootstrap/dist/css/bootstrap.min.css">--%>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${basePath}static/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${basePath}static/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${basePath}static/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${basePath}static/dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <%--<link rel="stylesheet" href="${basePath}static/bower_components/morris.js/morris.css">--%>
  <!-- jvectormap -->
  <link rel="stylesheet" href="${basePath}static/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <%--<link rel="stylesheet" href="${basePath}static/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">--%>
  <!-- Daterange picker -->
  <link rel="stylesheet" href="${basePath}static/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="${basePath}static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>-->
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <script src="${basePath}static/js/html5shiv.min.js"></script>
  <script src="${basePath}static/js/respond.min.js"></script>

  <script src="${basePath}static/js/jquery-1.9.1.min.js"></script>
  <script src="${basePath}static/js/bootstrap-treeview.js"></script>
  <script src="${basePath}static/js/jquery-migrate-1.2.1.min.js"></script>
  <script src="${basePath}static/js/jquery.validate.min.js"></script>
  <script src="${basePath}static/js/bootstrap.min.js"></script>
  <!-- bootstrap-table.min.js -->
  <script src="${basePath}static/js/bootstrap-table.min.js"></script>
  <!-- 引入中文语言包 -->
  <script src="${basePath}static/js/bootstrap-table-zh-CN.min.js"></script>

  <script src="${basePath}static/js/fileinput.min.js"></script>
  <script src="${basePath}static/js/bootstrap-datetimepicker.min.js"></script>
  <script sr="${basePath}static/js/bootstrap-moment-with-locales.js"></script>
  <script src="${basePath}static/js/custom.js"></script>
  <script src="${basePath}static/js/bootstrap-datetimepicker.zh-CN.js"></script>
  <script src="${basePath}static/js/bootstrap-select.min.js"></script>
  <script src="${basePath}static/js/zh.js"></script>
  <script src="${basePath}static/js/messages_zh.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <sitemesh:write property='head'/>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">后台</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">亲为亲子后台管理系统</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="${basePath}static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="${basePath}static/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="${basePath}static/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="${basePath}static/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="${basePath}static/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Create a nice theme
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Some task I need to do
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Make beautiful transitions
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="${basePath}static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">${user.userName}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="${basePath}static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  ${user.userName} - ${user.loginName}
                  <%--<small>Member since Nov. 2012</small>--%>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body form-horizontal">
                <div class="row">
                  <label class="col-xs-4">地址：</label>
                  <div class="col-xs-8 text-center">
                    <a href="#">${user.phone}</a>
                  </div>
                </div>
                <div class="row">
                  <label class="col-xs-4">邮箱：</label>
                  <div class="col-xs-8 text-center">
                    <a href="#">${user.email}</a>
                  </div>
                </div>
                <div class="row">
                  <label class="col-xs-4">联系地址：</label>
                  <div class="col-xs-8 text-center">
                    <a href="#">${user.address}</a>
                  </div>
                </div>

                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" onclick="updateUser()" class="btn btn-default btn-flat">修改</a>
                </div>
                <div class="pull-right">
                  <a href="${basePath}sysUser/loginOut.do" class="btn btn-default btn-flat">退出</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${basePath}static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${user.userName}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="搜索...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">导航</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>活动流程管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${basePath}activityConfirmation/listPage.do"><i class="fa fa-circle-o"></i> 幼儿园信息确认管理</a></li>
            <li><a href="${basePath}activity/listPage.do"><i class="fa fa-circle-o"></i> 活动信息确认管理</a></li>
            <li><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-circle-o"></i> 幼儿园活动方案管理</a></li>
            <li><a href="${basePath}activityMaterials/listActivityMaterials.do"><i class="fa fa-circle-o"></i>活动物料信息管理</a></li>
            <li><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-circle-o"></i>活动人员安排管理</a></li>
            <li><a href="${basePath}activityPhotos/listPage.do"><i class="fa fa-circle-o"></i>活动图片信息管理</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>活动内容管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li>
                <a href="${basePath}activityTheme/listPage.do"><i class="fa fa-circle-o"></i>活动主题游戏管理</a>
              </li>
              <li><a href="${basePath}properties/listPage.do"><i class="fa fa-circle-o"></i>游戏属性管理(子菜单)</a></li>
              <li><a href="${basePath}scheme/listPage.do"><i class="fa fa-circle-o"></i>活动方案模板管理</a></li>
            <%--<ul class="children">--%>
            <%--<li class=""><a href="${basePath}scheme/listPage.do"><i class="fa fa-caret-right"></i>门卡模板列表</a></li>--%>
            <%--</ul>--%>
              <li><a href="${basePath}attendanceCard/listPage.do"><i class="fa fa-circle-o"></i>活动游园卡模板管理</a></li>
            <%--<ul class="children">--%>
            <%--<li class=""><a href="${basePath}scheme/listPage.do"><i class="fa fa-caret-right"></i>邀请函模板列表</a></li>--%>
            <%--</ul>--%>
              <li><a href="${basePath}figure/listPage.do"><i class="fa fa-circle-o"></i>活动人偶管理</a></li>
              <li><a href="${basePath}archway/listPage.do"><i class="fa fa-circle-o"></i>活动拱门管理</a></li>
          </ul>
        </li>
        <%--<li class="treeview">--%>
          <%--<a href="#">--%>
            <%--<i class="fa fa-pie-chart"></i>--%>
            <%--<span>活动报表管理</span>--%>
            <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
          <%--</a>--%>
          <%--<ul class="treeview-menu">--%>
            <%--<li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>--%>
            <%--<li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>--%>
            <%--<li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>--%>
            <%--<li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>--%>
          <%--</ul>--%>
        <%--</li>--%>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>加盟商管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li><a href="${basePath}franchisee/listPage.do"><i class="fa fa-circle-o"></i>加盟商信息管理</a></li>
              <li><a href="#"><i class="fa fa-circle-o"></i>加盟商活动管理</a></li>
              <li><a href="#"><i class="fa fa-circle-o"></i>加盟商课程管理</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>供应商管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li><a href="${basePath}supplier/listPage.do"><i class="fa fa-circle-o"></i>供应商管理</a></li>
              <li><a href="${basePath}materials/listPage.do"><i class="fa fa-circle-o"></i>物料管理</a></li>
              <li><a href="${basePath}course/listPage.do"><i class="fa fa-circle-o"></i>课程管理</a></li>
              <li><a href="${basePath}courseType/listPage.do"><i class="fa fa-circle-o"></i>课程类型管理(子菜单)</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>幼儿园管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li class=""><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-circle-o"></i>幼儿园信息列表</a></li>
          </ul>
        </li>
        <%--<li class="nav-parent"><a href="#"><i class="fa fa-youtube-square"></i> <span>家长管理</span></a>--%>
        <%--<ul class="children">--%>
        <%--<li class=""><a href="${basePath}parents/listPage.do"><i class="fa fa-caret-right"></i>家长信息列表</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="nav-parent"><a href="#"><i class="fa fa-file-text"></i> <span>新闻管理</span></a>--%>
        <%--<ul class="children">--%>
        <%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>新闻列表</a></li>--%>
        <%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>评论列表</a></li>--%>
        <%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>轮播图列表</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i> <span>账户管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li class=""><a href="#" onclick="updateUser()" data-toggle="modal"><i class="fa fa-circle-o"></i></i>个人信息</a></li>
              <li class=""><a href="#pwsModal" data-toggle="modal"><i class="fa fa-circle-o"></i>修改密码</a></li>
              <li class=""><a href="${basePath}sysUser/loginOut.do"><i class="fa fa-circle-o"></i>安全退出</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>后台管理员管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li class=""><a href="${basePath}sysUser/listPage.do"><i class="fa fa-circle-o"></i>管理员管理</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
      <%--<section class="content-header">--%>

      <%--</section>--%>
      <%--<!-- Main content -->--%>
      <%--<section class="content">--%>

      <%--</section>--%>
      <sitemesh:write property='body'/>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<div class="modal fade" id="pwsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form id="userPwdForm" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times</span>
                    </button>
                    <h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="userId" name="userId" value="${user.userId }" />
                    <div class="row">
                        <label class="col-md-2 control-label" for="userPassword">新密码:</label>
                        <div class="col-md-10">
                            <input id="userPassword" name="userPassword" type="password" class="form-control"
                                   placeholder="请输入新密码">
                        </div>
                    </div>
                    <div class="clearfix" style="margin-bottom: 20px;"></div>
                    <div class="row">
                        <label class="col-md-2 control-label" for="rowUserPwd">确认密码:</label>
                        <div class="col-md-10">
                            <input id="rowUserPwd" name="rowUserPwd" type="password" class="form-control"
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

<div class="modal fade" id="updateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">个人信息修改</h4>
            </div>
            <div class="modal-body">
                <form id="updateForm" enctype="multipart/form-data" class="form-horizontal">
                    <input type="hidden" id="userId1" name="userId" value="${user.userId }"/>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="loginName">登录名:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" name="loginName" id="loginName" class="form-control" placeholder="请输入登录名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="userName">姓名:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" name="userName" id="userName" class="form-control" placeholder="请输入姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="phone">电话:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" name="phone" id="phone" class="form-control" placeholder="请输入电话">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="email">邮箱:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" name="email" id="email" class="form-control" placeholder="请输入邮箱">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="address">地址:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" name="address" id="address" class="form-control" placeholder="请输入地址">
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
<!-- ./wrapper -->

<!-- jQuery 3 -->
<%--<script src="${basePath}static/bower_components/jquery/dist/jquery.min.js"></script>--%>

<!-- jQuery UI 1.11.4 -->
<script src="${basePath}static/bower_components/jquery-ui/jquery-ui.min.js"></script>

<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<srcipt>
  $.widget.bridge('uibutton', $.ui.button);

</srcipt>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- Bootstrap 3.3.7 -->
<%--<script src="${basePath}static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>--%>
<!-- Morris.js charts -->
<script src="${basePath}static/bower_components/raphael/raphael.min.js"></script>
<%--<script src="${basePath}static/bower_components/morris.js/morris.min.js"></script>--%>
<!-- Sparkline -->
<script src="${basePath}static/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<%--<!-- jvectormap -->--%>
<script src="${basePath}static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${basePath}static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${basePath}static/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${basePath}static/bower_components/moment/min/moment.min.js"></script>
<script src="${basePath}static/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${basePath}static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${basePath}static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${basePath}static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${basePath}static/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}static/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<%--<script src="${basePath}static/dist/js/pages/dashboard.js"></script>--%>
<!-- AdminLTE for demo purposes -->
<script src="${basePath}static/dist/js/demo.js"></script>
<script type="text/javascript">
    function validateForm(){
        return $("#userPwdForm").validate( {
            rules: {
                userPassword: {
                    required:true,
                    rangelength:[6,12]
                },
                rowUserPwd: {
                    required: true,
                    rangelength: [6,12],
                    equalTo:"#userPassword"
                }
            },
            messages: {
                userPassword: {
                    required: "新密码密码不能为空",
                    rangelength: "密码长度在6到12位之间"
                },
                rowUserPwd: {
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

    function validateUser(){
        return $("#updateForm").validate( {
            rules: {
                loginName: {
                    required:true
                },
                userName: {
                    required: true
                },
                phone: {
                    required :true,
                    rangelength:[11,11]
                },
                email: {
                    required: true,
                    email:true
                },
                address :{
                    required:true
                }
            },
            messages: {
                loginName: {
                    required: "登录账号不能为空"
                },
                userName: {
                    required: "用户姓名不能为空"
                },
                phone: {
                    required: "电话不能为空",
                    rangelength:"电话的长度为11位"
                },
                email: {
                    required: "邮箱不能为空",
                    email:"邮箱的格式不正确"
                },
                address: {
                    required: "地址不能为空"
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
    $(validateUser());
    $("#submit").on("click",function () {
        if(validateForm().form()){
            $.ajax({
                url: basePath + "sysUser/updateUserPws.do",
                type:"post",
                dataType:"json",
                data: $("#userPwdForm").serialize(),
                success: function(data){
                    $('#pwsModal').modal('hide');
                    alert(data.message);
                    $("#updateModel").bootstrapTable("refresh")
                },
                error: function(data){
                    alert(data.message);
                    $("#updateModel").bootstrapTable("refresh")
                }
            });
    	}
    })

    function updateUser(){
        var userId = $("#userId1").val();
        selectById(userId);
        $('#updateModel').modal('show');
        $("#btn_submit").on("click",function () {
            if(validateUser().form()) {
                var userId = $("#userId1").val();
                var loginName = $("#loginName").val();
                var userName = $("#userName").val();
                var phone = $("#phone").val();
                var email = $("#email").val();
                var address = $("#address").val();
                $.ajax({
                    url: basePath + "sysUser/update.do",
                    type: "post",
                    dataType: "json",
                    data: {
                        userId:userId,
                        loginName: loginName,
                        userName: userName,
                        phone: phone,
                        email: email,
                        address: address
                    },
                    success: function (data) {
                        $('#updateModel').modal('hide');
                        alert(data.message);
                        $("#updateModel").bootstrapTable("refresh")
                    },
                    error: function (data) {
                        alert(data.message);
                        $("#updateModel").bootstrapTable("refresh")
                    }
                });
            }
        })

    }

    function selectById(userId){
        $.ajax({
            url: "${basePath}sysUser/listById.do?userId="+userId,
            type:"post",
            dataType:"json",
            success:function(data){
                $("#userId1").val(data[0].userId);
                $("#loginName").val(data[0].loginName);
                $("#userName").val(data[0].userName);
                $("#phone").val(data[0].phone);
                $("#email").val(data[0].email);
                $("#address").val(data[0].address);

            }
        });
    }
    // $(function() {
    //     $("li").bind("click",function() {
    //         if($(this).hasClass('active')){
    //             $(this).removeClass('active');
    //         }
    //         $(this).addClass("active");
    //     });
    // });
    $(document).ready(function () {
        $('.sidebar-menu li a').each(function () {
            if ($($(this))[0].href == String(window.location)){
                if($(this).hasClass('active')){
                    $(this).removeClass('active');
                }
            $(this).addClass("active");
                // $(this).addClass('active').attr('href', 'javascript:void(0);');
            }
        });
    })
</script>
</body>
</html>
