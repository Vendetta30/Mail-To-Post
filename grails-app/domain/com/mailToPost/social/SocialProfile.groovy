package com.mailToPost.social

import com.mailToPost.customer.Customer
import enums.SocialProfileType

class SocialProfile {
    String accessToken
    String accessSecret
    String profileId
    String userName
    String name
    String profileUrl
    String alternateEmail
    SocialProfileType type = SocialProfileType.FACEBOOK

    static belongsTo = [customer: Customer]
    static constraints = {
    }
}
