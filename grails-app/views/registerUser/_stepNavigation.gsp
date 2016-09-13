<div class="row">
    <div class="row step">
        <div class="col-md-1"></div>

        <div id="div1" class="col-md-2 activestep" onclick="javascript: resetActive($('#div1'), 20, 'step-1');">
            <span class="fa fa-user"></span>

            <p><g:message code="basic.setup"/></p>
        </div>

        <div id="div2" class="col-md-2" onclick="javascript: resetActive($('#div2'), 40, 'step-2');">
            <span class="fa fa-pencil"></span>

            <p><g:message code="personal.detail"/></p>
        </div>

        <div id="div3" class="col-md-2" onclick="javascript: resetActive($('#div3'), 60, 'step-3');">
            <span class="fa fa-location-arrow"></span>

            <p><g:message code="address.detail"/></p>
        </div>

        <div id="div4" class="col-md-2" onclick="javascript: resetActive($('#div4'), 80, 'step-4');">
            <span class="fa  fa-desktop"></span>

            <p><g:message code="company.detail"/></p>
        </div>

        <div id="last" class="col-md-2" onclick="javascript: resetActive($('#last'), 100, 'step-5');">
            <span class="fa fa-home"></span>

            <p><g:message code="welcome"/></p>
        </div>
    </div>
</div>