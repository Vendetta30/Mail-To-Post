<div class="modal fade modal-info" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Login</h4>
                    </div>

                    <div class="col-md-6" style="text-align: right">
                        Register
                    </div>
                </div>
            </div>

            <div class="modal-body">
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
                                    <a href="#" tabindex="5"
                                       class="forgot-password" style="color: #008d4c">Forgot Password?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>