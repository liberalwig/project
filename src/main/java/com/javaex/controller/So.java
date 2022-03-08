package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.FinishPService;
import com.javaex.service.ReviewService;
import com.javaex.vo.FinishPVo;
import com.javaex.vo.ReviewVo;

@Controller
public class So {
	
	@Autowired
	public FinishPService finishPService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/so", method = {RequestMethod.GET, RequestMethod.POST})
	public String mmessage() {
		System.out.println("[MainController.main()]");
		
		return "kang/message";
	}
	
	@RequestMapping(value="/so1", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishP(@PathVariable("bookingNo") int bookingNo,
							@ModelAttribute FinishPVo finishPVo) {
		System.out.println("여기는 컨트롤러");	
		
		List<FinishPVo> authP = finishPService.getBills(finishPVo);
		System.out.println(authP);
		
		
		return "kang/finishP";
	}
	
	@RequestMapping(value="/so2", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishR() {
		System.out.println("[MainController.main()]");
		
		return "kang/finishR";
	}
	
	@RequestMapping(value="/so3", method = {RequestMethod.GET, RequestMethod.POST})
	public String review() {
		System.out.println("[리뷰 시작]");
		
		return "kang/review";
	}
	
	@RequestMapping(value="/reviewF", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewF(@ModelAttribute ReviewVo reviewVo,
						  @RequestParam("bookingNo")int bookingNo) {
		System.out.println("[리뷰 보냄]");
		reviewService.review(reviewVo);
		
		System.out.println(reviewVo +"컨트롤러");
		return "kang/review";
	}
	
	
	

}


