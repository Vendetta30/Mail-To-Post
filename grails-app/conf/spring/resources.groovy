// Place your Spring DSL code here
import grails.plugin.springsecurity.SpringSecurityUtils

beans = {
    def conf = SpringSecurityUtils.securityConfig

    ajaxSuccessAwareRedirectStrategy(AjaxSuccessAwareRedirectStrategy) {
        contextRelative = conf.redirectStrategy.contextRelative
        ajaxSuccessUrl = conf.successHandler.ajaxSuccessUrl
    }
}
