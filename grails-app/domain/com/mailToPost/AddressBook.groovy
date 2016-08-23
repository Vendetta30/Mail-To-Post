package com.mailToPost

import com.springSecurity.User

class AddressBook {
    String addressBookName
    Date dateCreated
    Date lastUpdated
    static belongsTo = [user: User]
    static hasMany = [contacts: Contacts]

    static constraints = {
    }
}
