package co

import com.mailToPost.AdminSetting
import grails.validation.Validateable

@Validateable
class UserCO {
    String username
    String password
    String firstName
    String lastName
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    AdminSetting adminSetting

    static constraints = {
        username blank: false, unique: true
        password blank: false
        adminSetting nullable: true
    }
}
