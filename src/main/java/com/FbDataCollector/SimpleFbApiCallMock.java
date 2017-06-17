package com.FbDataCollector;

import java.util.ArrayList;

import com.restfb.types.Location;
import com.restfb.types.Page;
import com.restfb.types.ProfilePictureSource;

public class SimpleFbApiCallMock {
	String about = "About the company";
	String category = "Category of the company";
	String description = "Description of company";
	String general_info = "General info of company";
	String link = "Link to facebook page";
	String name = "Name of company";
	String website = "Website of company";
	String url = "Url to Profile picture";
	String products = "Products description for company";

	
	public ArrayList<String> mockProducts() {
		ArrayList<String> products = new ArrayList<String>();
		products.add("product_one");
		products.add("product_two");
		
		return products;
	}
	
	public ArrayList<Location> mockLocations() {
		ArrayList<Location> locations = new ArrayList<Location>();
		locations.add(createLocation("city1", "country1", "loc_name1", "region1", "state1", "street1", "zip1"));
		locations.add(createLocation("city2", "country2", "loc_name2", "region2", "state2", "street2", "zip2"));
		return locations;
	}
	
	public Page mockPage() {
		Page page = new Page();
		page.setAbout(about);
		page.setCategory(category);
		page.setDescription(description);
		page.setGeneralInfo(general_info);
		page.setLink(link);
		page.setName(name);
		page.setPicture(createProfilePicture());
		page.setWebsite(website);
		page.setProducts(products);
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
