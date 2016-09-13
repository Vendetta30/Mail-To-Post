<div class="paginateButtons">
    <g:javascript plugin="remote-pagination" library="remoteNonStopPageScroll"/>
    <util:remoteNonStopPageScroll action='filter' total="${emailInstanceTotal}" update="home" heightOffset="10"
                                  loadingHtml="loadingGifDivId"/>
</div>
<g:each in="${emailInstanceList}" status="i" var="emailInstance">
    <div class="list-group mail-box">
        <a href="#" class="list-group-item">
            <input type="checkbox"/>
            <span class="fa fa-star-o mrm mlm"></span>

            <span style="min-width: 120px; display: inline-block;" class="name">
                <mtp:showTextProperly max="10" text="${emailInstance?.senderName}"/>
            </span>

            <span>
                <mtp:showTextProperly max="20" text="${emailInstance?.senderEmail}"/>
            </span>
            &nbsp;&nbsp; - &nbsp;&nbsp;

            <span style="font-size: 11px;" class="text-muted">
                <mtp:showTextProperly max="70" text="${emailInstance?.messageSubject}"/>
            </span>
            <span class="time-badge">
                ${fieldValue(bean: emailInstance, field: "messageSentDate")}
            </span>
            <span class="pull-right mrl">
                <span class="fa fa-paperclip"></span>
            </span>
        </a>
    </div>
</g:each>

