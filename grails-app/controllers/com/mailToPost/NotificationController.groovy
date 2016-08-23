package com.mailToPost

import com.springSecurity.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE-ADMIN', 'ROLE-SUBADMIN'])
class NotificationController {
    def springSecurityService

    def list(Integer max) {
        User user = springSecurityService.currentUser as User
        List<Notification> notifications = Notification.createCriteria().list(sort: 'dateCreated', order: 'desc', max: params.max, offset: params.offset) {
            eq('user', user)
        }
        render(view: 'list')
    }
}