<!DOCTYPE html>
<html lang="en">
<head>
    <title><g:layoutTitle/></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
    <asset:stylesheet src="admin-application.css"/>
    <asset:javascript src="admin-application.js"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}">
    <g:layoutHead/>
</head>

<body>
<div>
    <a id="totop" href="${createLink(controller: 'admin', action: 'index')}">
        <i class="fa fa-angle-up"></i>
    </a>

    <div id="header-topbar-option-demo" class="page-header-topbar">
        <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3"
             class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span
                        class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="${createLink(controller: 'admin', action: 'index')}" class="navbar-brand">
                    <span class="fa fa-rocket"></span>
                    <span class="logo-text">KAdmin</span>
                    <span style="display: none" class="logo-text-icon">µ</span>
                </a>
            </div>

            <div class="topbar-main">
                <a id="menu-toggle" href="${createLink(controller: 'admin', action: 'index')}#" class="hidden-xs">
                    <i class="fa fa-bars"></i>
                </a>
                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown">
                        <a data-hover="dropdown" href="index.html#" class="dropdown-toggle">
                            <i class="fa fa-bell fa-fw"></i>
                            <span class="badge badge-green">3</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a data-hover="dropdown" href="index.html#" class="dropdown-toggle">
                            <i class="fa fa-envelope fa-fw"></i>
                            <span class="badge badge-orange">7</span>
                        </a>

                    </li>
                    <li class="dropdown">
                        <a data-hover="dropdown" href="index.html#" class="dropdown-toggle">
                            <i
                                    class="fa fa-tasks fa-fw"></i>
                            <span class="badge badge-yellow">8</span>
                        </a>

                    </li>
                    <li class="dropdown topbar-user">
                        <a data-hover="dropdown" href="index.html#"
                           class="dropdown-toggle">
                            <asset:image src="admin/avatar/48.jpg" alt="" class="img-responsive img-circle"/>
                            &nbsp;
                            <span
                                    class="hidden-xs">Robert John</span>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right">
                            <li>
                                <a href="${createLink(controller: 'admin', action: 'setting')}">
                                    <i class="fa fa-user"></i>My Profile
                                </a>
                            </li>
                            <li><a href="${createLink(controller: 'admin', action: 'calendar')}"><i
                                    class="fa fa-calendar"></i>My Calendar</a></li>
                            <li><a href="index.html#"><i class="fa fa-envelope"></i>My Inbox<span
                                    class="badge badge-danger">3</span></a></li>
                            <li><a href="index.html#"><i class="fa fa-tasks"></i>My Tasks<span
                                    class="badge badge-success">7</span></a></li>
                            <li class="divider"></li>
                            <li><a href="index.html#"><i class="fa fa-lock"></i>Lock Screen</a></li>
                            <li><a href="${createLink(controller: 'logout', action: 'index')}"><i
                                    class="fa fa-key"></i>Log Out</a></li>
                        </ul>
                    </li>
                    <li id="topbar-chat" class="hidden-xs"><a href="javascript:void(0)" data-step="4"
                                                              data-intro="&lt;b&gt;Form chat&lt;/b&gt; keep you connecting with other coworker"
                                                              data-position="left" class="btn-chat"><i
                                class="fa fa-comments"></i><span class="badge badge-info">3</span></a></li>
                </ul>
            </div>
        </nav>
    </div>

    <div id="wrapper">
        <g:render template="/navigation/adminNavigation"/>
        <div id="page-wrapper">
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">
                        Dashboard
                    </div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a
                            href="${createLink(controller: 'admin', action: 'index')}">Home</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a
                            href="${createLink(controller: 'admin', action: 'index')}#">Dashboard</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="active">Dashboard</li>
                </ol>

                <div class="clearfix">
                </div>
            </div>
            <g:layoutBody/>
            <div id="footer">
                <div class="copyright">
                    %{--<a href="#">2014 © KAdmin Responsive Multi-Purpose Template</a></div>--}%
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>