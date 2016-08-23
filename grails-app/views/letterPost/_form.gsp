<%@ page import="com.mailToPost.LetterPost" %>



<div class="fieldcontain ${hasErrors(bean: letterPostInstance, field: 'envelopeQuality', 'error')} required">
    <label for="envelopeQuality">
        <g:message code="letterPost.envelopeQuality.label" default="Envelope Quality"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="envelopeQuality" required="" value="${letterPostInstance?.envelopeQuality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: letterPostInstance, field: 'paperQuality', 'error')} required">
    <label for="paperQuality">
        <g:message code="letterPost.paperQuality.label" default="Paper Quality"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="paperQuality" required="" value="${letterPostInstance?.paperQuality}"/>

</div>

