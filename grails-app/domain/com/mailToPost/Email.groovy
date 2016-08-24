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
        from(nullable: false, blank: false)
        to(nullable: false, blank: false)
        subject(nullable: true,blank: true)
        emailBody(nullable: true, blank: true)
    }
}
