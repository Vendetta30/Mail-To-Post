package mailtopost

class MailToPostTagLib {
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "mtp"

    def adminNavigation = {

    }

    def userNavigation = {

    }

    def publicNavigation = {
        out << g.render(template: '/layouts/publicNavigation')
    }

    def showTextProperly = { attrs, body ->
        int maxSize = attrs.max as int
        String textString = attrs.text as String
        String outString = ""
        if (!maxSize || !textString) {
            return null
        }
        if (textString?.size() < maxSize) {
            outString = textString
        } else {
            outString = textString?.substring(0, maxSize) + "..."
        }
        out << outString
    }
}
