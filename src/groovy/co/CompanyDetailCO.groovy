package co

import com.mailToPost.customer.Address
import enums.ObjectState
import grails.validation.Validateable

@Validateable
class CompanyDetailCO {
    String companyName
    Long noOfEmployee
    Address address
    ObjectState state = ObjectState.RECENT

    static constraints = {
        companyName nullable: false, blank: false
        noOfEmployee nullable: false
        address nullable: false
    }
}
