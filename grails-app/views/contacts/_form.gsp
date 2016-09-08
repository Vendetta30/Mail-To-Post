<%@ page import="com.mailToPost.Contacts" %>



<div class="fieldcontain ${hasErrors(bean: contactsInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="contacts.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="address" name="address.id" from="${com.mailToPost.customer.Address.list()}" optionKey="id" required=""
              value="${contactsInstance?.address?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactsInstance, field: 'addressBook', 'error')} required">
    <label for="addressBook">
        <g:message code="contacts.addressBook.label" default="Address Book"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="addressBook" name="addressBook.id" from="${com.mailToPost.AddressBook.list()}" optionKey="id"
              required="" value="${contactsInstance?.addressBook?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactsInstance, field: 'emailId', 'error')} required">
    <label for="emailId">
        <g:message code="contacts.emailId.label" default="Email Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="emailId" required="" value="${contactsInstance?.emailId}"/>

</div>

