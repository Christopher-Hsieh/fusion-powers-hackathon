package com.fusionpower.controller

import com.fusionpower.crawler.Crawler
import com.fusionpower.model.UserData
import edu.uci.ics.crawler4j.crawler.CrawlConfig
import edu.uci.ics.crawler4j.crawler.CrawlController
import edu.uci.ics.crawler4j.fetcher.PageFetcher
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer
import org.springframework.amqp.core.AmqpTemplate
import org.springframework.amqp.core.Queue
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class CrawlerController {
    @Autowired private AmqpTemplate amqpTemplate
    @Autowired private Queue rabbitQueue


    @RequestMapping("/crawl")
    UserData index(@RequestBody String uriToCrawl) {

        amqpTemplate.convertAndSend(rabbitQueue.getName(), uriToCrawl)
        buildMockUserData(uriToCrawl)

    }


    private UserData buildMockUserData(String url) {
        UserData data = new UserData()
        data.with {
            keywords = ['consulting', 'IT', 'software']
            numberOfBusinessLocations = 5
            businessEstablished = Date.parse("YYYY", "2000")
            businessZipCode = "55555"
            legalEntity = "LLC"
            website = url
            businessName = "Some Company, LLC"
            businessStreetAddress = "123 Fake St"
            city = "Springfield"
            stateCode = "OH"
            zipCode = "55555"
            firstName = "Homer"
            lastName = "Simpson"
            phoneNumber = "555-555-5555"
            email = "homer@aol.com"
            businessLocationOwned = false
            nonProfit = false
            numberOfficers = 5
            numberWorkers = 10000
            it
        }
    }
}

