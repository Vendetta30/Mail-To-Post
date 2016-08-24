package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class ContactsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Contacts.list(params), model:[contactsInstanceCount: Contacts.count()]
    }

    def show(Contacts contactsInstance) {
        respond contactsInstance
    }

    def create() {
        respond new Contacts(params)
    }

    @Transactional
    def save(Contacts contactsInstance) {
        if (contactsInstance == null) {
            notFound()
            return
        }

        if (contactsInstance.hasErrors()) {
            respond contactsInstance.errors, view:'create'
            return
        }

        contactsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contacts.label', default: 'Contacts'), contactsInstance.id])
                redirect contactsInstance
            }
            '*' { respond contactsInstance, [status: CREATED] }
        }
    }

    def edit(Contacts contactsInstance) {
        respond contactsInstance
    }

    @Transactional
    def update(Contacts contactsInstance) {
        if (contactsInstance == null) {
            notFound()
            return
        }

        if (contactsInstance.hasErrors()) {
            respond contactsInstance.errors, view:'edit'
            return
        }

        contactsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Contacts.label', default: 'Contacts'), contactsInstance.id])
                redirect contactsInstance
            }
            '*'{ respond contactsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Contacts contactsInstance) {

        if (contactsInstance == null) {
            notFound()
            return
        }

        contactsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Contacts.label', default: 'Contacts'), contactsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contacts.label', default: 'Contacts'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
