package com.mailToPost

class Letter {

    String letterFrom
    String letterTo
    String letterMatter
    String letterHeader
    String letterFooter
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]
    static hasMany = [letterPosts: LetterPost]

    static constraints = {
    }
}
