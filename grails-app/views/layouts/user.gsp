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
                            <a href="${createLink(controller: 'notification', action: 'list')}">
                                <i class="ti-bell"></i>

                                <p class="notification">5</p>

                                <p>Notifications</p>
                                <b class="caret"></b>
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'adminSetting', action: 'index')}">
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

</body>
</html>