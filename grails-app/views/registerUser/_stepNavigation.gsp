<div class="row">
    <div class="row step">
        <div class="col-md-1"></div>

        <div id="div1" class="col-md-2 activestep" onclick="javascript: resetActive($('#div1'), 20, 'step-1');">
            <span class="fa fa-cloud-download"></span>

            <p>Download Application</p>
        </div>

        <div id="div2" class="col-md-2" onclick="javascript: resetActive($('#div2'), 40, 'step-2');">
            <span class="fa fa-pencil"></span>

            <p>Fill out</p>
        </div>

        <div id="div3" class="col-md-2" onclick="javascript: resetActive($('#div3'), 60, 'step-3');">
            <span class="fa fa-refresh"></span>

            <p>Check</p>
        </div>

        <div id="div4" class="col-md-2" onclick="javascript: resetActive($('#div4'), 80, 'step-4');">
            <span class="fa fa-dollar"></span>

            <p>Pay Fee</p>
        </div>

        <div id="last" class="col-md-2" onclick="javascript: resetActive($('#last'), 100, 'step-5');">
            <span class="fa fa-star"></span>

            <p>Send Feedback</p>
        </div>
    </div>
</div>