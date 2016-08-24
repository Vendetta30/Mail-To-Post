

class BootStrap {
    def bootstrapService

    def init = { servletContext ->
        bootstrapService.createRoles()
        bootstrapService.createAdmin()
        bootstrapService.createSubAdmin()
    }
    def destroy = {
    }
}
