package com.mailToPost

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class AdminSettingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AdminSetting.list(params), model:[adminSettingInstanceCount: AdminSetting.count()]
    }

    def show(AdminSetting adminSettingInstance) {
        respond adminSettingInstance
    }

    def create() {
        respond new AdminSetting(params)
    }

    @Transactional
    def save(AdminSetting adminSettingInstance) {
        if (adminSettingInstance == null) {
            notFound()
            return
        }

        if (adminSettingInstance.hasErrors()) {
            respond adminSettingInstance.errors, view:'create'
            return
        }

        adminSettingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'adminSetting.label', default: 'AdminSetting'), adminSettingInstance.id])
                redirect adminSettingInstance
            }
            '*' { respond adminSettingInstance, [status: CREATED] }
        }
    }

    def edit(AdminSetting adminSettingInstance) {
        respond adminSettingInstance
    }

    @Transactional
    def update(AdminSetting adminSettingInstance) {
        if (adminSettingInstance == null) {
            notFound()
            return
        }

        if (adminSettingInstance.hasErrors()) {
            respond adminSettingInstance.errors, view:'edit'
            return
        }

        adminSettingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AdminSetting.label', default: 'AdminSetting'), adminSettingInstance.id])
                redirect adminSettingInstance
            }
            '*'{ respond adminSettingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AdminSetting adminSettingInstance) {

        if (adminSettingInstance == null) {
            notFound()
            return
        }

        adminSettingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AdminSetting.label', default: 'AdminSetting'), adminSettingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'adminSetting.label', default: 'AdminSetting'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
