package com.register

import co.AddressCO
import co.CompanyDetailCO
import co.PersonalDetailCO
import co.UserCO
import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class RegisterUserController {

    def registerUserService
    def createUserService

    def index() {
        createUserService.createUser()
    }

    def generateRandomComment() {
        render createUserService.generateComments("")
    }

    def createUser() {
        UserCO userCO = new UserCO()
        PersonalDetailCO personalDetailCO = new PersonalDetailCO()
        AddressCO addressCO = new AddressCO()
        CompanyDetailCO companyDetailCO = new CompanyDetailCO()
        AddressCO companyAddress = new AddressCO()
        render(view: 'createUser', model: [userCO: userCO, personalDetailCO: personalDetailCO, addressCO: addressCO, companyDetailCO: companyDetailCO, companyAddress: companyAddress])
    }
}
