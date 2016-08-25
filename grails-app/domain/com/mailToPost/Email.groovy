package com.mailToPost

import com.springSecurity.User
import vo.EmailVO

class Email {
    String messagId
    String senderName
    String senderEmail
    String messageSentDate
    String messageSubject
    String messageBody
    EmailType emailType
    Date dateCreated
    Date lastUpdated
    boolean checked = false

    static belongsTo = [user: User]
    static hasMany = [attachments: Attachments, letters: Letter]

    static constraints = {
        messagId(nullable: false, blank: false)
        senderName(nullable: false, blank: false)
        senderEmail(nullable: false, blank: false)
        messageSentDate(nullable: false, blank: false)
        messageSubject(nullable: true, blank: true)
        messageBody(nullable: true, blank: true)
        emailType(nullable: true)
    }
    static mapping = {
        messageBody type: "text"
        messageSubject type: "text"
    }

    Email(EmailVO emailVO) {
        this.senderEmail = emailVO?.senderEmail
        this.senderName = emailVO?.senderName
        this.messagId = emailVO?.messagId
        this.messageSentDate = emailVO?.sentDate
        this.messageSubject = emailVO?.subject
        this.messageBody = emailVO?.messageBody
        this.checked = emailVO?.checked
    }
}