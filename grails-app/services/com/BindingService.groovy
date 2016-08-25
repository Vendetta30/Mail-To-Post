package com

import co.EmailCO
import co.LetterCO
import co.LetterPostCO
import co.UserCO
import com.mailToPost.AdminSetting
import com.mailToPost.Email
import com.mailToPost.EmailType
import com.mailToPost.Letter
import com.mailToPost.LetterPost
import com.springSecurity.User


class BindingService {

    def bindLetterCoToLetter(LetterCO letterCO, LetterPostCO letterPostCO) {

        Letter letter = new Letter()
        LetterPost letterPost = new LetterPost()

        letter.letterFrom = letterCO.letterFrom
        letter.letterTo = letterCO.letterTo
        letter.letterMatter = letterCO.letterMatter
        letter.letterHeader = letterCO.letterHeader
        letter.letterFooter = letterCO.letterFooter

        letterPost.colorForEnvelope = letterPostCO.colorForEnvelope
        letterPost.envelopeQuality = letterPostCO.envelopeQuality
        letterPost.paperQuality = letterPostCO.paperQuality
        letter.letterPost = letterPost

        return letter
    }

    def bindingEmailCoToEmail(EmailCO emailCO, User user) {
        Email email = new Email()
        EmailType emailType = new EmailType()

        email.messagId = emailCO.messagId
        email.senderName = emailCO.senderName
        email.senderEmail = emailCO.senderEmail
        email.messageSentDate = emailCO.messageSentDate
        email.messageSubject = emailCO.messageSubject
        email.messageBody = emailCO.messageBody
        email.checked = emailCO.checked
        email.user = user

        emailType.name = emailCO.emailType.name
        emailType.priority = emailCO.emailType.priority
        email.emailType = emailType

        return email
    }

    def bindingUserCoToUser(UserCO userCO) {
        User user = new User()
        AdminSetting adminSetting = new AdminSetting()

        user.username = userCO.username
        user.password = userCO.password
        user.firstName = userCO.firstName
        user.lastName = userCO.lastName
        user.enabled = userCO.enabled
        user.accountExpired = userCO.accountExpired
        user.accountLocked = userCO.accountLocked
        user.passwordExpired = userCO.passwordExpired
        adminSetting = userCO.adminSetting
        user.adminSetting = adminSetting

        return user
    }
}
