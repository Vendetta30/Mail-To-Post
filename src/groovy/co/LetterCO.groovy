package co

import enums.LetterDeliveryStatus
import grails.validation.Validateable

@Validateable
class LetterCO {
    String letterFrom
    String letterTo
    String letterMatter
    String letterHeader
    String letterFooter
    LetterDeliveryStatus status

    static constraints = {
        letterHeader(nullable: true, blank: true)
        letterFooter(nullable: true, blank: true)
    }
}
