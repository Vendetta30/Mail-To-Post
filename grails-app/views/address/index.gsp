<%@ page import="com.mailToPost.Address" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn>
        <meta name="layout" content="main">
    </sec:ifNotLoggedIn>

    <sec:ifLoggedIn>
        <sec:ifAllGranted roles="ROLE_USER">
            <meta name="layout" content="user">
        </sec:ifAllGranted>
        <sec:ifAllGranted roles="ROLE_ADMIN,ROLE_SUB_ADMIN">
            <meta name="layout" content="admin">
        </sec:ifAllGranted>
    </sec:ifLoggedIn>
    <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-address" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="addressLine1"
                              title="${message(code: 'address.addressLine1.label', default: 'Address Line1')}"/>

            <g:sortableColumn property="addressLine2"
                              title="${message(code: 'address.addressLine2.label', default: 'Address Line2')}"/>

            <g:sortableColumn property="city" title="${message(code: 'address.city.label', default: 'City')}"/>

            <th><g:message code="address.contact.label" default="Contact"/></th>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'address.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'address.lastUpdated.label', default: 'Last Updated')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${addressInstanceList}" status="i" var="addressInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "addressLine1")}</g:link></td>

                <td>${fieldValue(bean: addressInstance, field: "addressLine2")}</td>

                <td>${fieldValue(bean: addressInstance, field: "city")}</td>

                <td>${fieldValue(bean: addressInstance, field: "contact")}</td>

                <td><g:formatDate date="${addressInstance.dateCreated}"/></td>

                <td><g:formatDate date="${addressInstance.lastUpdated}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${addressInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
