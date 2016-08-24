package com.mailToPost

class Attachments {
    String attachmentName
    String attachmentPathName
    String attachmentContentType
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]

    static constraints = {
        attachmentPathName(nullable: true)
        attachmentName(nullable: true)
        attachmentContentType(nullable: true)
    }
}