package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.ShopService;
import com.javaex.vo.ItemVo;

@Controller
@RequestMapping(value = "/shop", method = { RequestMethod.GET, RequestMethod.POST })
public class ShopController {

	@Autowired
	ShopService shopService;
	
	//상품 리스트 폼
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopListForm(Model model) {
		System.out.println("[ShopController.shopListForm()]");
		
		List<ItemVo> itemList = shopService.getItemList();
		model.addAttribute("itemList", itemList);
		
		return "/shop/shopList";
	}
	
	//상품 상세 정보 폼
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String shopInfoForm(@RequestParam("itemNo") int itemNo,
							   Model model) {
		System.out.println("[ShopController.shopInfoForm()]");
		
		ItemVo itemVo = shopService.getItem(itemNo);
		model.addAttribute("itemVo", itemVo);
		
		return "/shop/shopInfo";
	}
	//장바구니 추가
	@ResponseBody
	@RequestMapping(value = "/cartinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public int cartInsert(@ModelAttribute ItemVo itemVo) {
		System.out.println("[ShopController.cartinsert()]");
		
		int count = shopService.cartInsert(itemVo);
		
		return count;
	}
	
	//상품 결제 폼
	@RequestMapping(value = "/pay", method = { RequestMethod.GET, RequestMethod.POST })
	public String payForm(@RequestParam ("itemNo") int itemNo,
						  Model model) {
		System.out.println("[ShopController.payForm()]");
		
		return "/shop/shopPay";
	}
	
	//쇼핑 내역
	@RequestMapping(value = "/myshoplist", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopList(Model model) {
		System.out.println("[ShopController.myshoplist()]");
		
		return "/shop/myShopList";
	}
	
	//쇼핑카트 내역
	@RequestMapping(value = "/myshopcart", method = { RequestMethod.GET, RequestMethod.POST })
	public String myShopCart(Model model) {
		System.out.println("[ShopController.myshopcart()]");
		
		return "/shop/myShopCart";
	}
}
