<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><g:layoutTitle/></title>
    <link href="${resource(dir: 'css/public', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'font-awesome.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/public', file: 'owl.carousel.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/public', file: 'owl.theme.default.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/public', file: 'animate.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/public', file: 'style.css')}" rel="stylesheet">
    <g:layoutHead/>
</head>

<body id="page-top">
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top"><img
                    src="${resource(dir: 'images/public', file: 'logo.png')}" alt="Sanza theme logo"></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="#page-top">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="#about">About</a>
                </li>
                <li>
                    <a class="page-scroll" href="#partners">Partners</a>
                </li>
                <li>
                    <a class="page-scroll" href="#team">Team</a>
                </li>
                <li>
                    <a class="page-scroll" href="#contact">Contact</a>
                </li>
                <li>
                    <a class="page-scroll" href="javascript:void(0)" onclick="showLoginForm()">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<g:layoutBody/>
<g:render template="/loginForm"/>

<p id="back-top">
    <a href="#top"><i class="fa fa-angle-up"></i></a>
</p>
<footer>
    <div class="container text-center">
        <p>Theme made by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
    </div>
</footer>
<script>
    function showLoginForm() {
        $("#login-overlay").modal("toggle");
    }
</script>
<script src="${resource(dir: 'js/public', file: 'jQuery-2.1.4.min.js')}"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="${resource(dir: 'js/public', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js/public', file: 'owl.carousel.min.js')}"></script>
<script src="${resource(dir: 'js/public', file: 'cbpAnimatedHeader.js')}"></script>
<script src="${resource(dir: 'js/public', file: 'jquery.appear.js')}"></script>
<script src="${resource(dir: 'js/public', file: 'SmoothScroll.min.js')}"></script>
<script src="${resource(dir: 'js/public', file: 'theme-scripts.js')}"></script>
</body>
</html>