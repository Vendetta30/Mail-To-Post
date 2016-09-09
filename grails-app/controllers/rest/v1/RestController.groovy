package rest.v1

import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
class RestController {

    static namespace = 'version1'
    def createUser = {
    }

    def deleteUser = { Long userId ->
        Role userRole = Role.findByAuthority("ROLE_USER")
        User user = User.findById(userId)
        user.delete()
        UserRole.remove(user, userRole)

        render([val: "true"] as JSON)

    }
}
