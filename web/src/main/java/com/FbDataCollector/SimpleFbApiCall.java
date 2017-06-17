package com.FbDataCollector;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.restfb.DefaultFacebookClient;
import com.restfb.Facebook;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.Version;
import com.restfb.types.Location;
import com.restfb.types.Page;

public class SimpleFbApiCall {

	public Page grabFBPageInfo(String company) {
		FacebookClient facebookClient = new DefaultFacebookClient(MY_ACCESS_TOKEN, Version.LATEST);
		return facebookClient.fetchObject(company, Page.class, Parameter.with("fields", FIELDS_TO_QUERY));
	}
	
	public ArrayList<Location> grabFbPageLocations(String company) {
		FacebookClient facebookClient = new DefaultFacebookClient(MY_ACCESS_TOKEN, Version.LATEST);
		Page page = facebookClient.fetchObject(company, Page.class, Parameter.with("fields", "location,locations,contact_address,current_location,single_line_address"));
		
		ArrayList<Location> locations = new ArrayList<Location>();
		locations.add(page.getLocation());
//		locations.add(page.addr);
		
		return locations;
	}
	
	@SuppressWarnings("unused")
	private static void createJsonFile(String company, Page page) {
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			mapper.writeValue(new File("src/parsedJsonFb/" + company + ".json"), page);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static final String MY_ACCESS_TOKEN = "EAACEdEose0cBALZCgQ6hgkTQH16GwAo1djbzLL0YZC0dLCRXcHPKWvQmzQXBQYtk7MMDzBJdZAYL3E325kBtrJKE3QMVn6E9wWleyE76xCqC13DLDzadqXd782rnAZCd6415RHxKmZBZArGWaFPVmeV1GATDKJLyn2ZCjQCr7SaIxUCRNZAV1q6HMs2RlpBSMcIZD";
	private static final String FIELDS_TO_QUERY = ""
			+ "about,"
			+ "category,"
			+ "category_list,"
			+ "contact_address,"
			+ "current_location,"
			+ "description,"
			+ "general_info,"
			+ "general_manager,"
			+ "global_brand_children,"
			+ "global_brand_page_name,"
			+ "global_brand_root_id,"
			+ "id,"
			+ "link,"
			+ "locations{name,location},"
			+ "milestones.limit(2),"
			+ "name,"
			+ "picture," 
			+ "products,"
			+ "product_catalogs{name},"
			+ "single_line_address,"
			+ "website";

	private static final String FIELDS_TO_QUERY_WITH_CAR_AND_RESTAURANT = ""
			+ "about,"
			+ "category,"
			+ "category_list,"
			+ "contact_address,"
			+ "current_location,"
			+ "description,"
			+ "general_info,"
			+ "general_manager,"
			+ "global_brand_children,"
			+ "global_brand_page_name,"
			+ "global_brand_root_id,"
			+ "id,"
			+ "link,"
			+ "locations{name,location},"
			+ "milestones.limit(2),"
			+ "name,"
			+ "picture,"
			+ "product_catalogs{name},"
			+ "single_line_address,"
			+ "website,"
			+ "restaurant_services,"
			+ "restaurant_specialties,"
			+ "built,"
			+ "features,"
			+ "mpg";
}


class Data {
	 @Facebook
	 String data;

}
