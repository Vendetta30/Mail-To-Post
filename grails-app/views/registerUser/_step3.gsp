<div class="row setup-content step hiddenStepInfo" id="step-3">
    <div class="col-xs-12">
        <div class="col-md-12 well text-center">
            <h3 class="underline">Enter Address Details</h3>

            <div class="col-md-2">

            </div>

            <div class="col-md-8">
                <div class="form-group">
                    <label for="address1" class="col-sm-2 control-label">Address Line1</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${addressCO?.addressLine1}" id="address1"
                               placeholder="Address Line1">
                    </div>
                </div>

                <div class="form-group">
                    <label for="address2" class="col-sm-2 control-label">Address Line2</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="address2" value="${addressCO?.addressLine2}"
                               placeholder="Address Line2">
                    </div>
                </div>

                <div class="form-group">
                    <label for="street" class="col-sm-2 control-label">Street</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="street" value="${addressCO?.street}"
                               placeholder="Street Name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="city" class="col-sm-2 control-label">City</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${addressCO?.city}" id="city"
                               placeholder="City">
                    </div>
                </div>

                <div class="form-group">
                    <label for="state" class="col-sm-2 control-label">State</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="state"
                               placeholder="State">
                    </div>
                </div>

                <div class="form-group">
                    <label for="pincode" class="col-sm-2 control-label">Pincode</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="pincode"
                               placeholder="Pincode">
                    </div>
                </div>

                <div class="form-group">
                    <label for="addressType" class="col-sm-2 control-label">Address Type</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="addressType"
                               placeholder="Address Type">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default"
                                onclick="javascript: resetActive($('#div4'), 80, 'step-4');">Next</button>
                    </div>
                </div>
            </div>

            <div class="col-md-2"></div>
        </div>
    </div>
</div>
