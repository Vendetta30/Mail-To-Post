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
        //================Rest API===============
        "/user/api/v1/$action?(.${format})?" {
            controller = 'rest'
            namespace = 'version1'
        }
    }


}
