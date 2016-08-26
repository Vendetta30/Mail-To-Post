package com.mailToPost

import co.LetterCO
import co.LetterPostCO
import com.BindingService
import common.AppUtil
import enums.EnvelopeColor
import enums.EnvelopeQuality
import enums.PaperSheetQuality
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUBADMIN'])
class LetterController {

    BindingService bindingService

    def index() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(view: 'index', model: [letterInstanceList: Letter.list(max: params.int('max'), offset: 0), letterInstanceTotal: Letter.count()])
    }

    def filter() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(template: 'letterList', model: [letterInstanceList: Email.list(params), letterInstanceTotal: Email.count()])
    }

    def save(LetterCO letterCO, LetterPostCO letterPostCO, Long emailId) {
        String message
        if (letterPostCO.validate()) {
            Letter letter = bindingService.bindLetterCoToLetter(letterCO, letterPostCO)
            Email email = Email.findById(emailId)
            letter.email = email
            if (letter.validate()) {
                AppUtil.save(letter)
                message = "Letter is Successfully saved.."
            } else {
                message = "Letter details are not verified.. ${letter.errors.allErrors}"
            }
        } else {
            message = "LetterPost details not verified.."
        }
        render "${message}"
    }

    def delete(Long letterId) {
        String message
        Letter letter = Letter.findById(letterId)
        if (letter) {
            letter.delete(flush: true)
            message = "Letter deleted Successfully . . ."
        } else {
            message = "Letter could not found . . ."
        }
        render "${message}"
    }

    def update(LetterCO letterCO, LetterPostCO letterPostCO, Email email) {
        redirect(action: "save", params: [letterCO: letterCO, letterPostCO: letterPostCO, emailId: email])
    }
}
