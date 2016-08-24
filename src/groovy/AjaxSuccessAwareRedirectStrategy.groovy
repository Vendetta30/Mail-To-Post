import grails.plugin.springsecurity.SpringSecurityUtils
import org.springframework.security.web.DefaultRedirectStrategy

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class AjaxSuccessAwareRedirectStrategy extends DefaultRedirectStrategy {

    private String _ajaxSuccessUrl;

    public void sendRedirect(HttpServletRequest request, HttpServletResponse response, String url) throws IOException {
        if (SpringSecurityUtils.isAjax(request)) {
            if (url != _ajaxSuccessUrl) {
                url = _ajaxSuccessUrl + "?targetUrl=" + URLEncoder.encode(url, 'UTF-8')
            }
            super.sendRedirect(request, response, url)
        } else {
            super.sendRedirect(request, response, url)
        }
    }

    public void setAjaxSuccessUrl(final String ajaxSuccessUrl) {
        _ajaxSuccessUrl = ajaxSuccessUrl;
    }
}