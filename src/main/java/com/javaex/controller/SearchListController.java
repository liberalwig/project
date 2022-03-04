package com.javaex.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.SearchListService;
import com.javaex.vo.HostVo;

@Controller
public class SearchListController {
	
	private SearchListService searchListService;
	
	@RequestMapping("searchList/{keyword}")
	public String searchList(Model model) {
		
		System.out.println("searchList.dao");
		
		List<HostVo> SearchListService = searchListService.searchList();
		
		model.addAttribute("SearchList", SearchListService);
		
		return"song/searchList";
	}

}
