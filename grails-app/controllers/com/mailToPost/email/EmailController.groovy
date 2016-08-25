package com.mailToPost.email

import co.EmailCO
import com.mailToPost.Email
import com.mailToPost.EmailType
import com.springSecurity.Role
import com.springSecurity.User
import common.AppUtil
import enums.EmailPriority
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_SUBADMIN'])
class EmailController {

    def emailService
    def bindingService

    def index() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(view: 'index', model: [emailInstanceList: Email.list(max: params.int('max'), offset: 0), emailInstanceTotal: Email.count()])
    }

    def filter() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(template: 'filter', model: [emailInstanceList: Email.list(params), emailInstanceTotal: Email.count()])
    }

    def refreshEmail() {
        def data = [:]
        data.success = "Success"
        emailService.readMail()
        render data as JSON
    }

    def save(EmailCO emailCO, Long userId) {
        String message
        User user = User.findById(userId)
        if (emailCO.validate()) {
            Email email = bindingService.bindingEmailCoToEmail(emailCO, user)
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