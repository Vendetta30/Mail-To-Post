package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured
import org.fusesource.jansi.AnsiRenderer

@Secured(["ROLE_ADMIN", "ROLE_SUBADMIN"])
class AdminController {
    def index() {
        render(view: 'index')
    }

    def calendar() {
        render(view: 'calendar')
    }

    def setting() {
        render(view: 'setting')
    }
}