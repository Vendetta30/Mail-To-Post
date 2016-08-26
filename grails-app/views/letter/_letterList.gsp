<table class="table table-hover-color">
    <thead>
    <tr>
        <th>
            <util:remoteSortableColumn property="letterFrom"
                                       title="${message(code: 'letter.from.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="letterTo" title="${message(code: 'letter.to.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="letterMatter"
                                       title="${message(code: 'letter.matter.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="letterHeader"
                                       title="${message(code: 'letter.header.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="letterFooter"
                                       title="${message(code: 'letter.footer.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="dateCreated"
                                       title="${message(code: 'letter.created.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
        <th>
            <util:remoteSortableColumn property="lastUpdated"
                                       title="${message(code: 'letter.updated.label', default: 'From')}"
                                       update="letterList" action="filter"/>
        </th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${letterInstanceList}" var="letterInstance" status="i">
        <tr>
            <td>${fieldValue(bean: letterInstance, field: "letterFrom")}</td>
            <td>${fieldValue(bean: letterInstance, field: "letterTo")}</td>
            <td>${fieldValue(bean: letterInstance, field: "letterMatter")}</td>
            <td>${fieldValue(bean: letterInstance, field: "letterHeader")}</td>
            <td>${fieldValue(bean: letterInstance, field: "letterFooter")}</td>
            <td>${fieldValue(bean: letterInstance, field: "dateCreated")}</td>
            <td>${fieldValue(bean: letterInstance, field: "lastUpdated")}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<util:remotePaginate total="${letterInstanceTotal}" update="letterList" controller="letter" action="filter"/>