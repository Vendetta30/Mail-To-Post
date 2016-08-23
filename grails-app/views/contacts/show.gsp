<%@ page import="com.mailToPost.Contacts" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'contacts.label', default: 'Contacts')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-contacts" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-contacts" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list contacts">

        <g:if test="${contactsInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="contacts.address.label"
                                                                           default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show"
                                                                                     id="${contactsInstance?.address?.id}">${contactsInstance?.address?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${contactsInstance?.addressBook}">
            <li class="fieldcontain">
                <span id="addressBook-label" class="property-label"><g:message code="contacts.addressBook.label"
                                                                               default="Address Book"/></span>

                <span class="property-value" aria-labelledby="addressBook-label"><g:link controller="addressBook"
                                                                                         action="show"
                                                                                         id="${contactsInstance?.addressBook?.id}">${contactsInstance?.addressBook?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${contactsInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="contacts.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${contactsInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${contactsInstance?.emailId}">
            <li class="fieldcontain">
                <span id="emailId-label" class="property-label"><g:message code="contacts.emailId.label"
                                                                           default="Email Id"/></span>

                <span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${contactsInstance}"
                                                                                           field="emailId"/></span>

            </li>
        </g:if>

        <g:if test="${contactsInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="contacts.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${contactsInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: contactsInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${contactsInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
