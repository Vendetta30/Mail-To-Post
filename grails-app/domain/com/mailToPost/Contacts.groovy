package com.mailToPost

import com.mailToPost.customer.Address

class Contacts {

    String emailId
    Date dateCreated
    Date lastUpdated
    Address address
    static belongsTo = [addressBook: AddressBook]

    static constraints = {
    }
}
