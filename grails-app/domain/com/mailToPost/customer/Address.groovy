package com.mailToPost.customer

import com.mailToPost.Contacts
import enums.AddressType

class Address {
    String addressLine1
    String addressLine2
    String street
    String city
    String state
    String pincode
    AddressType addressType = AddressType.PERSONAL
    Date dateCreated
    Date lastUpdated
    static belongsTo = [customer: Customer, contact: Contacts]

    static constraints = {
        addressLine1 nullable: false, blank: false
        addressLine2 nullable: false, blank: true
        street nullable: false, blank: true
        city nullable: false, blank: false
        pincode nullable: false, blank: false
    }
}
