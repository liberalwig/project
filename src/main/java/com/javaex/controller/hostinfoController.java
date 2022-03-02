package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/hostinfo", method = { RequestMethod.GET, RequestMethod.POST })
public class hostinfoController {
	
	@RequestMapping(value = "/hostid", method = { RequestMethod.GET, RequestMethod.POST })
	public String hostinfo() {
		System.out.println("[hostinfoController.hostinfo()]");
		
		return "/han/hostinfo";
	}
	
	@RequestMapping(value = "/booking", method = { RequestMethod.GET, RequestMethod.POST })
	public String booking() {
		System.out.println("[hostinfoController.booking()]");
		
		return "/han/booking";
	}
}
