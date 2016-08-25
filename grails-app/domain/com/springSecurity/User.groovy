package com.springSecurity

import com.mailToPost.Address
import com.mailToPost.AddressBook
import com.mailToPost.AdminSetting
import com.mailToPost.Email
import com.mailToPost.Notification
import co.RegisterCO
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    transient springSecurityService

    String username
    String password
    String firstName
    String lastName
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    AdminSetting adminSetting

    static hasMany = [addresses: Address, addressBooks: AddressBook, notifications: Notification, emails: Email]

    User(String username, String password) {
        this()
        this.username = username
        this.password = password
    }

    User(RegisterCO registerCO) {
        this.username = registerCO.username
        this.password = registerCO.password
        this.firstName = registerCO.firstName
        this.lastName = registerCO.lastName
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this)*.role
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
        adminSetting nullable: true
    }

    static mapping = {
        password column: '`password`'
    }
}
