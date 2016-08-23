<%@ page import="com.mailToPost.Email" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-email" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-email" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'email.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="emailBody"
                              title="${message(code: 'email.emailBody.label', default: 'Email Body')}"/>

            <th><g:message code="email.emailType.label" default="Email Type"/></th>

            <g:sortableColumn property="from" title="${message(code: 'email.from.label', default: 'From')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'email.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="subject" title="${message(code: 'email.subject.label', default: 'Subject')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${emailInstanceList}" status="i" var="emailInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${emailInstance.id}">${fieldValue(bean: emailInstance, field: "dateCreated")}</g:link></td>

                <td>${fieldValue(bean: emailInstance, field: "emailBody")}</td>

                <td>${fieldValue(bean: emailInstance, field: "emailType")}</td>

                <td>${fieldValue(bean: emailInstance, field: "from")}</td>

                <td><g:formatDate date="${emailInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: emailInstance, field: "subject")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${emailInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
