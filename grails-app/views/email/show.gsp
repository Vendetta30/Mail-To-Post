<%@ page import="com.mailToPost.Email" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-email" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-email" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list email">

        <g:if test="${emailInstance?.attachments}">
            <li class="fieldcontain">
                <span id="attachments-label" class="property-label"><g:message code="email.attachments.label"
                                                                               default="Attachments"/></span>

                <g:each in="${emailInstance.attachments}" var="a">
                    <span class="property-value" aria-labelledby="attachments-label"><g:link controller="attachments"
                                                                                             action="show"
                                                                                             id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${emailInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="email.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${emailInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.emailBody}">
            <li class="fieldcontain">
                <span id="emailBody-label" class="property-label"><g:message code="email.emailBody.label"
                                                                             default="Email Body"/></span>

                <span class="property-value" aria-labelledby="emailBody-label"><g:fieldValue bean="${emailInstance}"
                                                                                             field="emailBody"/></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.emailType}">
            <li class="fieldcontain">
                <span id="emailType-label" class="property-label"><g:message code="email.emailType.label"
                                                                             default="Email Type"/></span>

                <span class="property-value" aria-labelledby="emailType-label"><g:link controller="emailType"
                                                                                       action="show"
                                                                                       id="${emailInstance?.emailType?.id}">${emailInstance?.emailType?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.from}">
            <li class="fieldcontain">
                <span id="from-label" class="property-label"><g:message code="email.from.label" default="From"/></span>

                <span class="property-value" aria-labelledby="from-label"><g:fieldValue bean="${emailInstance}"
                                                                                        field="from"/></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="email.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${emailInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.letters}">
            <li class="fieldcontain">
                <span id="letters-label" class="property-label"><g:message code="email.letters.label"
                                                                           default="Letters"/></span>

                <g:each in="${emailInstance.letters}" var="l">
                    <span class="property-value" aria-labelledby="letters-label"><g:link controller="letter"
                                                                                         action="show"
                                                                                         id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${emailInstance?.subject}">
            <li class="fieldcontain">
                <span id="subject-label" class="property-label"><g:message code="email.subject.label"
                                                                           default="Subject"/></span>

                <span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${emailInstance}"
                                                                                           field="subject"/></span>

            </li>
        </g:if>

        <g:if test="${emailInstance?.to}">
            <li class="fieldcontain">
                <span id="to-label" class="property-label"><g:message code="email.to.label" default="To"/></span>

                <span class="property-value" aria-labelledby="to-label"><g:fieldValue bean="${emailInstance}"
                                                                                      field="to"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: emailInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${emailInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
