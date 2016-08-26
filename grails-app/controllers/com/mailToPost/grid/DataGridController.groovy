package com.mailToPost.grid

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_SUBADMIN'])
class DataGridController {

    def index() {
        render(view: 'index')
    }
}
