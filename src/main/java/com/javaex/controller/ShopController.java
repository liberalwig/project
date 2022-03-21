package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/shop", method = { RequestMethod.GET, RequestMethod.POST })
public class ShopController {

	//상품 리스트 폼
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopListForm(Model model) {
		System.out.println("[ShopController.shopListForm()]");
		
		return "/shop/shopList";
	}
	
	//상품 상세 정보 폼
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopInfoForm(Model model) {
		System.out.println("[ShopController.shopInfoForm()]");
		
		return "/shop/shopInfo";
	}
	
	//상품 결제 폼
	@RequestMapping(value = "/pay", method = { RequestMethod.GET, RequestMethod.POST })
	public String payForm(Model model) {
		System.out.println("[ShopController.payForm()]");
		
		return "/shop/shopPay";
	}
}
