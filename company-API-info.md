# Gathering Company Info from APIs
#### Summary of below
| Company | Information Available | Difficult to use |
| ------- | --------------------- | ---------------- |
| LinkedIn | industry, number of employees, locations | Have to scrape - might be open source scrapers |
|  Glassdoor | industry, number employees, location, revenue | Have to scrape |
|  Google | industry, locations, services, but has website URL | OAuth 2.0 - will take time |
| Yahoo | revenue - if company is public | ? |
| Experian | detailed info of: locations and aquired companies, revenue, employees, years in business | Pay wall + given in PDF |
| Facebook | [See here](https://github.com/JumpingRock/fusion-powers-hackathon/blob/master/company-API-info.md#list-of-all-data-we-can-get-from-a-company-fb-page) | Easy to use, already have token. Just make REST calls in our App. |

### LinkedIn: https://developer.linkedin.com/docs/fields/company-profile
- Need to register app and use OAuth 2.0 
- Looks like we need to be admin of the company to parse its info through LinkedIn’s API: https://stackoverflow.com/questions/30409219/linkedin-api-unable-to-view-any-company-profile
- Some open source projects (none Java so far) i.e. https://github.com/yatish27/linkedin-scraper can do it

### Glassdoor: [Very simple Api](https://www.glassdoor.com/developer/companiesApiActions.htm)
- Example of information we can scrape: http://imgur.com/a/fS8EU
- Note, typical response from Api does not give us too much info. See link in title.
- Easy to get and use key, uses REST

### Google: https://developers.google.com/partners/reference/rest/v2/companies
- Key Responses:
```
locations[]	object(Location)	The list of company locations. => i.e. could return all retraunts in the country
industries[]	enum(Industry)	Industries the company can help with.
services[]	enum(Service)	Services the company can help with.
websiteUrl	string	URL of the company's website.
```
- Annoying to get key. Think we have to go through OAuth 2.0

### Yahoo & Experian: 
- Yahoo: https://finance.yahoo.com/quote/GOOG/key-statistics?p=GOOG Only interesting thing is revenue. 
- [Experian](http://sbcr.experian.com/pdp.aspx?pg=Sample-CreditScoreP&ftr=nolinksCloseButton&hdr=reportPopup&link=5502), lots of info but costs money. Liberty already collects 90million experian records for CI every quarter though.

### Facebook: https://developers.facebook.com/docs/graph-api
- Only need to make developer account and append token to calls
- Test calls here: https://developers.facebook.com/tools/explorer/
- Example call on {page-id}=’cocacola/’ => [Example Output](https://github.com/JumpingRock/fusion-powers-hackathon/blob/master/API-info.md#example-coca-cola-output)
```
cocacola?fields=id,about,category_list,company_overview,contact_address,current_location,description,founded,general_info,general_manager,link,name,products,single_line_address,website,global_brand_children{name,about,id},global_brand_page_name,global_brand_root_id,product_catalogs{name,id},fan_count,picture,category,restaurant_services,restaurant_specialties,locations{name,location},milestones{title}
```
#### List of all data we can get from a company FB page:
```
id
about
category_list
contact_address
current_location
description
general_info
general_manager
link
name
single_line_address
website
global_brand_children
name
about
id
global_brand_page_name
global_brand_root_id
product_catalogs
    name
    id
    fan_count
picture
category
locations
    name
    location
milestones

*Company Specific* 
company_overview
founded
mission
products

*Restaurant Specific*
restaurant_services
restaurant_specialties

*Vehicle Specific*
built
features
mpg
```
#### Example Coca-Cola Output
```
{
  "id": "40796308305",
  "about": "The Coca-Cola Facebook Page is a collection of your stories showing how people from around the world have helped make Coke into what it is today.",
  "description": "Created in 1886 in Atlanta, Georgia, by Dr. John S. Pemberton, Coca-Cola was first offered as a fountain beverage at Jacob's Pharmacy by mixing Coca-Cola syrup with carbonated water. 

Coca-Cola was patented in 1887, registered as a trademark in 1893 and by 1895 it was being sold in every state and territory in the United States. In 1899, The Coca-Cola Company began franchised bottling operations in the United States. 

Coca-Cola might owe its origins to the United States, but its popularity has made it truly universal. Today, you can find Coca-Cola in virtually every part of the world.

Coca-Cola Page House Rules: http://CokeURL.com/q28a",
  "founded": "1886",
  "link": "https://www.facebook.com/Coca-Cola/",
  "name": "Coca-Cola",
  "website": "http://www.coca-cola.com",
  "global_brand_page_name": "Coca-Cola",
  "global_brand_root_id": "1542920115951985",
  "fan_count": 104820457,
  "picture": {
    "data": {
      "is_silhouette": false,
      "url": "https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/14680612_10155488324368306_295421251789586235_n.png?oh=e138a058cff4435b90f153e3dcd709f4&oe=59E4B606"
    }
  },
  "category": "Workplace & Office",
  "locations": {
    "data": [
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Imbituba",
          "country": "Brazil",
          "latitude": -28.26,
          "longitude": -48.6932,
          "state": "SC",
          "street": "RUA ANTONIO TORQUADO, 179",
          "zip": "88780-000"
        },
        "id": "629113460592157"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Elblag",
          "country": "Poland",
          "latitude": 54.158514052179,
          "longitude": 19.394849538803,
          "street": "Katedra",
          "zip": "82-300"
        },
        "id": "596020997271285"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Lublin",
          "country": "Poland",
          "latitude": 51.2501474,
          "longitude": 22.5696884,
          "street": "Plac Zamkowy",
          "zip": "20-001"
        },
        "id": "275038939565362"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Sobradinho",
          "country": "Brazil",
          "latitude": -16.46356,
          "longitude": -49.94356,
          "state": "DF",
          "street": "Avenida Brasília",
          "zip": "73045-150"
        },
        "id": "798180796999873"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Ceilândia",
          "country": "Brazil",
          "latitude": -16.8255493,
          "longitude": -49.5331643,
          "state": "DF",
          "street": "Rua 120",
          "zip": "72241-564"
        },
        "id": "685415385000059"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Ceilândia",
          "country": "Brazil",
          "latitude": -16.6507599,
          "longitude": -49.49948,
          "state": "DF",
          "street": "Rua 16 de Julho",
          "zip": "72240-821"
        },
        "id": "738124036365296"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.78158,
          "longitude": -49.35884,
          "state": "DF",
          "street": "Avenida Brasil",
          "zip": "72420-270"
        },
        "id": "1344501858977668"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Taguatinga",
          "country": "Brazil",
          "latitude": -16.6406199,
          "longitude": -49.4189999,
          "state": "DF",
          "street": "Avenida Presidente Vargas",
          "zip": "71982-650"
        },
        "id": "792959680860518"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.61795,
          "longitude": -49.3159599,
          "state": "DF",
          "street": "Rua VF 14",
          "zip": "72450-050"
        },
        "id": "1487911827927481"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.67637,
          "longitude": -49.32387,
          "state": "DF",
          "street": "Rua LB 1",
          "zip": "72440-470"
        },
        "id": "413080259066607"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.81755,
          "longitude": -49.37422,
          "state": "DF",
          "street": "Avenida José Barbosa Reis",
          "zip": "72415-200"
        },
        "id": "1013059008794150"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.80024,
          "longitude": -49.36569,
          "state": "DF",
          "street": "Avenida Vila Rica",
          "zip": "72410-140"
        },
        "id": "262548347549057"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Taguatinga",
          "country": "Brazil",
          "latitude": -16.76517,
          "longitude": -49.35181,
          "state": "DF",
          "street": "Rua Bartolomeu Bueno",
          "zip": "72140-160"
        },
        "id": "1902518516730614"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.72165,
          "longitude": -49.3326,
          "state": "DF",
          "street": "Avenida Genésio do Carmo",
          "zip": "72405-610"
        },
        "id": "1204517433003532"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Ceilândia",
          "country": "Brazil",
          "latitude": -16.68888,
          "longitude": -49.35323,
          "state": "DF",
          "street": "Rua Primeiro de Maio",
          "zip": "72220-055"
        },
        "id": "1878936715653162"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.82396,
          "longitude": -49.25772,
          "state": "DF",
          "street": "Avenida Junqueirópolis",
          "zip": "72429-040"
        },
        "id": "411244939248482"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Gama",
          "country": "Brazil",
          "latitude": -16.69215,
          "longitude": -49.09801,
          "state": "DF",
          "street": "Rua 02",
          "zip": "72425-100"
        },
        "id": "668794236578606"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Guará",
          "country": "Brazil",
          "latitude": -16.621,
          "longitude": -48.9709999,
          "state": "DF",
          "street": "Rua Raimira Dorneles SN",
          "zip": "71070-200"
        },
        "id": "419502208424188"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Ceilândia",
          "country": "Brazil",
          "latitude": -27.6157,
          "longitude": -48.6678,
          "state": "DF",
          "street": "CHÁCARA  2 CONJUNTO  1H LOTE 3 LOJA 1E",
          "zip": "72236-800"
        },
        "id": "565813206941130"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Bela Vista de Goiás",
          "country": "Brazil",
          "latitude": -16.96871,
          "longitude": -48.95301,
          "state": "GO",
          "street": "Rua Pedro Vieira",
          "zip": "75240000"
        },
        "id": "1183817005061304"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Hidrolândia",
          "country": "Brazil",
          "latitude": -16.9652299,
          "longitude": -49.23032,
          "state": "GO",
          "street": "Avenida Antônio Mendonça",
          "zip": "75340000"
        },
        "id": "1910023765944993"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Aparecida de Goiânia",
          "country": "Brazil",
          "latitude": -16.82396,
          "longitude": -49.25772,
          "state": "GO",
          "street": "Avenida Junqueirópolis",
          "zip": "74973400"
        },
        "id": "402261026811698"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Aparecida de Goiânia",
          "country": "Brazil",
          "latitude": -16.79411,
          "longitude": -49.35164,
          "state": "GO",
          "street": "Avenida Segunda Avenida SN",
          "zip": "74947010"
        },
        "id": "443763922624405"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Aparecida de Goiânia",
          "country": "Brazil",
          "latitude": -16.78823,
          "longitude": -49.35045,
          "state": "GO",
          "street": "Rua Ituiutaba",
          "zip": "74946648"
        },
        "id": "784994004984807"
      },
      {
        "name": "Coca-Cola",
        "location": {
          "city": "Aparecida de Goiânia",
          "country": "Brazil",
          "latitude": -16.80381,
          "longitude": -49.30822,
          "state": "GO",
          "street": "Avenida Brasil",
          "zip": "74957010"
        },
        "id": "1779834132331131"
      }
    ],
    "paging": {
      "cursors": {
        "before": "NjI5MTEzNDYwNTkyMTU3",
        "after": "MTc3OTgzNDEzMjMzMTEzMQZDZD"
      },
      "next": "https://graph.facebook.com/v2.9/40796308305/locations?access_token=EAACEdEose0cBACNdOH5ZCvsLtSrhjoOFtJu3mDGkKwZBP8iCpmGHFKWZAFkxZAL9UZAeAhMM5sO29wlD3k5BUB7S4YGdJ0v6w2au69cykt6iUGu2y6OXx54AZAATFx4tRHvknIaygZAQgjOjBGk16dZBiyMqp7WCmOLqQdwfEA9pBjCTW0UPxugKMX6qjTBBwScZD&pretty=0&fields=name%2Clocation&limit=25&after=MTc3OTgzNDEzMjMzMTEzMQZDZD"
    }
  },
  "milestones": {
    "data": [
      {
        "title": "Ports",
        "id": "10150640702778306"
      },
      {
        "title": "Proposals",
        "id": "10150639835583306"
      },
      {
        "title": "100 Cases",
        "id": "10150638200548306"
      },
      {
        "title": "Husbands",
        "id": "10150635889243306"
      },
      {
        "title": "Sleepovers",
        "id": "10150635886613306"
      },
      {
        "title": "First Encounters",
        "id": "10150635884728306"
      },
      {
        "title": "Flights",
        "id": "10150635870093306"
      },
      {
        "title": "Styles",
        "id": "10150635866403306"
      },
      {
        "title": "Grandmothers",
        "id": "10150635861613306"
      },
      {
        "title": "Tantrums",
        "id": "10150635859348306"
      },
      {
        "title": "Keepers",
        "id": "10150635856018306"
      },
      {
        "title": "Cars",
        "id": "10150635853078306"
      },
      {
        "title": "Couples",
        "id": "10150635835988306"
      },
      {
        "title": "Testimonials",
        "id": "10150623352848306"
      },
      {
        "title": "Nicknames",
        "id": "10150620296718306"
      },
      {
        "title": "Letters",
        "id": "10150607723478306"
      },
      {
        "title": "Classics",
        "id": "10150607698558306"
      },
      {
        "title": "Protests",
        "id": "10150607694883306"
      },
      {
        "title": "Universal Satisfaction",
        "id": "10150607690958306"
      },
      {
        "title": "Founded on May 8, 1886",
        "id": "10150600945073306"
      },
      {
        "title": "Grandfathers",
        "id": "10150567478223306"
      },
      {
        "title": "Design Contests",
        "id": "10150567437713306"
      },
      {
        "title": "Sports",
        "id": "10150567427333306"
      },
      {
        "title": "New Red Suits",
        "id": "10150567410183306"
      },
      {
        "title": "Summers",
        "id": "10150567404078306"
      }
    ],
    "paging": {
      "cursors": {
        "before": "TVRBeE5UQTJOREEzTURJM056ZA3pNRFk2TVRNek1EQXpPVGswTmpveU56TTRNemsyTVRVNU9UTXhPREk9",
        "after": "TVRBeE5UQTFOamMwTURRd056ZA3pNRFk2TVRNeU56WXdOekF5TURveU56TTRNemsyTVRVNU9UTXhPREk9"
      },
      "next": "https://graph.facebook.com/v2.9/40796308305/milestones?access_token=EAACEdEose0cBACNdOH5ZCvsLtSrhjoOFtJu3mDGkKwZBP8iCpmGHFKWZAFkxZAL9UZAeAhMM5sO29wlD3k5BUB7S4YGdJ0v6w2au69cykt6iUGu2y6OXx54AZAATFx4tRHvknIaygZAQgjOjBGk16dZBiyMqp7WCmOLqQdwfEA9pBjCTW0UPxugKMX6qjTBBwScZD&pretty=0&fields=title&limit=25&after=TVRBeE5UQTFOamMwTURRd056ZA3pNRFk2TVRNeU56WXdOekF5TURveU56TTRNemsyTVRVNU9UTXhPREk9"
    }
  }
}
```
