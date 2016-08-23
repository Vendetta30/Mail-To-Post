<%@ page import="com.mailToPost.LetterPost" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'letterPost.label', default: 'LetterPost')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-letterPost" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-letterPost" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list letterPost">

        <g:if test="${letterPostInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="letterPost.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${letterPostInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${letterPostInstance?.envelopeQuality}">
            <li class="fieldcontain">
                <span id="envelopeQuality-label" class="property-label"><g:message
                        code="letterPost.envelopeQuality.label" default="Envelope Quality"/></span>

                <span class="property-value" aria-labelledby="envelopeQuality-label"><g:fieldValue
                        bean="${letterPostInstance}" field="envelopeQuality"/></span>

            </li>
        </g:if>

        <g:if test="${letterPostInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="letterPost.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${letterPostInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${letterPostInstance?.paperQuality}">
            <li class="fieldcontain">
                <span id="paperQuality-label" class="property-label"><g:message code="letterPost.paperQuality.label"
                                                                                default="Paper Quality"/></span>

                <span class="property-value" aria-labelledby="paperQuality-label"><g:fieldValue
                        bean="${letterPostInstance}" field="paperQuality"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: letterPostInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${letterPostInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
