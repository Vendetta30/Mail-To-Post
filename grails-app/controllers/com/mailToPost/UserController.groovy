package com.mailToPost

import co.UserCO
import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
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
                Role userRole = Role.findByAuthority("ROLE_USER")
                UserRole.create(userToBeSaved, userRole, true)
                message = "User is been Registered . . ."
            } else {
                message = "UserCo is not verified . . ."
            }
        } else {
            message = "Sorry, this UserName is already an existing User "
        }
        render "${message}"
    }

    def update(UserCO userCO, String username) {
        String message
        User user = User.findByUsername(username)
        if (user) {
            user.firstName = userCO.firstName
            user.lastName = userCO.lastName
            user.password = userCO.password
            AppUtil.save(user)
            message = "User details updated"
        } else {
            message = "Sorry, User is not a valid User "
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

    def unlockUser(Long id) {
        String message
        User user = User.findById(id)
        if (user) {
            user.accountLocked = false
            user.accountExpired = false
            user.enabled = true
            user.save(flush: true)
            message = "Unlocked user ${user.username}"
        } else {
            message = "User not found . . "
        }
        render "${message}"
    }
}
