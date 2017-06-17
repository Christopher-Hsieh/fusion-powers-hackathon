package com.FbDataCollector;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.restfb.types.Location;
import com.restfb.types.Page;

public class ExampleUsageFbCalls {

	public static void testMyFbMock() throws JsonProcessingException {
		// MyFbMock - All the data in one object
		MyFbData myFbMock = new MyFbData();
		
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("MyFbMock: " + mapper.writeValueAsString(myFbMock));
	}
	
//	public void testApiCall()  {
//		// Real call to api to get info
//		SimpleFbApiCall.grabFBPageInfo("cocacola");
//	}
	
	public static void testMockApiCall() throws JsonProcessingException {
		// Mock of Real call
		SimpleFbApiCallMock mock = new SimpleFbApiCallMock();
		Page mockedPage = mock.mockPage();
		Location mockedLocation = mock.createLocation("city", "country", "loc_name", "region", "state", "street", "zip");
		
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("Mocked Page: " + mapper.writeValueAsString(mockedPage));
		System.out.println("Mocked Location: " + mapper.writeValueAsString(mockedLocation));
	}
}
