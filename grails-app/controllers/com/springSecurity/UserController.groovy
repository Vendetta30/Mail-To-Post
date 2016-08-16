package com.springSecurity

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_USER")
class UserController {

    def index() {
        render "I am a USER"
    }
}
