<html>
<head>
    <title>abcd</title>
    <link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>
    <script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>
    <style>
    body {
        padding-top: 90px;
    }

    .panel-login {

        border-color: #ccc;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
    }


    .panel-login > .panel-heading {
        color: #00415d;
        background-color: #fff;
        border-color: #fff;
        text-align: center;
    }

    .panel-login > .panel-heading a {
        text-decoration: none;
        color: #666;
        font-weight: bold;
        font-size: 15px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-login > .panel-heading a.active {
        color: #029f5b;
        font-size: 18px;
    }


    .panel-login > .panel-heading hr {
        margin-top: 10px;
        margin-bottom: 0px;
        clear: both;
        border: 0;
        height: 1px;
        background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
    }

    .panel-login input[type="text"], .panel-login input[type="email"], .panel-login input[type="password"] {
        height: 45px;
        border: 1px solid #ddd;
        font-size: 16px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-login input:hover,
    .panel-login input:focus {
        outline: none;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
        border-color: #ccc;
    }
    .btn-login {
        background-color: #029f5b;
        outline: none;
        color: #fff;
        font-size: 14px;
        height: auto;
        font-weight: normal;
        padding: 14px 0;
        text-transform: uppercase;
        border-color: #029f5b;
    }
    .btn-login:hover,
    .btn-login:focus {
        color: #fff;
        background-color: #029f5b;
        border-color: #029f5b;
    }



    .forgot-password {
        text-decoration: underline;
        color: #888;
    }

    .forgot-password:hover,
    .forgot-password:focus {
        text-decoration: underline;
        color: #666;
    }

    .panel-register {

        border-color: #ccc;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
    }


    .panel-register > .panel-heading {
        color: #00415d;
        background-color: #fff;
        border-color: #fff;
        text-align: center;
    }

    .panel-register > .panel-heading a {
        text-decoration: none;
        color: #666;
        font-weight: bold;
        font-size: 15px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-register > .panel-heading a.active {
        color: orange;
        font-size: 18px;
    }


    .panel-register > .panel-heading hr {
        margin-top: 10px;
        margin-bottom: 0px;
        clear: both;
        border: 0;
        height: 1px;
        background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
    }

    .panel-register input[type="text"], .panel-register input[type="email"], .panel-register input[type="password"] {
        height: 45px;
        border: 1px solid #ddd;
        font-size: 16px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-register input:hover,
    .panel-register input:focus {
        outline: none;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
        border-color: #ccc;
    }
    .btn-register {
        background-color: orange;
        outline: none;
        color: #fff;
        font-size: 14px;
        height: auto;
        font-weight: normal;
        padding: 14px 0;
        text-transform: uppercase;
        border-color: orange;
    }
    .btn-register:hover,
    .btn-register:focus {
        color: #fff;
        background-color: #53A3CD;
        border-color: #53A3CD;
    }

    </style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-lg-5 col-sm-5 col-md-5 col-xs-5">

            <div class="panel panel-login">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6">
                            <a href="#" class="active" id="login-form-link">Login</a>
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <g:if test='${flash.successRegister}'>
                                <div class='login_message'>${flash.successRegister}</div>
                            </g:if>
                            <g:if test='${flash.message}'>
                                <div class='login_message'>${flash.message}</div>
                            </g:if>
                            <form id="login-form" action='${createLink(uri: '/j_spring_security_check')}' method="post"
                                  role="form" style="display: block;">
                                <div class="form-group">
                                    <label for='username'><g:message
                                            code="springSecurity.login.username.label"/></label>
                                    <input type="text" name="j_username" id="username" tabindex="1" class="form-control"
                                           placeholder="Username" value="">
                                </div>

                                <div class="form-group">
                                    <label for='password'><g:message
                                            code="springSecurity.login.password.label"/>:</label>
                                    <input type="password" name="j_password" id='password' tabindex="2"
                                           class="form-control" placeholder="Password">
                                </div>

                                <div class="form-group text-center">
                                    <input type="checkbox" tabindex="3" class="" name="${rememberMeParameter}"
                                           id="remember_me">
                                    <label for='remember_me'><g:message
                                            code="springSecurity.login.remember.me.label"/></label>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="login-submit" id="submit" tabindex="4"
                                                   class="form-control btn btn-login"
                                                   value='${message(code: "springSecurity.login.button")}'>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <a href="http://phpoll.com/recover" tabindex="5"
                                                   class="forgot-password">Forgot Password?</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-lg-5 col-sm-5 col-md-5 col-xs-5 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1">
            <div class="row">
                <div class="panel panel-register">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-12 col-md-12 col-lg-12 col-xm-12">
                                <a href="#" class="active" id="register-form-link">Register</a>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
                                <form id="register-form"
                                      action="${createLink(controller: "registerUser", action: "register")}"
                                      method="post"
                                      role="form" >
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input type="text" name="username" id="username" tabindex="11"
                                               class="form-control"
                                               placeholder="Username" value="">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   field="username"
                                                                                                   as="list"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <label for="email">E-Mail</label>
                                        <input type="email" name="email" id="email" tabindex="12" class="form-control"
                                               placeholder="Email Address" value="">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   as="list"
                                                                                                   field="email"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" name="password" id="password" tabindex="13"
                                               class="form-control" placeholder="Password">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   as="list"
                                                                                                   field="password"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <label for="confirmPassword">confirmPassword</label>
                                        <input type="password" name="confirmPassword" id="confirmPassword" tabindex="14"
                                               class="form-control" placeholder="Confirm Password">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   as="list"
                                                                                                   field="confirmPassword"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <label for="firstName">First Name</label>
                                        <input type="text" name="firstName" id="firstName" tabindex="15"
                                               class="form-control"
                                               placeholder="firstName">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   field="firstName"
                                                                                                   as="list"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" name="lastName" id="lastName" tabindex="16"
                                               class="form-control"
                                               placeholder="lastName">
                                        <g:hasErrors bean="${error}"></g:hasErrors><g:renderErrors bean="${error}"
                                                                                                   field="lastName"
                                                                                                   as="list"></g:renderErrors>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="register-submit" id="register-submit"
                                                       tabindex="17" class="form-control btn btn-register"
                                                       value="Register Now">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>