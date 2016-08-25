import com.springSecurity.Role
import com.springSecurity.User
import org.springframework.context.ApplicationContext
import org.springframework.context.ApplicationContextAware
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler
import org.springframework.web.util.HtmlUtils

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class CustomAuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler implements ApplicationContextAware {

    ApplicationContext applicationContext

    @Override
    protected String determineTargetUrl(HttpServletRequest request,
                                        HttpServletResponse response) {
        String username = HtmlUtils.htmlUnescape(request.getSession().getValue("SPRING_SECURITY_LAST_USERNAME").toString())

        def grailsApplication = applicationContext.getBean("grailsApplication")

        User.withNewSession {
            User user = User.findByUsername(username)
            Role adminRole = Role.findByAuthority('ROLE_ADMIN')
            Role userRole = Role.findByAuthority('ROLE_USER')
            Role subAdminRole = Role.findByAuthority('ROLE_SUB_ADMIN')

            if (user.authorities.contains(adminRole) || user.authorities.contains(subAdminRole)) {
                return "/admin/index"
            } else if (user.authorities.contains(userRole)) {
                return "/user/index"
            }

            return grailsApplication.config.grails.plugins.springsecurity.successHandler.defaultTargetUrl
        }
    }

    void setApplicationContext(ApplicationContext applicationContext) {
        this.applicationContext = applicationContext
    }
}
