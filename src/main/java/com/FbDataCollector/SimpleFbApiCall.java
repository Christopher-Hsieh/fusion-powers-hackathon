package com.FbDataCollector;


import java.io.File;
import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.Version;
import com.restfb.types.Page;

public class SimpleFbApiCall {


	public static void grabFBPageInfo(String company) {
		FacebookClient facebookClient = new DefaultFacebookClient(MY_ACCESS_TOKEN, Version.LATEST);
		Page page = facebookClient.fetchObject(company, Page.class, Parameter.with("fields", FIELDS_TO_QUERY));
		createJsonFile(company, page);
	}
	
	private static void createJsonFile(String company, Page page) {
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			mapper.writeValue(new File("src/parsedJsonFb/" + company + ".json"), page);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static final String MY_ACCESS_TOKEN = "EAACEdEose0cBAPXy6sDevJPWwfZAZBRo1ymanTWgWRLaaNGQt6W6Hz0MbevER64I24l2wBSswASer5uZAnjbt8eagbRtBg2uMlbquncHNBHLcZCZA2ZCMxeZAhPCZCCoETxDzQiZA3AvMsSLpZBYBFDByUPsZBKntbIhnJEEKwMinjcZALxZAh7ox3KNNspZCKUZCcIcZBcZD";
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



