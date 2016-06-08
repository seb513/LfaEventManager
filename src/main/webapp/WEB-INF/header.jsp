<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>LFA Events</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link href="${SITE_URL}/assets/bootstrap/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap 3.3.6 -->
        <link href="${SITE_URL}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link href="${SITE_URL}/assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect.
        -->
        <link href="${SITE_URL}/assets/dist/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/assets/dist/css/skins/skin-blue.min.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/assets/dist/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Logo -->
                <a href="${SITE_URL}" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>LFA</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>LFA</b>events</span>
                </a>

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">

                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="${SITE_URL}/assets/dist/img/leapfrog.png" class="img-circle" alt="Leapfrog">
                        </div>
                        <div class="pull-left info">
                            <p>username</p>
                            <!-- Status -->
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- search form (Optional) -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->

                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active"><a href="${SITE_URL}/dash/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
                        <li><a href="${SITE_URL}/eventlist/index"><i class="fa fa-bookmark"></i> <span>Event Types</span></a></li>
                        <li><a href="${SITE_URL}/event/index"><i class="fa fa-group"></i> <span>Events</span></a></li>
                        <li><a href="${SITE_URL}/booking/index"><i class="fa fa-graduation-cap"></i> <span>Event Booking</span></a></li>
                        <li><a href="${SITE_URL}/person/index"><i class="fa fa-comments"></i> <span>Person</span></a></li>
<!--                        <li><a href="${SITE_URL}/person/index"><i class="fa fa-wrench"></i> <span>Persons</span></a></li>-->
                        <li><a href="${SITE_URL}/user/index"><i class="fa fa-smile-o"></i> <span>Users</span></a></li>
                        <!--<li><a href="#"><i class="fa fa-at"></i> <span>About us</span></a></li>-->
                    </ul>
                    <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <img class="img-responsive" src="${SITE_URL}/assets/img/logo_main.png">
                        <p class="event-heading">--- Events ---</p>
                    </h1>

                </section>

                <!-- Main content -->
                <section class="content">

                    <!-- Your Page Content Here -->

