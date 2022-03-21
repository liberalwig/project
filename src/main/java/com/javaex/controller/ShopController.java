package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/shop", method = { RequestMethod.GET, RequestMethod.POST })
public class ShopController {

	//상품 정보 폼
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopInfo(Model model) {
		System.out.println("[ShopController.shopInfo()]");
		
		return "/host/shopInfo";
	}
}
