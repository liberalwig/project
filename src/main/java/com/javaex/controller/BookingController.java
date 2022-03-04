package com.javaex.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BookingService;
import com.javaex.vo.BookingVo;
import com.javaex.vo.PhotoVo;

@Controller
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	
	//달력
	@ResponseBody
	@RequestMapping("/calendar")
	public List<BookingVo> date(@RequestParam int hostNo) {
		
		//예약 + 게스트 리스트 가져오기
		List<BookingVo> bList = bookingService.bookingBeforeHost(hostNo);
		
		return bList;
	}
	
	
	//결제대기화면(게스트)띄우기
	@RequestMapping("/bookingBeforeGuest")
	public String bookingBeforeGuest(Model model, @RequestParam int usersNo) {
		System.out.println("결제대기(게스트)");
		
		//예약 + 호스트 리스트 가져오기
		List<BookingVo> BookingList = bookingService.bookingBeforeGuest(usersNo);
		
		model.addAttribute("bList", BookingList);
		
		return "yu/reservation-guest";
	}
	
	//결제대기화면(호스트)띄우기
	@RequestMapping("/bookingBeforeHost")
	public String bookingBeforeHost(Model model, @RequestParam int hostNo) {
		System.out.println("결제대기(호스트)");
		
		//예약 + 게스트 리스트 가져오기
		List<BookingVo> BookingList = bookingService.bookingBeforeHost(hostNo);
		
		model.addAttribute("bList", BookingList);
		
		return "yu/reservation-host";
	}
	
	//결제대기화면(호스트)띄우기
	@RequestMapping("/bookingBeforeHostDate")
	public String bookingBeforeHost(Model model, @RequestParam int hostNo, @RequestParam String date) {
		System.out.println("결제대기날짜입력(호스트)");
		
		BookingVo bookingVo = new BookingVo();
		bookingVo.setCheckin(date);
		bookingVo.setHostNo(hostNo);
		
		//예약 + 게스트 리스트 가져오기
		List<BookingVo> BookingList = bookingService.bookingDateList(bookingVo);
		
		model.addAttribute("bList", BookingList);
		
		return "yu/reservation-host";
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
	
	//예약상세페이지 띄우기(호스트)
	@RequestMapping("/bookingDetailHost")
	public String bookingDetailHost(Model model, @RequestParam int bookingNo) {
		System.out.println("결제대기(호스트)");
		
		//예약 + 호스트 가져오기
		BookingVo bvo = bookingService.bookingDetailHost(bookingNo);
		model.addAttribute("bvo", bvo);
		
		//포토 리스트 가져오기
		List<PhotoVo> pList = bookingService.bookingGallery(bookingNo);
		model.addAttribute("pList", pList);
		
		return "yu/bookingDetail-host";
	}
	
	@ResponseBody
	@RequestMapping("/photoInsert")
	public String photoInsert(@RequestParam int bookingNo, @ModelAttribute HashMap<String, Object> map) {
		System.out.println("사진업로드");
		
		System.out.println(map.get("photoPath"));
		System.out.println(map.get("photoTitle"));
		System.out.println(map.get("category"));
		
		return "redirect:/bookingDetailHost?bookingNo="+bookingNo;
	}
	

}
