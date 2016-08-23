<%@ page import="com.mailToPost.Address" %>
<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'addressLine1', 'error')} required">
    <label for="addressLine1">
        <g:message code="address.addressLine1.label" default="Address Line1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="addressLine1" required="" value="${addressInstance?.addressLine1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'addressLine2', 'error')} required">
    <label for="addressLine2">
        <g:message code="address.addressLine2.label" default="Address Line2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="addressLine2" required="" value="${addressInstance?.addressLine2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
    <label for="city">
        <g:message code="address.city.label" default="City"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="city" required="" value="${addressInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'contact', 'error')} required">
    <label for="contact">
        <g:message code="address.contact.label" default="Contact"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="contact" name="contact.id" from="${com.mailToPost.Contacts.list()}" optionKey="id" required=""
              value="${addressInstance?.contact?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'pincode', 'error')} required">
    <label for="pincode">
        <g:message code="address.pincode.label" default="Pincode"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="pincode" required="" value="${addressInstance?.pincode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} required">
    <label for="state">
        <g:message code="address.state.label" default="State"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="state" required="" value="${addressInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'street', 'error')} required">
    <label for="street">
        <g:message code="address.street.label" default="Street"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="street" required="" value="${addressInstance?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'user', 'error')} required">
    <label for="user">
        <g:message code="address.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="user" name="user.id" from="${com.springSecurity.User.list()}" optionKey="id" required=""
              value="${addressInstance?.user?.id}" class="many-to-one"/>

</div>

