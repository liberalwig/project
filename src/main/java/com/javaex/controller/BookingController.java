package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BookingService;
import com.javaex.vo.BookingVo;
import com.javaex.vo.PhotoVo;

@Controller
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	
	//결제대기화면(게스트)띄우기
	@RequestMapping("/bookingBeforeGuest")
	public String bookingBeforeGuest(Model model, @RequestParam int usersNo) {
		System.out.println("결제대기(게스트)");
		
		//예약 + 호스트 리스트 가져오기
		List<BookingVo> BookingList = bookingService.bookingBeforeGuest(usersNo);
		
		model.addAttribute("bList", BookingList);
		
		return "yu/reservation-guest";
	}
	
	//예약상세페이지 띄우기(게스트)
	@RequestMapping("/bookingDetailGuest")
	public String bookingDetailGuest(Model model, @RequestParam int bookingNo) {
		System.out.println("결제대기(게스트)");
		
		//예약 + 호스트 가져오기
		BookingVo bvo = bookingService.bookingDetailGuest(bookingNo);
		model.addAttribute("bvo", bvo);
		
		//포토 리스트 가져오기
		List<PhotoVo> pList = bookingService.bookingGallery(bookingNo);
		model.addAttribute("pList", pList);
		
		return "yu/bookingDetail-guest";
	}
	

}
