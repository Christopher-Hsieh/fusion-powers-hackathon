package com.fusionpower

import com.fusionpower.configuration.RabbitConfig
import com.fusionpower.crawler.Crawler
import edu.uci.ics.crawler4j.crawler.CrawlConfig
import edu.uci.ics.crawler4j.crawler.CrawlController
import edu.uci.ics.crawler4j.fetcher.PageFetcher
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer
import org.springframework.amqp.core.Message
import org.springframework.amqp.core.MessageListener
import org.springframework.amqp.core.Queue
import org.springframework.amqp.rabbit.connection.ConnectionFactory
import org.springframework.amqp.rabbit.listener.SimpleMessageListenerContainer
import org.springframework.amqp.support.converter.MessageConverter
import org.springframework.amqp.support.converter.SimpleMessageConverter
import org.springframework.context.ApplicationContext
import org.springframework.context.annotation.AnnotationConfigApplicationContext
import org.springframework.util.ErrorHandler

class CrawlerWorker {
    static void main(String[] args) {
        final ApplicationContext rabbitConfig = new AnnotationConfigApplicationContext(RabbitConfig)
        final ConnectionFactory rabbitConnectionFactory = rabbitConfig.getBean(ConnectionFactory)
        final Queue rabbitQueue = rabbitConfig.getBean(Queue)
        final MessageConverter messageConverter = new SimpleMessageConverter()

        // create a listener container, which is required for asynchronous message consumption.
        // AmqpTemplate cannot be used in this case
        final SimpleMessageListenerContainer listenerContainer = new SimpleMessageListenerContainer()
        listenerContainer.setConnectionFactory(rabbitConnectionFactory)
        listenerContainer.setQueueNames(rabbitQueue.getName())

        // set the callback for message handling
        listenerContainer.setMessageListener(new MessageListener() {

            void onMessage(Message message) {
                String crawlStorageFolder = "/tmp/data/crawl/root"
                int numberOfCrawlers = 7

                CrawlConfig config = new CrawlConfig()
                config.crawlStorageFolder = crawlStorageFolder
                config.maxDepthOfCrawling = 1
                config.includeHttpsPages = true

                /*
                 * Instantiate the controller for this crawl.
                 */
                PageFetcher pageFetcher = new PageFetcher(config)
                RobotstxtConfig robotstxtConfig = new RobotstxtConfig()
                RobotstxtServer robotstxtServer = new RobotstxtServer(robotstxtConfig, pageFetcher)
                CrawlController controller = new CrawlController(config, pageFetcher, robotstxtServer)

                String uri = (String) messageConverter.fromMessage(message)
                /*
  * For each crawl, you need to add some seed urls. These are the first
  * URLs that are fetched and then the crawler starts following links
  * which are found in these pages
  */
                controller.addSeed(uri.trim())
                /*
                 * Start the crawl. This is a blocking operation, meaning that your code
                 * will reach the line after this only when crawling is finished.
                 */
                controller.start(Crawler, numberOfCrawlers)
                // simply printing out the operation, but expensive computation could happen here
                System.out.println("Received from RabbitMQ: $uri")
            }
        })

        // set a simple error handler
        listenerContainer.setErrorHandler(new ErrorHandler() {
            void handleError(Throwable t) {
                t.printStackTrace()
            }
        })

        // register a shutdown hook with the JVM
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            void run() {
                System.out.println("Shutting down CrawlerWorker")
                listenerContainer.shutdown()
            }
        })

        // start up the listener. this will block until JVM is killed.
        listenerContainer.start()
        System.out.println("CrawlerWorker started")
    }
}
