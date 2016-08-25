package com

import co.LetterCO
import co.LetterPostCO
import com.mailToPost.Letter
import com.mailToPost.LetterPost


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
}
