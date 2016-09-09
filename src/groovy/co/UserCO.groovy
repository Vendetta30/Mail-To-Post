package co

import com.mailToPost.AdminSetting
import com.springSecurity.User
import grails.validation.Validateable

@Validateable
class UserCO {
    String username
    String password
    String confirmPassword
    String firstName
    String lastName
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    AdminSetting adminSetting
    static constraints = {
        username blank: false, validator: { val ->
            if (User.findByUsername(val)) {
                return "please enter the unique username"
            }
        }
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        password blank: false, minSize: 3

        confirmPassword blank: false, validator: { val, obj ->
            if (!(obj.password.compareTo(val) == 0)) {
                return "validation.customRuntimePasswordComapreMessage"
            }
        }
        adminSetting nullable: true
    }
}
