package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class MainController {
	
	@Controller
	public class BlogController {

		//블로그-메인	
			@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
			public String Main() {
				
				return "song/index";
			}

	}	
	
}