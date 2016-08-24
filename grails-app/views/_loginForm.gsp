<div class="modal fade" id="login-overlay" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <span id="wrong_span_id"></span>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                            class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Login</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="well">
                                <form role="form" action="${request.contextPath}/j_spring_security_check" method='POST'
                                      id='ajaxLoginForm' name='ajaxLoginForm' novalidate="novalidate">
                                    <div class="form-group">
                                        <label for='username' class="control-label"><g:message
                                                code="springSecurity.login.username.label"/></label>

                                        <input type="text" name="j_username" id="j_username" tabindex="1"
                                               class="form-control" value="" required=""
                                               title="Please enter you username" placeholder="example@gmail.com">

                                        <span class="help-block"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for='password'><g:message
                                                code="springSecurity.login.password.label"/>:</label>
                                        <input type="password" name="j_password" id='j_password' tabindex="2"
                                               class="form-control" placeholder="Password" required=""
                                               title="Please enter your password">
                                        <span class="help-block"></span>
                                    </div>

                                    <div id="loginErrorMsg"
                                         class="alert alert-error hide">Wrong username og password</div>


                                    <div class="checkbox">
                                        <input type="checkbox" tabindex="3" class="" name="${rememberMeParameter}"
                                               id="remember_me">
                                        <label for='remember_me'><g:message
                                                code="springSecurity.login.remember.me.label"/></label>

                                        <p class="help-block">(if this is a private computer)</p>
                                    </div>
                                    <a href="javascript:void(0)" class="btn btn-success btn-block"
                                       onclick="loginByAjax()">Login</a>
                                    <a href="/forgot/" class="btn btn-default btn-block">Help to login</a>
                                </form>
                            </div>
                        </div>

                        <div class="col-xs-6">
                            <p class="lead">Register now for <span class="text-success">FREE</span></p>
                            <ul class="list-unstyled" style="line-height: 2">
                                <li><span class="fa fa-check text-success"></span> See all your orders</li>
                                <li><span class="fa fa-check text-success"></span> Fast re-order</li>
                                <li><span class="fa fa-check text-success"></span> Save your favorites</li>
                                <li><span class="fa fa-check text-success"></span> Fast checkout</li>
                                <li><span
                                        class="fa fa-check text-success"></span> Get a gift <small>(only new customers)</small>
                                </li>
                                <li><a href="/read-more/"><u>Read more</u></a></li>
                            </ul>

                            <p><a href="/new-customer/" class="btn btn-info btn-block">Yes please, register now!</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function loginByAjax() {
        var url = '${request.contextPath}/j_spring_security_check';
        var data = $("#ajaxLoginForm").serialize();
        $.ajax({
            url: url,
            datatype: 'json',
            type: 'POST',
            data: data,
            success: function (response) {
                console.log(response);
                if (response.success) {
                    window.location.href = response.redirect || "${grailsApplication.config.grails.serverURL}";
                }
                else if (response.error) {
                    emptyForm();
                    $("#wrong_span_id").css("color", "red").html(response.error);
                }
            },
            error: function (data) {
                emptyForm();
            }
        });
    }
    function emptyForm() {
        $('#j_password').val('');
        $('#remember_me').val('');
    }
</script>