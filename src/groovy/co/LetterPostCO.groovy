package co

import enums.EnvelopeColor
import enums.EnvelopeQuality
import enums.PaperSheetQuality
import grails.validation.Validateable

@Validateable
class LetterPostCO {
    EnvelopeColor colorForEnvelope = EnvelopeColor.WHITE
    PaperSheetQuality paperQuality
    EnvelopeQuality envelopeQuality
}
