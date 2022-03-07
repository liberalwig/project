package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostinfoService;
import com.javaex.vo.BookingVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;
import com.javaex.vo.PhotoVo;
import com.javaex.vo.ReviewVo;

@Controller
@RequestMapping(value = "/host2", method = { RequestMethod.GET, RequestMethod.POST })
public class HostinfoController {
	
	@Autowired
	HostinfoService hostinfoService;
	
	//호스트 정보
	@RequestMapping(value = "/info/{hostNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String hostinfoForm(@PathVariable("hostNo") int hostNo, Model model) {
		System.out.println("[hostinfoController.hostinfoForm()]");

		int authNo = hostinfoService.checkNo(hostNo);
		
		if(authNo > 0) {//호스트가 있음
			//호스트 정보 리스트 가져오기
			HostVo hostVo = hostinfoService.getHost(hostNo);
			List<KeywordVo> keyList = hostinfoService.getKeyword(hostNo);
			List<ReviewVo> reviewList = hostinfoService.getReview(hostNo);
			double puppypoint = hostinfoService.getPuppyPoint(hostNo);
			ReviewVo point = hostinfoService.getPoint(hostNo);
			List<PhotoVo> photoList = hostinfoService.getHostPhoto(hostNo);
			
			model.addAttribute("hostVo", hostVo);
			model.addAttribute("keyList", keyList);
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("puppypoint", puppypoint);
			model.addAttribute("point", point);
			model.addAttribute("photoList", photoList);
			
			return "/han/hostinfo";
			
		} else {//호스트가 없음
			System.out.println("[실패: 없는 호스트 입니다.]");
			return "/han/booking";
		}
	}
	
	//예약페이지
	@RequestMapping(value = "/booking", method = { RequestMethod.GET, RequestMethod.POST })
	public String bookingForm(@RequestParam("hostNo") int hostNo, Model model) {
		System.out.println("[hostinfoController.bookingForm()]");
		
		HostVo hostVo = hostinfoService.getHost(hostNo);
		
		model.addAttribute("hostVo", hostVo);
		
		return "/han/booking";
	}
	
	//예약처리
	@ResponseBody
	@RequestMapping(value = "/bookinginsert", method = { RequestMethod.GET, RequestMethod.POST })
	public void bookinginsert(@ModelAttribute BookingVo bookingVo) {
		System.out.println("[hostinfoController.bookinginsert()]");
		
		hostinfoService.checkdays(bookingVo);//일수 계산
		hostinfoService.bookinginsert(bookingVo);
		
		System.out.println(bookingVo);
	}
}