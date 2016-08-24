package com.mailToPost.email

import com.springSecurity.Role
import com.springSecurity.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_SUBADMIN'])
class EmailController {

    def emailService
    def springSecurityService

    def index() {
        User user = springSecurityService.currentUser
        println("user ${user}")
        List<Role> roles = user.getAuthorities().toList()
        println("roles ${roles}")
        roles.each { print it }
        render(view: 'index')
//        emailService.readMail()
    }
}