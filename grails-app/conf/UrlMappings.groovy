class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "index")
        "/search"(controller: 'login', action: 'googleSearch')
        "/javaApi"(controller: 'login', action: 'javaAPi')
        "500"(view: '/error')
        "/adminSetting"(controller: 'admin', action: 'setting')
        "/adminEmail"(controller: 'email', action: 'index')
        "/adminDashboard"(controller: 'admin', action: 'index')

        //================Rest API===============

        "/user/api/v1/$action?(.${format})?" {
            controller = 'rest'
            namespace = 'version1'
        }
    }
}