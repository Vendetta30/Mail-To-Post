class BootStrap {
    def bootstrapService

    def init = { servletContext ->
        bootstrapService.createRoles()
        bootstrapService.createAdmin()
        bootstrapService.createSubAdmin()
        bootstrapService.createEmail()
    }
    def destroy = {
    }
}
