package com.mailToPost.customer

import com.mailToPost.AddressBook
import com.mailToPost.Email
import com.mailToPost.Notification
import com.mailToPost.social.SocialProfile
import com.springSecurity.User

class Customer {

    Date dateCreated
    Date lastUpdated
    Boolean isInternal

    static belongsTo = [user: User]
    static hasMany = [
            socialProfileList: SocialProfile,
            addresses        : Address,
            addressBooks     : AddressBook,
            notifications    : Notification,
            emails           : Email,
            personalDetail   : PersonalDetail,
            companyDetail    : CompanyDetail
    ]

    static constraints = {
    }
}
