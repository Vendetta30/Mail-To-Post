<div class="row setup-content step hiddenStepInfo" id="step-2">
    <div class="col-xs-12">
        <div class="col-md-12 well text-center">
            <h3 class="underline">Enter Personal Details</h3>

            <div class="col-md-2">

            </div>

            <div class="col-md-8">
                <div class="form-group">
                    <label for="title" class="col-sm-3 control-label">Title</label>

                    <div class="col-sm-5">
                        <input type="email" class="form-control" value="${personalDetailCO?.title}" id="title"
                               placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="dateOfBirth" class="col-sm-3 control-label">Date Of Birth</label>

                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="dateOfBirth"
                               value="${personalDetailCO?.dateOfBirth}"
                               placeholder="First Name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="contactNumber" class="col-sm-3 control-label">Contact Number</label>

                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="contactNumber"
                               value="${personalDetailCO?.contactNumber}"
                               placeholder="Last Name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="phoneType" class="col-sm-3 control-label">Phone Type</label>

                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="phoneType"
                               value="${personalDetailCO?.phoneType}" placeholder="Password">
                    </div>
                </div>

                <div class="form-group">
                    <label for="phoneContext" class="col-sm-3 control-label">Phone Context</label>

                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="phoneContext"
                               value="${personalDetailCO?.phoneContext}"
                               placeholder="Re-enter your password">
                    </div>
                </div>

                <div class="form-group">
                    <label for="maritalStatus" class="col-sm-3 control-label">Marital Status</label>

                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="maritalStatus"
                               placeholder="Re-enter your password" value="${personalDetailCO?.maritalStatus}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default"
                                onclick="javascript: resetActive($('#div3'), 60, 'step-3');">Next</button>
                    </div>
                </div>
            </div>

            <div class="col-md-2"></div>
        </div>
    </div>
</div>