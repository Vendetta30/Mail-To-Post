package com.mailToPost

class EmailType {

    String name
    String priority
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]

    static constraints = {
    }
}
