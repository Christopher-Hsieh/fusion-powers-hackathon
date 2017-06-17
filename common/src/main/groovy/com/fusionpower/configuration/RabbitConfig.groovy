package com.fusionpower.configuration

import org.springframework.amqp.core.AmqpAdmin
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory
import org.springframework.amqp.rabbit.connection.ConnectionFactory
import org.springframework.amqp.core.Queue
import org.springframework.amqp.rabbit.core.RabbitAdmin
import org.springframework.amqp.rabbit.core.RabbitTemplate
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class RabbitConfig {
    protected final String crawlerQueueName = "crawler.queue"

    @Bean
     ConnectionFactory connectionFactory() {
        final URI ampqUrl
        try {
            ampqUrl = new URI(getEnvOrThrow("CLOUDAMQP_URL"))
        } catch (URISyntaxException e) {
            throw new RuntimeException(e)
        }

        new CachingConnectionFactory().with {
            (username, password) = ampqUrl.userInfo.split(':')
            host = ampqUrl.host
            port = ampqUrl.port
            virtualHost = ampqUrl.path.substring(1)
            it
        }
    }

    @Bean
     AmqpAdmin amqpAdmin() {
        return new RabbitAdmin(connectionFactory())
    }

    @Bean
     RabbitTemplate rabbitTemplate() {
        new RabbitTemplate(connectionFactory()).with {
            routingKey = crawlerQueueName
            queue = crawlerQueueName
            it
        }
    }

    @Bean
     Queue queue() {
        new Queue(this.crawlerQueueName)
    }

    private static String getEnvOrThrow(String name) {
        final String env = System.getenv(name)
        if (env == null) {
            throw new IllegalStateException("Environment variable [" + name + "] is not set.")
        }
        env
    }
}
