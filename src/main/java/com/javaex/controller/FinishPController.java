package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.FinishPService;
import com.javaex.vo.BookingVo;
import com.javaex.vo.FinishPVo;

@Controller
public class FinishPController {
	
	@Autowired
	public FinishPService finishPService;
	
	@RequestMapping(value="/finishP", method = {RequestMethod.GET, RequestMethod.POST})
	public String finishP(@PathVariable("bookingNo") int bookingNo, 
			   			  @ModelAttribute FinishPVo finishPVo,
			   			  @RequestParam int usersNo,
			   			  Model model) { 
		System.out.println("여기는 컨트롤러");	
		
		finishPVo = finishPService.getBills(bookingNo);
		
		model.addAttribute("finishPVo", finishPVo);
		
		System.out.println(finishPVo + "컨트롤러");
		return "kang/finishP";
	}
	
	@RequestMapping("/updateStatusP")
	public String updateStatus(BookingVo bookingVo) {
		System.out.println("상태 컨트롤러");
		int no = bookingVo.getUsersNo();
		System.out.println(no);
		finishPService.updateStatusP(bookingVo.getBookingNo());
		String result = "s";
		return result;
	}
	

}
