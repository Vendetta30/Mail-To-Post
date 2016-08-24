<%@ page import="com.mailToPost.AddressBook" %>



<div class="fieldcontain ${hasErrors(bean: addressBookInstance, field: 'addressBookName', 'error')} required">
    <label for="addressBookName">
        <g:message code="addressBook.addressBookName.label" default="Address Book Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="addressBookName" required="" value="${addressBookInstance?.addressBookName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressBookInstance, field: 'contacts', 'error')} ">
    <label for="contacts">
        <g:message code="addressBook.contacts.label" default="Contacts"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${addressBookInstance?.contacts ?}" var="c">
            <li><g:link controller="contacts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="contacts" action="create"
                    params="['addressBook.id': addressBookInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contacts.label', default: 'Contacts')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: addressBookInstance, field: 'user', 'error')} required">
    <label for="user">
        <g:message code="addressBook.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="user" name="user.id" from="${com.springSecurity.User.list()}" optionKey="id" required=""
              value="${addressBookInstance?.user?.id}" class="many-to-one"/>

</div>

