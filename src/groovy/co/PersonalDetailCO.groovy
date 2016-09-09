package co

import enums.MaritalStatus
import enums.PhoneContext
import enums.PhoneType
import enums.Title
import grails.validation.Validateable

@Validateable
class PersonalDetailCO {
    Title title
    Date dateOfBirth
    String contactNumber
    PhoneType phoneType
    PhoneContext phoneContext
    MaritalStatus maritalStatus

    static constraints = {
        title nullable: false
        maritalStatus nullable: false
        phoneContext nullable: false
        phoneType nullable: false
        contactNumber nullable: false, blank: false
    }
}
