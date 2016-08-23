<%@ page import="com.mailToPost.Contacts" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn><meta name="layout" content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
        roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
        roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'contacts.label', default: 'Contacts')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-contacts" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-contacts" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th><g:message code="contacts.address.label" default="Address"/></th>

            <th><g:message code="contacts.addressBook.label" default="Address Book"/></th>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'contacts.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="emailId"
                              title="${message(code: 'contacts.emailId.label', default: 'Email Id')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'contacts.lastUpdated.label', default: 'Last Updated')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${contactsInstanceList}" status="i" var="contactsInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${contactsInstance.id}">${fieldValue(bean: contactsInstance, field: "address")}</g:link></td>

                <td>${fieldValue(bean: contactsInstance, field: "addressBook")}</td>

                <td><g:formatDate date="${contactsInstance.dateCreated}"/></td>

                <td>${fieldValue(bean: contactsInstance, field: "emailId")}</td>

                <td><g:formatDate date="${contactsInstance.lastUpdated}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${contactsInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
