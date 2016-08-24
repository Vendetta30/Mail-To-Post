package common

import grails.util.Environment
import grails.util.GrailsUtil
import org.codehaus.groovy.grails.web.context.ServletContextHolder

class AppUtil {
    static Boolean save(def object) {
        Boolean result = false
        if (object.validate() && !object.hasErrors() && object.save(flush: true)) {
            result = true
        } else {
            object.errors.allErrors.each {
                println '----------------------' + it
            }
            result = false
        }
        return result
    }

    static String getStaticResourcesDirPath() {
        String path = '';
        if (GrailsUtil.developmentEnv || Environment.current == Environment.TEST) {
            path = ServletContextHolder.getServletContext().getRealPath("/")
        } else if (Environment.current == Environment.PRODUCTION) {
            path = '/data/document/'
        } else {
            path = '/mnt/document/'
        }
        return path
    }
}