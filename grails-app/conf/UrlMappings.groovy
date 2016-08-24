class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "index")
        "500"(view: '/error')
        "/login"(controller: "login", action: 'auth')
        "/adminSetting"(controller: 'admin', action: 'setting')
        "/adminEmail"(controller: 'email', action: 'index')
        //================Rest API===============
        "/user/api/v1/$action?(.${format})?" {
            controller = 'rest'
            namespace = 'version1'
        }
    }


}
