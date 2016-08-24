package com.mailToPost

import com.springSecurity.User

class AdminSetting {
    Date dateCreated
    Date lastUpdated
    static belongsTo = [user:User]

    static constraints = {
    }
}
