package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.SearchListService;
import com.javaex.vo.SearchListVo;

@Controller
public class SearchListController {
	@Autowired
	private SearchListService searchListService;
	
	@RequestMapping("/searchList")
	public String searchList(@ModelAttribute SearchListVo searchListVo, ModelMap model ) {
		
		System.out.println("searchList.controller");
		
		System.out.println(searchListVo);
		
		List<SearchListVo> SearchList = searchListService.searchListD(searchListVo);
	
		
	
		model.addAttribute("searchList", SearchList);
		
		return"song/searchList";
	}
	
	
}
