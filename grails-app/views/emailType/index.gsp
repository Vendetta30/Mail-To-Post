<%@ page import="com.mailToPost.EmailType" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'emailType.label', default: 'EmailType')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-emailType" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-emailType" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'emailType.dateCreated.label', default: 'Date Created')}"/>

            <th><g:message code="emailType.email.label" default="Email"/></th>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'emailType.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="name" title="${message(code: 'emailType.name.label', default: 'Name')}"/>

            <g:sortableColumn property="priority"
                              title="${message(code: 'emailType.priority.label', default: 'Priority')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${emailTypeInstanceList}" status="i" var="emailTypeInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${emailTypeInstance.id}">${fieldValue(bean: emailTypeInstance, field: "dateCreated")}</g:link></td>

                <td>${fieldValue(bean: emailTypeInstance, field: "email")}</td>

                <td><g:formatDate date="${emailTypeInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: emailTypeInstance, field: "name")}</td>

                <td>${fieldValue(bean: emailTypeInstance, field: "priority")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${emailTypeInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
