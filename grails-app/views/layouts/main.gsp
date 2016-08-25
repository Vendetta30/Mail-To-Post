<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"><!--<![endif]-->
<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><g:layoutTitle/></title>
    <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,100%7CRoboto:400,700,300,100"
          rel="stylesheet" type="text/css">
    <meta name="keywords" content="">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}">
    <!-- Ionicons -->
    <g:layoutHead/>
</head>

<body data-spy="scroll" data-target="#navigation" data-offset="120">
<div class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand scrollTo" href="${createLink(uri: '/')}#intro">IT Worker</a>
        </div>

        <div class="navbar-collapse collapse" id="navigation">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="${createLink(uri: '/')}#intro">Intro</a></li>
                <li><a href="${createLink(uri: '/')}#about">About</a></li>
                <li><a href="${createLink(uri: '/')}#services">Services</a></li>
                <li><a href="${createLink(uri: '/')}#testimonials">Testimonials</a></li>
                <li><a href="${createLink(uri: '/')}#references">My work</a></li>
                <li><a href="${createLink(uri: '/')}#customers">Clients</a></li>
                <li><a href="${createLink(uri: '/')}#contact">Contact</a></li>
                <li><a href="javascript:void(0)" onclick="showLoginForm()">Login</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="all">
    <g:layoutBody/>
    <g:render template="/loginForm"/>
    <div class="section" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <p class="social">
                        <a href="${createLink(uri: '/')}#" class="external facebook" data-animate-hover="shake"
                           data-animate="fadeInUp">
                            <i class="fa fa-facebook"></i></a>
                        <a href="${createLink(uri: '/')}#" class="external instagram"
                           data-animate-hover="shake" data-animate="fadeInUp">
                            <i class="fa fa-instagram"></i></a>
                        <a href="${createLink(uri: '/')}#" class="external gplus" data-animate-hover="shake"
                           data-animate="fadeInUp">
                            <i class="fa fa-google-plus"></i></a>
                        <a href="${createLink(uri: '/')}#" class="email" data-animate-hover="shake"
                           data-animate="fadeInUp">
                            <i class="fa fa-envelope"></i></a>
                    </p>
                </div>

                <div class="col-sm-6"><p>&copy; 2015 Your name goes here. All rights reserved.</p></div>

                <div class="col-sm-12"><p class="template-bootstrapious">Template by <a
                        href="http://www.bootstrapious.com">Bootstrap Templates</a> with support from <a
                        href="http://kakusei.cz">Designový nábytek</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function showLoginForm() {
        $("#login-overlay").modal("toggle");
    }
</script>
</body>
</html>