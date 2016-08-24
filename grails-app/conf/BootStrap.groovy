

class BootStrap {
    def bootstrapService

    def init = { servletContext ->
        Role roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)
        Role roleSubAdmin = Role.findByAuthority("ROLE_SUBADMIN") ?: new Role(authority: "ROLE_SUBADMIN").save(flush: true, failOnError: true)
        Role roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save(flush: true, failOnError: true)

        bootstrapService.createRoles()
        bootstrapService.createAdmins()
        bootstrapService.createSubadmin()

    }
    def destroy = {
    }
}
