<%@ page import="com.mailToPost.Letter" %>



<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="letter.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="email" name="email.id" from="${com.mailToPost.Email.list()}" optionKey="id" required=""
              value="${letterInstance?.email?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterFooter', 'error')} required">
    <label for="letterFooter">
        <g:message code="letter.letterFooter.label" default="Letter Footer"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="letterFooter" required="" value="${letterInstance?.letterFooter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterFrom', 'error')} required">
    <label for="letterFrom">
        <g:message code="letter.letterFrom.label" default="Letter From"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="letterFrom" required="" value="${letterInstance?.letterFrom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterHeader', 'error')} required">
    <label for="letterHeader">
        <g:message code="letter.letterHeader.label" default="Letter Header"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="letterHeader" required="" value="${letterInstance?.letterHeader}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterMatter', 'error')} required">
    <label for="letterMatter">
        <g:message code="letter.letterMatter.label" default="Letter Matter"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="letterMatter" required="" value="${letterInstance?.letterMatter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterPosts', 'error')} ">
    <label for="letterPosts">
        <g:message code="letter.letterPosts.label" default="Letter Posts"/>

    </label>
    <g:select name="letterPosts" from="${com.mailToPost.LetterPost.list()}" multiple="multiple" optionKey="id" size="5"
              value="${letterInstance?.letterPosts*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterInstance, field: 'letterTo', 'error')} required">
    <label for="letterTo">
        <g:message code="letter.letterTo.label" default="Letter To"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="letterTo" required="" value="${letterInstance?.letterTo}"/>

</div>

