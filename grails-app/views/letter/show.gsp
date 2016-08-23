<%@ page import="com.mailToPost.Letter" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'letter.label', default: 'Letter')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-letter" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-letter" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list letter">

        <g:if test="${letterInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="letter.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${letterInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="letter.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:link controller="email" action="show"
                                                                                   id="${letterInstance?.email?.id}">${letterInstance?.email?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="letter.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${letterInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterFooter}">
            <li class="fieldcontain">
                <span id="letterFooter-label" class="property-label"><g:message code="letter.letterFooter.label"
                                                                                default="Letter Footer"/></span>

                <span class="property-value" aria-labelledby="letterFooter-label"><g:fieldValue bean="${letterInstance}"
                                                                                                field="letterFooter"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterFrom}">
            <li class="fieldcontain">
                <span id="letterFrom-label" class="property-label"><g:message code="letter.letterFrom.label"
                                                                              default="Letter From"/></span>

                <span class="property-value" aria-labelledby="letterFrom-label"><g:fieldValue bean="${letterInstance}"
                                                                                              field="letterFrom"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterHeader}">
            <li class="fieldcontain">
                <span id="letterHeader-label" class="property-label"><g:message code="letter.letterHeader.label"
                                                                                default="Letter Header"/></span>

                <span class="property-value" aria-labelledby="letterHeader-label"><g:fieldValue bean="${letterInstance}"
                                                                                                field="letterHeader"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterMatter}">
            <li class="fieldcontain">
                <span id="letterMatter-label" class="property-label"><g:message code="letter.letterMatter.label"
                                                                                default="Letter Matter"/></span>

                <span class="property-value" aria-labelledby="letterMatter-label"><g:fieldValue bean="${letterInstance}"
                                                                                                field="letterMatter"/></span>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterPosts}">
            <li class="fieldcontain">
                <span id="letterPosts-label" class="property-label"><g:message code="letter.letterPosts.label"
                                                                               default="Letter Posts"/></span>

                <g:each in="${letterInstance.letterPosts}" var="l">
                    <span class="property-value" aria-labelledby="letterPosts-label"><g:link controller="letterPost"
                                                                                             action="show"
                                                                                             id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${letterInstance?.letterTo}">
            <li class="fieldcontain">
                <span id="letterTo-label" class="property-label"><g:message code="letter.letterTo.label"
                                                                            default="Letter To"/></span>

                <span class="property-value" aria-labelledby="letterTo-label"><g:fieldValue bean="${letterInstance}"
                                                                                            field="letterTo"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: letterInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${letterInstance}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
