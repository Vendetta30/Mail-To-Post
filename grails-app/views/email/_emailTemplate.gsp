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
<div class="paginateButtons">
    <util:remotePaginate total="${emailInstanceTotal}" update="home" controller="email" action="filter"/>
</div>7