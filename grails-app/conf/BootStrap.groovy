import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole

class BootStrap {

    def init = { servletContext ->
        if (!(Role.findAllByAuthority("ROLE_ADMIN"))) {
            User userAdmin = new User(username: "admin@mailToPost.com", password: "123456", firstName: "admin_first", lastName: "admin_last")
            userAdmin.save(flush: true, failOnError: true)

            Role roleAdmin = new Role(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)

            Role roleSubAdmin = new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)

            Role roleUser = new Role(authority: "ROLE_USER").save(flush: true, failOnError: true)

            UserRole.create(userAdmin, roleAdmin, true)
            UserRole.create(userAdmin, roleUser, true)
            UserRole.create(userAdmin, roleSubAdmin, true)

        }

        Role roleSubAdmin
//        //by using the username of the subadmin about to be saved
//                if (!(User.findByUsername("subadmin"))) {
//            if (!(Role.findAllByAuthority("ROLE_SUBADMIN"))) {
//                roleSubAdmin = new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)
//            } else {
//                roleSubAdmin = Role.findByAuthority("ROLE_SUBADMIN")
//
//            }
//
//
//            User userSubAdmin = new User(username: "subadmin", email: "subadmin@gmail.com", password: "123456", firstName: "subadmin_first", lastName: "subadmin_last")
//            userSubAdmin.save(flush: true, failOnError: true)
//
//            UserRole.create(userSubAdmin, roleSubAdmin, true)
//
//        }

        if(User.count<2) {
            if (!(Role.findAllByAuthority("ROLE_SUBADMIN"))) {
                roleSubAdmin = new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)
            } else {
                roleSubAdmin = Role.findByAuthority("ROLE_SUBADMIN")

            }


            User userSubAdmin = new User(username: "subadmin@mailToPost.com", password: "123456", firstName: "subadmin_first", lastName: "subadmin_last")
            userSubAdmin.save(flush: true, failOnError: true)

            UserRole.create(userSubAdmin, roleSubAdmin, true)

        }

    }


    def destroy = {
    }
}
