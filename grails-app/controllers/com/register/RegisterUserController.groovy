package com.register

import co.RegisterCO
import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class RegisterUserController {

    def registerUserService

    def index() {}

    def register(RegisterCO registerCO) {
        println(params)
        if (registerCO.validate()) {
            registerUserService.registerUser(params)
            flash.successRegister = "You have been registered! Please login "
            render view: "/login/auth"


        }
        else {
            registerCO.errors.each {print it}
            render view:"/login/auth",model: [error:registerCO.errors]
        }
    }
}
