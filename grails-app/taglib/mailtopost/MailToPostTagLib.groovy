package mailtopost

class MailToPostTagLib {
    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "mtp"

    def showTextProperly = { attrs, body ->
        int maxSize = attrs.max as int
        String textString = attrs.text as String
        String outString = ""

        if (!maxSize || !textString) {
            return null
        }

        println("textString?.size() ${textString?.size()}")
        println("textString?.size() < maxSize ${textString?.size() < maxSize}")

        if (textString?.size() < maxSize) {
            outString = textString
        } else {
            outString = textString?.substring(0, maxSize) + "..."
        }

        out << outString
    }
}
