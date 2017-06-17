package com.websystique.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.FbDataCollector.MyFbData;
import com.FbDataCollector.SimpleFbApiCall;
import com.FbDataCollector.SimpleFbApiCallMock;

@RestController
@RequestMapping("/api")
public class RestApiController {

	public static final Logger logger = LoggerFactory.getLogger(RestApiController.class);

//	@Autowired
//	UserService userService; //Service which will do all data retrieval/manipulation work
//

	@RequestMapping(value = "/FbMockData/", method = RequestMethod.GET)
	public ResponseEntity<MyFbData> getMockFbData() {
		
		SimpleFbApiCallMock mock = new SimpleFbApiCallMock();
		MyFbData myFbData = new MyFbData();
		
		myFbData.setDataFromPage(mock.mockPage());
		myFbData.setLocations(mock.mockLocations());
		return new ResponseEntity<MyFbData>(myFbData, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/FbData/{company-page}", method = RequestMethod.GET)
	public ResponseEntity<MyFbData> getFbData(@PathVariable("company-page") String company) {
		
		SimpleFbApiCall fbApi = new SimpleFbApiCall();
		MyFbData myFbData = new MyFbData();
		
		myFbData.setDataFromPage(fbApi.grabFBPageInfo(company));
		myFbData.setLocations(fbApi.grabFbPageLocations(company));
		return new ResponseEntity<MyFbData>(myFbData, HttpStatus.OK);
	}

}