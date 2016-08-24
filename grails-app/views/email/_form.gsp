<%@ page import="com.mailToPost.Email" %>



<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'attachments', 'error')} ">
    <label for="attachments">
        <g:message code="email.attachments.label" default="Attachments"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${emailInstance?.attachments ?}" var="a">
            <li><g:link controller="attachments" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="attachments" action="create"
                    params="['email.id': emailInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'attachments.label', default: 'Attachments')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'emailBody', 'error')} required">
    <label for="emailBody">
        <g:message code="email.emailBody.label" default="Email Body"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="emailBody" required="" value="${emailInstance?.emailBody}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'emailType', 'error')} required">
    <label for="emailType">
        <g:message code="email.emailType.label" default="Email Type"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="emailType" name="emailType.id" from="${com.mailToPost.EmailType.list()}" optionKey="id" required=""
              value="${emailInstance?.emailType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'from', 'error')} required">
    <label for="from">
        <g:message code="email.from.label" default="From"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="from" required="" value="${emailInstance?.from}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'letters', 'error')} ">
    <label for="letters">
        <g:message code="email.letters.label" default="Letters"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${emailInstance?.letters ?}" var="l">
            <li><g:link controller="letter" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="letter" action="create"
                    params="['email.id': emailInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'letter.label', default: 'Letter')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'subject', 'error')} required">
    <label for="subject">
        <g:message code="email.subject.label" default="Subject"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="subject" required="" value="${emailInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'to', 'error')} required">
    <label for="to">
        <g:message code="email.to.label" default="To"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="to" required="" value="${emailInstance?.to}"/>

</div>

