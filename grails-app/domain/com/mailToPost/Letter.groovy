package com.mailToPost

import enums.LetterDeliveryStatus

class Letter {

    String letterFrom
    String letterTo
    String letterMatter
    String letterHeader
    String letterFooter
    LetterDeliveryStatus status = LetterDeliveryStatus.WAITING
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]
    static hasOne = [letterPost: LetterPost]

    static constraints = {
        letterFooter(nullable: true, blank: true)
        letterHeader(nullable: true, blank: true)
    }
}
