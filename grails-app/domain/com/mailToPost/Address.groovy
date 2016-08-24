package com.mailToPost

import com.springSecurity.User

class Address {
    String addressLine1
    String addressLine2
    String street
    String city
    String state
    String pincode
    Date dateCreated
    Date lastUpdated
    static belongsTo = [user: User, contact: Contacts]

    static constraints = {
    }
}
