<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
    <style>
    .home-ad {
        position: fixed;
        right: 20px;
        top: 200px;
        border: 1px solid #f2f2f2;
        background: rgb(255, 255, 255);
        border-radius: 0;
        z-index: 9999;
    }

    .home-ad .close {
        float: right;
        color: #FFF;
        background: #6B6B6B;
        width: 20px;
        height: 20px;
        line-height: 16px;
        display: inline-block;
        font-size: 12px;
        font-weight: normal;
        text-align: center;
        text-decoration: none;
        text-shadow: none;
        margin-bottom: 5px;
    }

    .home-ad div#carbonads {
        padding: 10px;
        max-width: 150px;
    }

    .home-ad div#carbonads a.carbon-img {
        display: inline-block;
        float: left;
    }

    .home-ad div#carbonads .carbon-wrap:after {
        content: "";
        display: block;
        clear: both;
    }

    .home-ad div#carbonads .carbon-text {
        font-size: 12px;
        text-align: left;
        color: #333;
        display: block;
        padding-top: 10px;
        padding-bottom: 10px;
        clear: both;
    }

    .home-ad div#carbonads .carbon-text:hover {
        text-decoration: none;
    }

    .home-ad div#carbonads .carbon-poweredby {
        font-size: 75%;
        color: #bebebe;
    }
    </style>
</head>

<body>
<div class="pre-loader">
    <div class="load-con">
        <asset:image src="eco/logo.png" alt="" class="animated fadeInDown"/>
        <div class="spinner">
            <div class="bounce1"></div>

            <div class="bounce2"></div>

            <div class="bounce3"></div>
        </div>
    </div>
</div>

<header>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="fa fa-bars fa-lg"></span>
                </button>
                <a class="navbar-brand" href="${createLink(uri: '/')}">
                    <asset:image src="eco/logo.png" alt="" class="logo"/>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${createLink(uri: '/')}#about">about</a>
                    </li>
                    <li><a href="${createLink(uri: '/')}#features">features</a>
                    </li>
                    <li><a href="${createLink(uri: '/')}#reviews">reviews</a>
                    </li>
                    <li><a href="${createLink(uri: '/')}#screens">screens</a>
                    </li>
                    <li><a href="${createLink(uri: '/')}#demo">demo</a>
                    </li>
                    <li><a class="getApp" href="${createLink(uri: '/')}#getApp">get app</a>
                    </li>
                    <li><a href="${createLink(uri: '/')}#support">support</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-->
    </nav>
</header>
<g:layoutBody/>
<footer>
    <div class="container">
        <a href="${createLink(uri: '/')}#" class="scrollpoint sp-effect3">
            <asset:image src="eco/logo.png" alt="" class="logo"/>
        </a>

        <div class="social">
            <a href="${createLink(uri: '/')}#" class="scrollpoint sp-effect3"><i class="fa fa-twitter fa-lg"></i></a>
            <a href="${createLink(uri: '/')}#" class="scrollpoint sp-effect3"><i class="fa fa-google-plus fa-lg"></i></a>
            <a href="${createLink(uri: '/')}#" class="scrollpoint sp-effect3"><i class="fa fa-facebook fa-lg"></i></a>
        </div>

        <div class="rights">
            <p>Copyright &copy; 2014</p>

            <p>Template by <a href="http://www.scoopthemes.com" target="_blank">ScoopThemes</a></p>
        </div>
    </div>
</footer>
</body>
</html>
