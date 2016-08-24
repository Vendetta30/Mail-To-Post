package com.mailToPost

import enums.EnvelopeColor
import enums.EnvelopeQuality
import enums.PaperSheetQuality

class LetterPost {

    EnvelopeColor colorForEnvelope = EnvelopeColor.WHITE
    PaperSheetQuality paperQuality
    EnvelopeQuality envelopeQuality

    Date dateCreated
    Date lastUpdated

    static belongsTo = [letter:Letter]

    static constraints = {
    }
}
