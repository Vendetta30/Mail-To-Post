package com.register

import co.RegisterCO
import com.NonsenseGenerator
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

    def register(RegisterCO registerCO) {
        println(params)
        if (registerCO.validate()) {
            registerUserService.registerUser(params)
            flash.successRegister = "You have been registered! Please login "
            render view: "/login/auth"


        } else {
            registerCO.errors.each { print it }
            render view: "/login/auth", model: [error: registerCO.errors]
        }
    }

    def createUser() {
        render(view: 'createUser')
    }
}
