package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.SearchListService;
import com.javaex.vo.SearchListVo;

@Controller
public class SearchListController {
	@Autowired
	private SearchListService searchListService;
	
	@RequestMapping("/searchList")
	public String searchList(ModelMap model, SearchListVo searchListVo) {
		
		System.out.println("searchList.dao");
		
		List<SearchListVo> SearchListService = searchListService.searchList(searchListVo);
		
		model.addAttribute("SearchList", SearchListService);
		
		return"song/searchList";
	}
	
//	@RequestMapping("/search")
//	public String searchListSeoul(Model model, @RequestParam(value="keyword", required=false, defaultValue ="")  String searchKeyword, String searchData) {
//		
//		System.out.println("searchList.dao");
//		
//		Map<String, Object> pMap = searchListService.Search(keyword);
//		model.addAttribute("pMap", pMap);
//		
//		
//		return"song/searchList";
//	}

}
