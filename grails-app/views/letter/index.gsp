<%@ page import="com.mailToPost.Letter" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'letter.label', default: 'Letter')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-letter" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-letter" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'letter.dateCreated.label', default: 'Date Created')}"/>

            <th><g:message code="letter.email.label" default="Email"/></th>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'letter.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="letterFooter"
                              title="${message(code: 'letter.letterFooter.label', default: 'Letter Footer')}"/>

            <g:sortableColumn property="letterFrom"
                              title="${message(code: 'letter.letterFrom.label', default: 'Letter From')}"/>

            <g:sortableColumn property="letterHeader"
                              title="${message(code: 'letter.letterHeader.label', default: 'Letter Header')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${letterInstanceList}" status="i" var="letterInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${letterInstance.id}">${fieldValue(bean: letterInstance, field: "dateCreated")}</g:link></td>

                <td>${fieldValue(bean: letterInstance, field: "email")}</td>

                <td><g:formatDate date="${letterInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: letterInstance, field: "letterFooter")}</td>

                <td>${fieldValue(bean: letterInstance, field: "letterFrom")}</td>

                <td>${fieldValue(bean: letterInstance, field: "letterHeader")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${letterInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
