package com.FbDataCollector;

import com.restfb.types.Location;
import com.restfb.types.Page;
import com.restfb.types.ProfilePictureSource;

public class SimpleFbApiCallMock {
	String about = "";
	String category = "";
	String current_location = "";
	String description = "";
	String general_info = "";
	String general_manager = "";
	String link = "";
	String name = "";
	String products = ""; // aka product_catalogs
	String single_line_address = "";
	String website = "";
	
	String url = "";
/*
 * Had mocked as objects
 * 	String location(s)
 * 	String picture
 *
 * Discarded	
 * 	String ContactAddress
 * 	String category_list = "";
 * 	String global_brand_children = "";
 * 	String global_brand_page_name = "";
 * 	String global_brand_root_id = "";
 * 	String id = "";
 * 	String milestones = "";
 */
	public Location[] mockLocations() {
		Location[] locations = new Location[2];
		locations[0] = createLocation("city", "country", "loc_name", "region", "state", "street", "zip");
		locations[1] = createLocation("city", "country", "loc_name", "region", "state", "street", "zip");
		return locations;
	}
	public Page mockPage() {
		Page page = new Page();
		page.setAbout(about);
		page.setCategory(category);
		page.setCurrentLocation(current_location);
		page.setDescription(description);
		page.setGeneralInfo(general_info);
		page.setGeneralManager(general_manager);
		page.setLink(link);
		page.setName(name);
		page.setPicture(createProfilePicture());
		page.setProducts(products);
		page.setSingleLineAddress(single_line_address);
		page.setWebsite(website);
		return page;
	}
	
	public ProfilePictureSource createProfilePicture() {
		ProfilePictureSource picture = new ProfilePictureSource();
		picture.setUrl(url);
		return picture;
	}
	
	public Location createLocation(String city, String country, String loc_name, String region, String state, String street, String zip) {
		Location location = new Location();
		location.setCity(city);
		location.setCountry(country);
		location.setName(loc_name);
		location.setRegion(region);
		location.setState(state);
		location.setStreet(street);
		location.setZip(zip);
		return location;
	}
}
