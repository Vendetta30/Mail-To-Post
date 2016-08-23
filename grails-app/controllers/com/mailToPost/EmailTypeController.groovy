package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class EmailTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EmailType.list(params), model:[emailTypeInstanceCount: EmailType.count()]
    }

    def show(EmailType emailTypeInstance) {
        respond emailTypeInstance
    }

    def create() {
        respond new EmailType(params)
    }

    @Transactional
    def save(EmailType emailTypeInstance) {
        if (emailTypeInstance == null) {
            notFound()
            return
        }

        if (emailTypeInstance.hasErrors()) {
            respond emailTypeInstance.errors, view:'create'
            return
        }

        emailTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emailType.label', default: 'EmailType'), emailTypeInstance.id])
                redirect emailTypeInstance
            }
            '*' { respond emailTypeInstance, [status: CREATED] }
        }
    }

    def edit(EmailType emailTypeInstance) {
        respond emailTypeInstance
    }

    @Transactional
    def update(EmailType emailTypeInstance) {
        if (emailTypeInstance == null) {
            notFound()
            return
        }

        if (emailTypeInstance.hasErrors()) {
            respond emailTypeInstance.errors, view:'edit'
            return
        }

        emailTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EmailType.label', default: 'EmailType'), emailTypeInstance.id])
                redirect emailTypeInstance
            }
            '*'{ respond emailTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EmailType emailTypeInstance) {

        if (emailTypeInstance == null) {
            notFound()
            return
        }

        emailTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EmailType.label', default: 'EmailType'), emailTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emailType.label', default: 'EmailType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
