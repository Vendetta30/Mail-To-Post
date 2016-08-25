// Place your Spring DSL code here
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.web.authentication.AjaxAwareAuthenticationSuccessHandler

beans = {
    def conf = SpringSecurityUtils.securityConfig

    authenticationSuccessHandler(AjaxAwareAuthenticationSuccessHandler) {
        //borrowed from DefaultSecurityConfig.groovy
        requestCache = ref('requestCache')
        defaultTargetUrl = conf.successHandler.defaultTargetUrl // '/'
        alwaysUseDefaultTargetUrl = conf.successHandler.alwaysUseDefault // false
        targetUrlParameter = conf.successHandler.targetUrlParameter // 'spring-security-redirect'
        ajaxSuccessUrl = conf.successHandler.ajaxSuccessUrl // '/login/ajaxSuccess'
        useReferer = conf.successHandler.useReferer // false
        redirectStrategy = ref('ajaxSuccessAwareRedirectStrategy')
    }

    ajaxSuccessAwareRedirectStrategy(AjaxSuccessAwareRedirectStrategy) {
        contextRelative = conf.redirectStrategy.contextRelative
        ajaxSuccessUrl = conf.successHandler.ajaxSuccessUrl
    }
}