package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.FinishPService;
import com.javaex.vo.FinishPVo;

@Controller
public class FinishPController {
	
	@Autowired
	public FinishPService finishPService;
	
	@RequestMapping(value="/finishP/{bookingNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishP(@PathVariable("bookingNo") int bookingNo,
			   			  @ModelAttribute FinishPVo finishPVo) {
		System.out.println("여기는 컨트롤러");	
		finishPVo = finishPService.getBills(bookingNo);
		
		System.out.println(finishPVo + "컨트롤러");
		return "kang/finishP";
	}
	
	@RequestMapping(value="/finishPay/{bookingNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishPay(@PathVariable("bookingNo") int bookingNo,
			   			  @ModelAttribute FinishPVo finishPVo) {
		System.out.println("여기는 컨트롤러");	
		FinishPVo pay = finishPService.getpay(finishPVo);
		
		System.out.println(pay + "컨트롤러 ");
		return "kang/finishP";
	}

}
