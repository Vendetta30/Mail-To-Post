package com

import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
import grails.transaction.Transactional

@Transactional
class BootstrapService {

    public void createRoles() {
        if (Role.count < 1) {
            new Role(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)
            new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)
            new Role(authority: "ROLE_USER").save(flush: true, failOnError: true)

        }


    }

    public void createAdmins() {
        Role adminRole = Role.findByAuthority("ROLE_ADMIN")
        Role subAdminRole = Role.findByAuthority("ROLE_SUBADMIN")
        Role userRole = Role.findByAuthority("ROLE_USER")
        if (!User.findByUsername("admin")) {
            User userAdmin = new User(username: "admin", email: "admin@gmail.com", password: "123456",
                    firstName: "admin_first", lastName: "admin_last")
            userAdmin.save(flush: true, failOnError: true)
            UserRole.create(userAdmin, adminRole, true)
            UserRole.create(userAdmin, userRole, true)
            UserRole.create(userAdmin, subAdminRole, true)
        }
    }

    public void createSubadmin() {
        Role subAdminRole = Role.findByAuthority("ROLE_SUBADMIN")
        if (!User.findByUsername("subadmin")) {
            User userSubAdmin = new User(username: "subadmin", email: "subadmin@gmail.com", password: "123456",
                    firstName: "subadmin_first", lastName: "subadmin_last")
            userSubAdmin.save(flush: true, failOnError: true)
            UserRole.create(userSubAdmin, subAdminRole, true)
        }

    }
}
