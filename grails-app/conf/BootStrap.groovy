

class BootStrap {
    def bootstrapService

    def init = { servletContext ->

        bootstrapService.createRoles()
        bootstrapService.createAdmins()
        bootstrapService.createSubadmin()

    }
    def destroy = {
    }
}
