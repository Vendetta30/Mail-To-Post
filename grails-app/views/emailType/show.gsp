<%@ page import="com.mailToPost.EmailType" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'emailType.label', default: 'EmailType')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-emailType" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-emailType" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list emailType">

        <g:if test="${emailTypeInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="emailType.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${emailTypeInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${emailTypeInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="emailType.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:link controller="email" action="show"
                                                                                   id="${emailTypeInstance?.email?.id}">${emailTypeInstance?.email?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${emailTypeInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="emailType.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${emailTypeInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${emailTypeInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="emailType.name.label"
                                                                        default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${emailTypeInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${emailTypeInstance?.priority}">
            <li class="fieldcontain">
                <span id="priority-label" class="property-label"><g:message code="emailType.priority.label"
                                                                            default="Priority"/></span>

                <span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${emailTypeInstance}"
                                                                                            field="priority"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: emailTypeInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${emailTypeInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
