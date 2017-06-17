package fusionpower.webcrawler.crawler

import edu.uci.ics.crawler4j.crawler.Page
import edu.uci.ics.crawler4j.crawler.WebCrawler
import edu.uci.ics.crawler4j.parser.HtmlParseData
import edu.uci.ics.crawler4j.url.WebURL

class Crawler extends WebCrawler {

    private final static FILTERS = ~/.*(\.(css|js|gif|jpg|png|mp3|mp3|zip|gz))$/

    @Override
    boolean shouldVisit(Page referringPage, WebURL url) {
        url.domain == referringPage.webURL.domain && !FILTERS.matcher(url.URL.toLowerCase())
    }

    void visit(Page page) {
        String url = page.getWebURL().getURL()
        System.out.println("URL: " + url)

        if (page.getParseData() instanceof HtmlParseData) {
            HtmlParseData htmlParseData = (HtmlParseData) page.getParseData()
            String text = htmlParseData.getText()
            String html = htmlParseData.getHtml()
            Set<WebURL> links = htmlParseData.getOutgoingUrls()
            print(htmlParseData.metaTags)

        }
    }
}
