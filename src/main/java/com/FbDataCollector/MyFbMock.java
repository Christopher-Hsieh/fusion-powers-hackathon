package com.FbDataCollector;

import java.util.ArrayList;

import com.restfb.types.Location;
import com.restfb.types.Page;

public class MyFbMock {
	
	public void setDataFromPage(Page mockPage) {
		setAbout(mockPage.getAbout());
		setCategory(mockPage.getCategory());
		setDescription(mockPage.getDescription());
		setGeneral_info(mockPage.getGeneralInfo());
		setLink(mockPage.getLink());
		setName(mockPage.getName());
		setWebsite(mockPage.getWebsite());
		setPictureUrl(mockPage.getPicture().getUrl());
	}
	
	String about = "";
	String category = "";
	String description = "";
	String general_info = "";
	String link = "";
	String name = "";
	String website = "";
	String picture_url = "";
	
	ArrayList<String> products;
	ArrayList<Location> locations;
	
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getGeneral_info() {
		return general_info;
	}
	public void setGeneral_info(String general_info) {
		this.general_info = general_info;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getPictureUrl() {
		return picture_url;
	}
	public void setPictureUrl(String picture_url) {
		this.picture_url = picture_url;
	}
	public ArrayList<String> getProducts() {
		return products;
	}
	public void setProducts(ArrayList<String> products) {
		this.products = products;
	}
	public ArrayList<Location> getLocations() {
		return locations;
	}
	public void setLocations(ArrayList<Location> locations) {
		this.locations = locations;
	}

	
}
