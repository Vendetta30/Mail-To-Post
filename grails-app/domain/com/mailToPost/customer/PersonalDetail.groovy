package com.mailToPost.customer

import enums.MaritalStatus
import enums.ObjectState
import enums.PhoneContext
import enums.PhoneType
import enums.Title

class PersonalDetail {

    Title title
    String firstName
    String middleName
    String lastName
    Date dateOfBirth
    String contactNumber
    PhoneType phoneType
    PhoneContext phoneContext
    MaritalStatus maritalStatus
    ObjectState state = ObjectState.RECENT
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
}
