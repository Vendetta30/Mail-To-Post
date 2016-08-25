package com.mailToPost

import com.springSecurity.Role
import com.springSecurity.User
import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class LandingController {

    def springSecurityService

    def index() {}

    def decide() {
        User user = springSecurityService.currentUser
        List<Role> roles = user.getAuthorities().toList()
        roles.each { print it }
        if (roles.authority.contains("ROLE_USER")) {
            redirect(controller: "user", action: "index")
        } else if (roles.authority.contains("ROLE_ADMIN") || roles.authority.contains("ROLE_SUBADMIN")) {
            redirect(controller: "admin", action: "index")
        } else {
            redirect(uri: '/')
        }
    }
}