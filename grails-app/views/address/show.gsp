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
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-address" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list address">

        <g:if test="${addressInstance?.addressLine1}">
            <li class="fieldcontain">
                <span id="addressLine1-label" class="property-label"><g:message code="address.addressLine1.label"
                                                                                default="Address Line1"/></span>

                <span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue
                        bean="${addressInstance}" field="addressLine1"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.addressLine2}">
            <li class="fieldcontain">
                <span id="addressLine2-label" class="property-label"><g:message code="address.addressLine2.label"
                                                                                default="Address Line2"/></span>

                <span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue
                        bean="${addressInstance}" field="addressLine2"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.city}">
            <li class="fieldcontain">
                <span id="city-label" class="property-label"><g:message code="address.city.label"
                                                                        default="City"/></span>

                <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${addressInstance}"
                                                                                        field="city"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.contact}">
            <li class="fieldcontain">
                <span id="contact-label" class="property-label"><g:message code="address.contact.label"
                                                                           default="Contact"/></span>

                <span class="property-value" aria-labelledby="contact-label"><g:link controller="contacts" action="show"
                                                                                     id="${addressInstance?.contact?.id}">${addressInstance?.contact?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="address.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${addressInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="address.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        date="${addressInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.pincode}">
            <li class="fieldcontain">
                <span id="pincode-label" class="property-label"><g:message code="address.pincode.label"
                                                                           default="Pincode"/></span>

                <span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${addressInstance}"
                                                                                           field="pincode"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.state}">
            <li class="fieldcontain">
                <span id="state-label" class="property-label"><g:message code="address.state.label"
                                                                         default="State"/></span>

                <span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${addressInstance}"
                                                                                         field="state"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.street}">
            <li class="fieldcontain">
                <span id="street-label" class="property-label"><g:message code="address.street.label"
                                                                          default="Street"/></span>

                <span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${addressInstance}"
                                                                                          field="street"/></span>

            </li>
        </g:if>

        <g:if test="${addressInstance?.user}">
            <li class="fieldcontain">
                <span id="user-label" class="property-label"><g:message code="address.user.label"
                                                                        default="User"/></span>

                <span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show"
                                                                                  id="${addressInstance?.user?.id}">${addressInstance?.user?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: addressInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${addressInstance}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
