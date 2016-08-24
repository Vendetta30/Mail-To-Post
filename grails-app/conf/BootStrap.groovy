import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole

class BootStrap {

    def init = { servletContext ->
        Role roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)
        Role roleSubAdmin = Role.findByAuthority("ROLE_SUBADMIN") ?: new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)
        Role roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save(flush: true, failOnError: true)

        if (!User.findByUsername("vijay@mailtopost.in")) {
            User admin = new User(username: "vijay@mailtopost.in", password: "123456", firstName: "Vijay", lastName: "Shukla")
            admin.save(flush: true, failOnError: true)
            UserRole.create(admin, roleAdmin, true)
            UserRole.create(admin, roleSubAdmin, true)
        }
        if (!User.findByUsername("shipra@mailtopost.in")) {
            User admin = new User(username: "shipra@mailtopost.in", password: "123456", firstName: "Shipra", lastName: "Tayal")
            admin.save(flush: true, failOnError: true)
            UserRole.create(admin, roleAdmin, true)
            UserRole.create(admin, roleSubAdmin, true)
        }
        if (!User.findByUsername("ayush@mailtopost.in")) {
            User admin = new User(username: "ayush@mailtopost.in", password: "123456", firstName: "Ayush", lastName: "lastName")
            admin.save(flush: true, failOnError: true)
            UserRole.create(admin, roleAdmin, true)
            UserRole.create(admin, roleSubAdmin, true)
        }
        if (!User.findByUsername("abhinav@mailtopost.in")) {
            User admin = new User(username: "abhinav@mailtopost.in", password: "123456", firstName: "Abhinav", lastName: "lastName")
            admin.save(flush: true, failOnError: true)
            UserRole.create(admin, roleAdmin, true)
            UserRole.create(admin, roleSubAdmin, true)
        }

        if (!User.findByUsername("vijay@nexthoughts.com")) {
            User admin = new User(username: "vijay@nexthoughts.com", password: "123456", firstName: "Vijay", lastName: "Shukla")
            admin.save(flush: true, failOnError: true)
            UserRole.create(admin, roleUser, true)
        }
    }


    def destroy = {
    }
}
