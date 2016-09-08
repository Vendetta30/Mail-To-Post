package com.mailToPost.customer

import enums.ObjectState

class CompanyDetail {

    String companyName
    Long noOfEmployee
    Address address
    ObjectState state = ObjectState.RECENT
    Date dateCreated
    Date lastUpdated

    static constraints = {
        companyName nullable: false, blank: false
        noOfEmployee nullable: false
        address nullable: false
    }
}