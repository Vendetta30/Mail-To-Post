package com

import com.budjb.rabbitmq.publisher.RabbitMessagePublisher
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RabbitController {
    RabbitMessagePublisher rabbitMessagePublisher

    def index() {
        render rabbitMessagePublisher.rpc {
            routingKey = "testqueue"
            body = "Hello!"
        }
    }
}