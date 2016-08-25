<div class="btn-group">
    <button type="button" class="btn btn-default"><input type="checkbox"
                                                         style="margin: 0; vertical-align: middle;"
                                                         class="checkall"/></button>
    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span
            class="caret"></span><span class="sr-only">Toggle Dropdown</span></button>
    <ul role="menu" class="dropdown-menu">
        <li><a href="Email.html#">All</a></li>
        <li><a href="Email.html#">None</a></li>
        <li><a href="Email.html#">Read</a></li>
        <li><a href="Email.html#">Unread</a></li>
        <li><a href="Email.html#">Starred</a></li>
        <li><a href="Email.html#">Unstarred</a></li>
    </ul>
</div>
<button type="button" data-toggle="tooltip" title="Refresh"
        class="btn btn-default mls mrs" onclick="refreshEmail()"><span
        class="fa fa-refresh"></span></button>

<div class="btn-group">
    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">More
    &nbsp;<span class="caret"></span></button>
    <ul role="menu" class="dropdown-menu">
        <li><a href="Email.html#">Mark all as read</a></li>
        <li class="divider"></li>
        <li class="text-center pbm">
            <small class="text-muted">Select messages to see more actions</small>
        </li>
    </ul>
</div>

<div class="pull-right">
    <span class="text-muted"><b>1</b>&nbsp; – &nbsp;<b>50</b>&nbsp; of &nbsp;<b>277</b></span>

    <div class="btn-group mlm">
        <button type="button" class="btn btn-default"><span class="fa fa-chevron-left"></span>
        </button>
        <button type="button" class="btn btn-default"><span class="fa fa-chevron-right"></span>
        </button>
    </div>
    <util:remotePaginate total="${emailInstanceTotal}" update="home" controller="email" action="filter"/>
</div>

<div class="mtl mbl"></div>

<div class="tab-content">
    <div class="tab-pane fade in active">
        <div class="paginateButtons">

        </div>
        <g:each in="${emailInstanceList}" status="i" var="emailInstance">
            <div class="list-group mail-box">
                <a href="#" class="list-group-item">
                    <input type="checkbox"/>
                    <span class="fa fa-star-o mrm mlm"></span>
                    <span style="min-width: 120px; display: inline-block;" class="name">
                        ${fieldValue(bean: emailInstance, field: "senderName")}
                    </span>
                    <span>${fieldValue(bean: emailInstance, field: "senderEmail")}</span>&nbsp; - &nbsp;
                    <span style="font-size: 11px;" class="text-muted">
                        ${fieldValue(bean: emailInstance, field: "messageSubject")}
                    </span>
                    <span class="time-badge">${fieldValue(bean: emailInstance, field: "messageSentDate")}</span>
                    <span class="pull-right mrl">
                        <span class="fa fa-paperclip"></span>
                    </span>
                </a>
            </div>
        </g:each>
    </div>
</div>

