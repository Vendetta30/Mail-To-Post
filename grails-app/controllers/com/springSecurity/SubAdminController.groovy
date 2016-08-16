package com.springSecurity

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_SUBADMIN")
class SubAdminController {

    def index() {
        render "i am a SUBADMIN"
    }
}
