package com.fusionpower.controller

import com.fusionpower.model.UserData
import edu.uci.ics.crawler4j.crawler.CrawlConfig
import edu.uci.ics.crawler4j.crawler.CrawlController
import edu.uci.ics.crawler4j.fetcher.PageFetcher
import edu.uci.ics.crawler4j.robotstxt.RobotstxtConfig
import edu.uci.ics.crawler4j.robotstxt.RobotstxtServer
import fusionpower.webcrawler.crawler.Crawler
import fusionpower.webcrawler.model.UserData
import org.apache.http.client.utils.URIBuilder
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class CrawlerController {

    @RequestMapping("/crawl")
    UserData index(@RequestBody String uriToCrawl) {
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
        RobotstxtServer robotstxtServer = new  RobotstxtServer(robotstxtConfig, pageFetcher)
        CrawlController controller = new CrawlController(config, pageFetcher, robotstxtServer)

        /*
         * For each crawl, you need to add some seed urls. These are the first
         * URLs that are fetched and then the crawler starts following links
         * which are found in these pages
         */
        controller.addSeed(uriToCrawl.trim())

        /*
         * Start the crawl. This is a blocking operation, meaning that your code
         * will reach the line after this only when crawling is finished.
         */
        controller.start(Crawler, numberOfCrawlers)

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

