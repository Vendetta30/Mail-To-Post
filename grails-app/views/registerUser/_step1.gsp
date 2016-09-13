<div class="row setup-content step activeStepInfo" id="step-1">
    <div class="col-xs-12">
        <div class="col-md-12 well text-center">
            <h3 class="underline">Enter Basic Details</h3>

            <div class="col-md-2">

            </div>

            <div class="col-md-8">
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label"><g:message
                            code="springSecurity.login.username.label"/></label>

                    <div class="col-sm-6">
                        <input type="email" class="form-control" value="${userCO?.username}" id="username"
                               placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><g:message code="user.firstname"/></label>

                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="firstName" value="${userCO?.firstName}"
                               placeholder="First Name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label"><g:message code="user.lastname"/></label>

                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="lastName" value="${userCO?.lastName}"
                               placeholder="Last Name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label"><g:message
                            code="springSecurity.login.password.label"/></label>

                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password" placeholder="Password">
                    </div>
                </div>

                <div class="form-group">
                    <label for="confirmPassword" class="col-sm-3 control-label"><g:message
                            code="password.confirm"/></label>

                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="confirmPassword"
                               placeholder="Re-enter your password">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default"
                                onclick="javascript: resetActive($('#div2'), 40, 'step-2');">Next</button>
                    </div>
                </div>
            </div>

            <div class="col-md-2"></div>
        </div>
    </div>
</div>