<%@ page import="com.mailToPost.EmailType" %>



<div class="fieldcontain ${hasErrors(bean: emailTypeInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="emailType.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="email" name="email.id" from="${com.mailToPost.Email.list()}" optionKey="id" required=""
              value="${emailTypeInstance?.email?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailTypeInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="emailType.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${emailTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailTypeInstance, field: 'priority', 'error')} required">
    <label for="priority">
        <g:message code="emailType.priority.label" default="Priority"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="priority" required="" value="${emailTypeInstance?.priority}"/>

</div>

