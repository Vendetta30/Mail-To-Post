package com.mailToPost

class Email {

    String from
    String to
    String subject
    String emailBody
    EmailType emailType
    Date dateCreated
    Date lastUpdated

    static hasMany = [attachments: Attachments, letters: Letter]

    static constraints = {
    }
}
