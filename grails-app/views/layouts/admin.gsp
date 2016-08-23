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
    <div id="theme-setting">
        <a href="index.html#" data-toggle="dropdown" data-step="1"
           data-intro="&lt;b&gt;Many styles&lt;/b&gt; and &lt;b&gt;colors&lt;/b&gt; be created for you. Let choose one and enjoy it!"
           data-position="left" class="btn-theme-setting"><i class="fa fa-cog"></i></a>

        <div class="content-theme-setting">
            <select id="list-style" class="form-control">
                <option value="style1">Flat Squared style</option>
                <option value="style2">Flat Rounded style</option>
                <option value="style3" selected="selected">Flat Border style</option>
            </select>
        </div>
    </div>
    <a id="totop" href="index.html#"><i class="fa fa-angle-up"></i></a>

    <div id="header-topbar-option-demo" class="page-header-topbar">
        <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3"
             class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span
                        class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span
                        class="logo-text">KAdmin</span><span style="display: none" class="logo-text-icon">µ</span></a>
            </div>

            <div class="topbar-main"><a id="menu-toggle" href="index.html#" class="hidden-xs"><i class="fa fa-bars"></i>
            </a>

                <form id="topbar-search" action="index.html" method="" class="hidden-sm hidden-xs">
                    <div class="input-icon right text-white"><a href="index.html#"><i class="fa fa-search"></i>
                    </a><input type="text" placeholder="Search here..." class="form-control text-white"/></div>
                </form>

                <div class="news-update-box hidden-xs"><span
                        class="text-uppercase mrm pull-left text-white">News:</span>
                    <ul id="news-update" class="ticker list-unstyled">
                        <li>Welcome to KAdmin - Responsive Multi-Style Admin Template</li>
                        <li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</li>
                    </ul>
                </div>
                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown"><a data-hover="dropdown" href="index.html#" class="dropdown-toggle"><i
                            class="fa fa-bell fa-fw"></i><span class="badge badge-green">3</span></a>

                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="index.html#" class="dropdown-toggle"><i
                            class="fa fa-envelope fa-fw"></i><span class="badge badge-orange">7</span></a>

                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="index.html#" class="dropdown-toggle"><i
                            class="fa fa-tasks fa-fw"></i><span class="badge badge-yellow">8</span></a>

                    </li>
                    <li class="dropdown topbar-user"><a data-hover="dropdown" href="index.html#"
                                                        class="dropdown-toggle">
                        <asset:image src="admin/avatar/48.jpg" alt="" class="img-responsive img-circle"/>
                        &nbsp;
                        <span
                                class="hidden-xs">Robert John</span>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right">
                            <li><a href="index.html#"><i class="fa fa-user"></i>My Profile</a></li>
                            <li><a href="index.html#"><i class="fa fa-calendar"></i>My Calendar</a></li>
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
        <!--BEGIN MODAL CONFIG PORTLET-->
        <div id="modal-config" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" data-dismiss="modal" aria-hidden="true" class="close">
                        &times;</button>
                        <h4 class="modal-title">
                            Modal title</h4>
                    </div>

                    <div class="modal-body">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget
                            porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie.
                            Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis
                            magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor
                            vitae quam dictum condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec
                            aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus
                            vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium
                            hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut
                            ultricies felis.</p>
                    </div>

                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-default">
                            Close</button>
                        <button type="button" class="btn btn-primary">
                            Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--END MODAL CONFIG PORTLET-->
    </div>
    <!--END TOPBAR-->
    <div id="wrapper">
        <!--BEGIN SIDEBAR MENU-->
        <nav id="sidebar" role="navigation" data-step="2"
             data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
             data-position="right" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">

                    <div class="clearfix"></div>
                    <li class="active"><a href="dashboard.html"><i class="fa fa-tachometer fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">Dashboard</span></a></li>
                    <li><a href="Layout.html"><i class="fa fa-desktop fa-fw">
                        <div class="icon-bg bg-pink"></div>
                    </i><span class="menu-title">Layouts</span></a>

                    </li>
                    <li><a href="UIElements.html"><i class="fa fa-send-o fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">UI Elements</span></a>

                    </li>
                    <li><a href="Forms.html"><i class="fa fa-edit fa-fw">
                        <div class="icon-bg bg-violet"></div>
                    </i><span class="menu-title">Forms</span></a>

                    </li>
                    <li><a href="Tables.html"><i class="fa fa-th-list fa-fw">
                        <div class="icon-bg bg-blue"></div>
                    </i><span class="menu-title">Tables</span></a>

                    </li>
                    <li><a href="DataGrid.html"><i class="fa fa-database fa-fw">
                        <div class="icon-bg bg-red"></div>
                    </i><span class="menu-title">Data Grids</span></a>

                    </li>
                    <li><a href="Pages.html"><i class="fa fa-file-o fa-fw">
                        <div class="icon-bg bg-yellow"></div>
                    </i><span class="menu-title">Pages</span></a>

                    </li>
                    <li><a href="Extras.html"><i class="fa fa-gift fa-fw">
                        <div class="icon-bg bg-grey"></div>
                    </i><span class="menu-title">Extras</span></a>

                    </li>
                    <li><a href="Dropdown.html"><i class="fa fa-sitemap fa-fw">
                        <div class="icon-bg bg-dark"></div>
                    </i><span class="menu-title">Multi-Level Dropdown</span></a>

                    </li>
                    <li><a href="Email.html"><i class="fa fa-envelope-o">
                        <div class="icon-bg bg-primary"></div>
                    </i><span class="menu-title">Email</span></a>

                    </li>
                    <li><a href="Charts.html"><i class="fa fa-bar-chart-o fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">Charts</span></a>

                    </li>
                    <li><a href="Animation.html"><i class="fa fa-slack fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">Animations</span></a></li>
                </ul>
            </div>
        </nav>
        <!--END SIDEBAR MENU-->
        <!--BEGIN CHAT FORM-->
        <div id="chat-form" class="fixed">
            <div class="chat-inner">
                <h2 class="chat-header">
                    <a href="javascript:;" class="chat-form-close pull-right"><i class="glyphicon glyphicon-remove">
                    </i></a><i class="fa fa-user"></i>&nbsp; Chat &nbsp;<span class="badge badge-info">3</span></h2>

                <div id="group-1" class="chat-group">
                    <strong>Favorites</strong><a href="index.html#"><span class="user-status is-online"></span> <small>
                    Verna Morton</small> <span class="badge badge-info">2</span></a><a href="index.html#"><span
                        class="user-status is-online"></span> <small>Delores Blake</small> <span
                        class="badge badge-info is-hidden">
                    0</span></a><a href="index.html#"><span
                        class="user-status is-busy"></span> <small>Nathaniel Morris</small>
                    <span class="badge badge-info is-hidden">0</span></a><a href="index.html#"><span
                        class="user-status is-idle"></span>
                    <small>Boyd Bridges</small> <span class="badge badge-info is-hidden">0</span></a><a
                        href="index.html#"><span class="user-status is-offline"></span> <small>Meredith Houston</small>
                    <span class="badge badge-info is-hidden">0</span></a></div>

                <div id="group-2" class="chat-group">
                    <strong>Office</strong><a href="index.html#"><span class="user-status is-busy"></span> <small>
                    Ann Scott</small> <span class="badge badge-info is-hidden">0</span></a><a href="index.html#"><span
                        class="user-status is-offline"></span> <small>Sherman Stokes</small> <span
                        class="badge badge-info is-hidden">
                    0</span></a><a href="index.html#"><span class="user-status is-offline"></span> <small>Florence
                Pierce</small> <span class="badge badge-info">1</span></a></div>

                <div id="group-3" class="chat-group">
                    <strong>Friends</strong><a href="index.html#"><span class="user-status is-online"></span> <small>
                    Willard Mckenzie</small> <span class="badge badge-info is-hidden">0</span></a><a
                        href="index.html#"><span class="user-status is-busy"></span> <small>Jenny Frazier</small>
                    <span class="badge badge-info is-hidden">0</span></a><a href="index.html#"><span
                        class="user-status is-offline"></span>
                    <small>Chris Stewart</small> <span class="badge badge-info is-hidden">0</span></a><a
                        href="index.html#"><span class="user-status is-offline"></span> <small>Olivia Green</small>
                    <span class="badge badge-info is-hidden">0</span></a></div>
            </div>

            <div id="chat-box" style="top: 400px">
                <div class="chat-box-header">
                    <a href="index.html#" class="chat-box-close pull-right"><i class="glyphicon glyphicon-remove">
                    </i></a><span class="user-status is-online"></span><span class="display-name">Willard
                Mckenzie</span> <small>Online</small>
                </div>

                <div class="chat-content">
                    <ul class="chat-box-body">
                        <li>
                            <p>
                                <asset:image src="admin/avatar/128.jpg" class="avt"/>
                                <span class="user">John Doe</span><span
                                    class="time">09:33</span></p>

                            <p>
                                Hi Swlabs, we have some comments for you.</p>
                        </li>
                        <li class="odd">
                            <p>
                                <asset:image src="admin/avatar/48.jpg" class="avt"/>
                                <span class="user">Swlabs</span><span
                                    class="time">09:33</span></p>

                            <p>
                                Hi, we're listening you...</p>
                        </li>
                    </ul>
                </div>

                <div class="chat-textarea">
                    <input placeholder="Type your message" class="form-control"/></div>
            </div>
        </div>
        <!--END CHAT FORM-->
        <!--BEGIN PAGE WRAPPER-->
        <div id="page-wrapper">
            <!--BEGIN TITLE & BREADCRUMB PAGE-->
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">
                        Dashboard</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="dashboard.html">Home</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="index.html#">Dashboard</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="active">Dashboard</li>
                </ol>

                <div class="clearfix">
                </div>
            </div>
            <g:layoutBody/>
            <div id="footer">
                <div class="copyright">
                    <a href="http://themifycloud.com">2014 © KAdmin Responsive Multi-Purpose Template</a></div>
            </div>
            <!--END FOOTER-->
        </div>
        <!--END PAGE WRAPPER-->
    </div>
</div>
</body>
</html>