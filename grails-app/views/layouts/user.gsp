<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <g:layoutHead/>
    <title><g:layoutTitle/></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'themify-icons.css')}">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
                            Creative Tim
                        </li>
                        <li>
                            Blog
                        </li>
                        <li>
                            Licenses
                        </li>
                    </ul>
                </nav>

                <div class="copyright pull-right">
                &copy; <script>document.write(new Date().getFullYear())</script>, made with <i
                        class="fa fa-heart heart"></i> by Creative Tim
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
                    Download for Free
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
</html>