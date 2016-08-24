package com.mailToPost

class Contacts {

    String emailId
    Date dateCreated
    Date lastUpdated
    static hasOne = [address: Address]
    static belongsTo = [addressBook: AddressBook]

    static constraints = {
    }
}
