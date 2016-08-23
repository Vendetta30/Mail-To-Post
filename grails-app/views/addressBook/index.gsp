<%@ page import="com.mailToPost.AddressBook" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn>
        <sec:ifNotLoggedIn><meta name="layout"
                                 content="main"></sec:ifNotLoggedIn>      <sec:ifLoggedIn><sec:ifAllGranted
            roles="ROLE_USER"><meta name="layout" content="user"></sec:ifAllGranted>         <sec:ifAllGranted
            roles="ROLE_ADMIN,ROLE_SUB_ADMIN"><meta name="layout" content="admin"></sec:ifAllGranted></sec:ifLoggedIn>
    </sec:ifNotLoggedIn>

    <sec:ifLoggedIn>
        <sec:ifAllGranted roles="ROLE_USER">
            <meta name="layout" content="user">
        </sec:ifAllGranted>
        <sec:ifAllGranted roles="ROLE_ADMIN,ROLE_SUB_ADMIN">
            <meta name="layout" content="admin">
        </sec:ifAllGranted>
    </sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'addressBook.label', default: 'AddressBook')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-addressBook" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-addressBook" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="addressBookName"
                              title="${message(code: 'addressBook.addressBookName.label', default: 'Address Book Name')}"/>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'addressBook.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'addressBook.lastUpdated.label', default: 'Last Updated')}"/>

            <th><g:message code="addressBook.user.label" default="User"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${addressBookInstanceList}" status="i" var="addressBookInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${addressBookInstance.id}">${fieldValue(bean: addressBookInstance, field: "addressBookName")}</g:link></td>

                <td><g:formatDate date="${addressBookInstance.dateCreated}"/></td>

                <td><g:formatDate date="${addressBookInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: addressBookInstance, field: "user")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${addressBookInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
