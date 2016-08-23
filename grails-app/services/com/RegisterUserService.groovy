package com

import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
import grails.transaction.Transactional

@Transactional
class RegisterUserService {

    def serviceMethod() {

    }

    def registerUser(params) {

        Role roleUser
        User user = new User(username: params.username, password: params.password, firstName: params.firstName, lastName: params.lastName)

        user.save(flush: true, failOnError: true)

        if (!(Role.findByAuthority("ROLE_USER"))) {
            roleUser = new Role(authority: "ROLE_USER")
            roleUser.save(flush: true, failOnError: true)
        } else {
            roleUser = Role.findByAuthority("ROLE_USER")
            roleUser.getAuthority()
        }
        UserRole.create(user, roleUser, true)

    }
}
