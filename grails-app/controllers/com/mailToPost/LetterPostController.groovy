package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class LetterPostController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LetterPost.list(params), model:[letterPostInstanceCount: LetterPost.count()]
    }

    def show(LetterPost letterPostInstance) {
        respond letterPostInstance
    }

    def create() {
        respond new LetterPost(params)
    }

    @Transactional
    def save(LetterPost letterPostInstance) {
        if (letterPostInstance == null) {
            notFound()
            return
        }

        if (letterPostInstance.hasErrors()) {
            respond letterPostInstance.errors, view:'create'
            return
        }

        letterPostInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'letterPost.label', default: 'LetterPost'), letterPostInstance.id])
                redirect letterPostInstance
            }
            '*' { respond letterPostInstance, [status: CREATED] }
        }
    }

    def edit(LetterPost letterPostInstance) {
        respond letterPostInstance
    }

    @Transactional
    def update(LetterPost letterPostInstance) {
        if (letterPostInstance == null) {
            notFound()
            return
        }

        if (letterPostInstance.hasErrors()) {
            respond letterPostInstance.errors, view:'edit'
            return
        }

        letterPostInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LetterPost.label', default: 'LetterPost'), letterPostInstance.id])
                redirect letterPostInstance
            }
            '*'{ respond letterPostInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LetterPost letterPostInstance) {

        if (letterPostInstance == null) {
            notFound()
            return
        }

        letterPostInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LetterPost.label', default: 'LetterPost'), letterPostInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'letterPost.label', default: 'LetterPost'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
