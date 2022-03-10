package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.FinishPService;
import com.javaex.vo.FinishPVo;

@Controller
public class FinishPController {
	
	@Autowired
	public FinishPService finishPService;
	
	@RequestMapping(value="/finishP", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishP(@ModelAttribute FinishPVo finishPVo,
						  @RequestParam("bookingNo")int bookingNo) {
		System.out.println("여기는 컨트롤러");	
		finishPVo = finishPService.getBills(finishPVo);
		
		return "kang/finishP";
	}

}
