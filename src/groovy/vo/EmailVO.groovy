package vo

import com.springSecurity.User
import org.codehaus.groovy.grails.validation.Validateable

@Validateable
class EmailVO {
    String messagId
    String senderName
    String senderEmail
    String sentDate
    String subject
    String messageBody
    User user
    boolean checked = false
    List<String> attachmentType = []
    List<InputStream> inputStream = []
    List<String> extensions = []
    List<String> attachmentNames = []

    static constraints = {
        user(nullable: false)
        messagId(nullable: false)
        senderName(nullable: false)
        senderEmail(nullable: false)
        sentDate(nullable: false)
        subject(nullable: true)
        messageBody(nullable: true)
        inputStream(nullable: true)
    }

    def bindAttachments(String attachmentType, InputStream inputStream, String extension, String attachmentName) {
        this?.attachmentType?.add(attachmentType)
        this?.inputStream?.add(inputStream)
        this?.extensions?.add(extension)
        this?.attachmentNames?.add(attachmentName)
    }
}
