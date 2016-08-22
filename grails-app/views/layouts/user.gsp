<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <g:layoutHead/>
    <title><g:layoutTitle/></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <!-- Canonical SEO -->
    <link rel="canonical" href="http://www.creative-tim.com/product/paper-dashboard"/>

    <!--  Social tags      -->
    <meta name="keywords"
          content="bootstrap dashboard, creative tim, html dashboard, html css dashboard, web dashboard, paper design, bootstrap dashboard, bootstrap, css3 dashboard, bootstrap admin, paper bootstrap dashboard, frontend, responsive bootstrap dashboard">

    <meta name="description" content="Paper Dashboard is a beautiful Bootstrap Admin Panel for your next project.">

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Paper Dashboard by Creative Tim">
    <meta itemprop="description" content="Paper Dashboard is a beautiful Bootstrap Admin Panel for your next project.">
    <meta itemprop="image"
          content="http://s3.amazonaws.com/creativetim_bucket/products/43/original/opt_pd_thumbnail.jpg">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Paper Dashboard PRO by Creative Tim">
    <meta name="twitter:description"
          content="Paper Dashboard is a beautiful Bootstrap Admin Panel for your next project.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image"
          content="http://s3.amazonaws.com/creativetim_bucket/products/43/original/opt_pd_thumbnail.jpg">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">

    <!-- Open Graph data -->
    <meta property="og:title" content="Paper Dashboard by Creative Tim"/>
    <meta property="og:type" content="article"/>
    <meta property="og:url" content="http://demos.creative-tim.com/paper-dashboard/dashboard.html"/>
    <meta property="og:image"
          content="http://s3.amazonaws.com/creativetim_bucket/products/43/original/opt_pd_thumbnail.jpg"/>
    <meta property="og:description"
          content="Paper Dashboard is a beautiful Bootstrap Admin Panel for your next project."/>
    <meta property="og:site_name" content="Creative Tim"/>

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <asset:stylesheet src="user-application.css"/>
    <asset:javascript src="user-application.js"/>
</head>

<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Creative Tim
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="dashboard.html">
                        <i class="ti-panel"></i>

                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="ti-user"></i>

                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="ti-view-list-alt"></i>

                        <p>Table List</p>
                    </a>
                </li>
                <li>
                    <a href="typography.html">
                        <i class="ti-text"></i>

                        <p>Typography</p>
                    </a>
                </li>
                <li>
                    <a href="icons.html">
                        <i class="ti-pencil-alt2"></i>

                        <p>Icons</p>
                    </a>
                </li>
                <li>
                    <a href="maps.html">
                        <i class="ti-map"></i>

                        <p>Maps</p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="ti-bell"></i>

                        <p>Notifications</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="dashboard.html#">Dashboard</a>
                </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="dashboard.html#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>

                                <p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="dashboard.html#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>

                                <p class="notification">5</p>

                                <p>Notifications</p>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="dashboard.html#">Notification 1</a></li>
                                <li><a href="dashboard.html#">Notification 2</a></li>
                                <li><a href="dashboard.html#">Notification 3</a></li>
                                <li><a href="dashboard.html#">Notification 4</a></li>
                                <li><a href="dashboard.html#">Another notification</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="dashboard.html#">
                                <i class="ti-settings"></i>

                                <p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


<g:layoutBody/>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="http://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="http://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>

                <div class="copyright pull-right">
                &copy; <script>document.write(new Date().getFullYear())</script>, made with <i
                        class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>
                </div>
            </div>
        </footer>

    </div>
</div>

<div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="dashboard.html#" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"></i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title">Sidebar Background</li>
            <li class="adjustments-line text-center">
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <span class="badge filter badge-white active" data-color="white"></span>
                    <span class="badge filter badge-black" data-color="black"></span>
                </a>
            </li>

            <li class="header-title">Sidebar Active Color</li>
            <li class="adjustments-line text-center">
                <a href="javascript:void(0)" class="switch-trigger active-color">
                    <span class="badge filter badge-primary" data-color="primary"></span>
                    <span class="badge filter badge-info" data-color="info"></span>
                    <span class="badge filter badge-success" data-color="success"></span>
                    <span class="badge filter badge-warning" data-color="warning"></span>
                    <span class="badge filter badge-danger active" data-color="danger"></span>
                </a>
            </li>

            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/paper-dashboard" target="_blank"
                       class="btn btn-danger btn-block btn-fill">Download for Free</a>
                </div>
            </li>

            <li class="header-title">Thank you for sharing!</li>

            <li class="button-container">
                <button id="twitter" class="btn btn-social btn-twitter btn-round"><i class="fa fa-twitter"></i></button>
                <button id="facebook" class="btn btn-social btn-facebook btn-round"><i
                        class="fa fa-facebook-square"></i></button>
            </li>

        </ul>
    </div>
</div>

</body>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'ti-gift',
            message: "Welcome to <b>Paper Dashboard</b> - a beautiful Bootstrap Admin Panel for your next project."

        }, {
            type: 'success',
            timer: 4000
        });

    });
</script>

</html>