package com.mailToPost

import com.springSecurity.User
import enums.NotificationStatus

class Notification {

    String notificationType
    String message
    NotificationStatus statusOfNotification
    Date dateCreated
    Date lastUpdated

    static belongsTo = [user: User]
    static constraints = {
    }
}
