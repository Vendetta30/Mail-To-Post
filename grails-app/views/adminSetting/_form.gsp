<%@ page import="com.mailToPost.AdminSetting" %>



<div class="fieldcontain ${hasErrors(bean: adminSettingInstance, field: 'user', 'error')} required">
    <label for="user">
        <g:message code="adminSetting.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="user" name="user.id" from="${com.springSecurity.User.list()}" optionKey="id" required=""
              value="${adminSettingInstance?.user?.id}" class="many-to-one"/>

</div>

