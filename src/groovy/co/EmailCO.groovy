package co

import com.mailToPost.EmailType
import grails.validation.Validateable

@Validateable
class EmailCO {

    String messagId
    String senderName
    String senderEmail
    String messageSentDate
    String messageSubject
    String messageBody
    EmailType emailType
    boolean checked = false

    static constraints = {
        messagId(nullable: false, blank: false)
        senderName(nullable: false, blank: false)
        senderEmail(nullable: false, blank: false)
        messageSentDate(nullable: false, blank: false)
        messageSubject(nullable: true, blank: true)
        messageBody(nullable: true, blank: true)
        emailType(nullable: true)
    }
}
