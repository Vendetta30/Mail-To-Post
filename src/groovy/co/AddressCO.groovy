package co

import enums.AddressType
import grails.validation.Validateable

@Validateable
class AddressCO {
    String addressLine1
    String addressLine2
    String street
    String city
    String state
    String pincode
    AddressType addressType = AddressType.PERSONAL

    static constraints = {
        addressLine1 nullable: false, blank: false
        addressLine2 nullable: false, blank: true
        street nullable: false, blank: true
        city nullable: false, blank: false
        pincode nullable: false, blank: false
    }
}