package com.mailToPost.email

import co.EmailCO
import com.mailToPost.Email
import com.mailToPost.EmailType
import com.springSecurity.Role
import com.springSecurity.User
import common.AppUtil
import enums.EmailPriority
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_SUBADMIN'])
class EmailController {

    def emailService
    def springSecurityService
    def bindingService

    def index() {
        User user = springSecurityService.currentUser
        println("user ${user}")
        List<Role> roles = user.getAuthorities().toList()
        println("roles ${roles}")
        roles.each { print it }
        render(view: 'index')
    }

    def refreshEmail() {
        emailService.readMail()
    }
    def save(EmailCO emailCO,Long userId) {
        String message
        User user = User.findById(userId)
        if (emailCO.validate()) {
            Email email = bindingService.bindingEmailCoToEmail(emailCO,user)
            if (email.validate()) {
                AppUtil.save(email)
                message = "Email saved successfully . . ."
            } else {
                message = "Email is not verified ..."
            }
        } else {
            message = "EmailCo not verified . . ."
        }
        render "${message}"
    }

    def delete(Long id) {
        Email email = Email.findById(id)
        String message
        if (email) {
            email.delete(flush: true)
            message = "Email deleted successfully . . . "
        } else {
            message = "Email not found . . ."
        }
        render "${message}"
    }
}