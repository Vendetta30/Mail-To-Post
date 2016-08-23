package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class AddressBookController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AddressBook.list(params), model: [addressBookInstanceCount: AddressBook.count()]
    }

    def show(AddressBook addressBookInstance) {
        respond addressBookInstance
    }

    def create() {
        respond new AddressBook(params)
    }

    @Transactional
    def save(AddressBook addressBookInstance) {
        if (addressBookInstance == null) {
            notFound()
            return
        }

        if (addressBookInstance.hasErrors()) {
            respond addressBookInstance.errors, view: 'create'
            return
        }

        addressBookInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'addressBook.label', default: 'AddressBook'), addressBookInstance.id])
                redirect addressBookInstance
            }
            '*' { respond addressBookInstance, [status: CREATED] }
        }
    }

    def edit(AddressBook addressBookInstance) {
        respond addressBookInstance
    }

    @Transactional
    def update(AddressBook addressBookInstance) {
        if (addressBookInstance == null) {
            notFound()
            return
        }

        if (addressBookInstance.hasErrors()) {
            respond addressBookInstance.errors, view: 'edit'
            return
        }

        addressBookInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AddressBook.label', default: 'AddressBook'), addressBookInstance.id])
                redirect addressBookInstance
            }
            '*' { respond addressBookInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AddressBook addressBookInstance) {

        if (addressBookInstance == null) {
            notFound()
            return
        }

        addressBookInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AddressBook.label', default: 'AddressBook'), addressBookInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'addressBook.label', default: 'AddressBook'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
