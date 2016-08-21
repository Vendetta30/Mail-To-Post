package co

import com.springSecurity.User
import grails.validation.Validateable


@Validateable
class RegisterCO {
    String email
    String username

    String firstName
    String lastName
    String password
    String confirmPassword

    static constraints = {
        username blank: false, validator: { val ->
            if (User.findByUsername(val)) {
                return "please enter the unique username"
            }
        }
        email validator: { val ->
            if (User.findByEmail(val)) {
                return "Email must be unique"
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
    }
}
