<%@ page import="com.mailToPost.LetterPost" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'letterPost.label', default: 'LetterPost')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-letterPost" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-letterPost" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'letterPost.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="envelopeQuality"
                              title="${message(code: 'letterPost.envelopeQuality.label', default: 'Envelope Quality')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'letterPost.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="paperQuality"
                              title="${message(code: 'letterPost.paperQuality.label', default: 'Paper Quality')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${letterPostInstanceList}" status="i" var="letterPostInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${letterPostInstance.id}">${fieldValue(bean: letterPostInstance, field: "dateCreated")}</g:link></td>

                <td>${fieldValue(bean: letterPostInstance, field: "envelopeQuality")}</td>

                <td><g:formatDate date="${letterPostInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: letterPostInstance, field: "paperQuality")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${letterPostInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
