package com.mailToPost

class Attachments {

    String fileName
    String filePath
    String fileType
    Date dateCreated
    Date lastUpdated

    static belongsTo = [email: Email]
    static constraints = {
    }
}