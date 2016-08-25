package com.mailToPost

import co.UserCO
import com.springSecurity.User
import common.AppUtil
import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_USER")
class UserController {

    def bindingService

    def index() {
        render(view: 'index')
    }

    def save(UserCO userCO) {

        String message
        User user = User.findByUsername(userCO.username)
        if (!user) {

            if (userCO.validate()) {
                User userToBeSaved = bindingService.bindingUserCoToUser(userCO)
                AppUtil.save(userToBeSaved)
                message = "User is been Registered . . ."
            } else {
                message = "UserCo is not verified . . ."
            }
        } else {
            message = "Sorry, this UserName is already an existing User "
        }
        render "${message}"
    }

    def delete(Long id) {
        String message
        User user = User.findById(id)
        if (user) {
            user.accountLocked = true
            user.enabled = false
            user.save(flush: true)
            message = "User is deleted successfully . . ."
        } else {
            message = "User does not exist . . ."
        }
        render "${message}"
    }
}
