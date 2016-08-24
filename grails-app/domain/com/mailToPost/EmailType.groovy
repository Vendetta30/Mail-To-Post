package com.mailToPost

import enums.EmailPriority

class EmailType {

    String name
    EmailPriority priority = EmailPriority.NORMAL
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]

    static constraints = {
    }
}
