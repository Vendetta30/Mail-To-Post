package com.springSecurity

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class AdminController {

    def index() {
        render "I am a ADMIN"
    }
}
