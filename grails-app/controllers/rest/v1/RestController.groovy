package rest.v1

import co.RegisterCO
import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
import common.AppUtil
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
class RestController {

    static namespace = 'version1'
    def createUser = { RegisterCO registerCO ->
        Role userRole = Role.findByAuthority("ROLE_USER")
        User user = new User(registerCO)
        AppUtil.save(user)
        UserRole.create(user, userRole, true)

        render([val: "true"] as JSON)
    }

    def deleteUser = { Long userId ->
        Role userRole = Role.findByAuthority("ROLE_USER")
        User user = User.findById(userId)
        user.delete()
        UserRole.remove(user, userRole)

        render([val: "true"] as JSON)

    }


}
