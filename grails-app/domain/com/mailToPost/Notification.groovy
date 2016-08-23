package com.mailToPost

import com.springSecurity.User

class Notification {

    String notificationType
    String message
    Date dateCreated
    Date lastUpdated

    static belongsTo = [user: User]
    static constraints = {
    }
}
