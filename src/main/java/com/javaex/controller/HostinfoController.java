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
import org.springframework.web.multipart.MultipartFile;

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
	
	//호스트 신청 폼
	@RequestMapping(value = "/hostjoin", method = { RequestMethod.GET, RequestMethod.POST })
	public String hostJoinForm(Model model) {
		System.out.println("[hostinfoController.hostJoinForm()]");
		
		//키워드 데이터 가져오기
		List<KeywordVo> keywordList = hostinfoService.getKeywordList();
		
		model.addAttribute("keywordList", keywordList);
		
		return "/han/hostJoinForm";
	}
	
	//호스트 신청 - 1. 호스트 insert / user타입 update
	@ResponseBody
	@RequestMapping(value = "/hostinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public int hostinsert(@ModelAttribute HostVo hostVo) {
		System.out.println("[hostinfoController.hostinsert()]");
		System.out.println(hostVo);
		//호스트 insert하기
		hostinfoService.hostinsert(hostVo);
		//유저 유저타입 update하기
		hostinfoService.typeUpdate(hostVo.getUsersNo());
		int hostNo = hostVo.getHostNo();
		return hostNo;
		
	}
	//호스트 신청 - 2 호스트 사진 insert하기
	@ResponseBody
	@RequestMapping(value = "/hostphotoinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public int hostphotoinsert(@RequestParam("images") List<MultipartFile> files,
							   @RequestParam("hostNo") int hostNo) {
		System.out.println("[hostinfoController.hostphotoinsert()]");
		System.out.println(files);
		
		//호스트사진 insert하기
		for(MultipartFile file: files) {
			hostinfoService.fileupload(file, hostNo);
		}
		return hostNo;
	}	
	//호스트 신청 - 3 호스트 키워드 insert하기
	@ResponseBody
	@RequestMapping(value = "/hostkeywordinsert", method = { RequestMethod.GET, RequestMethod.POST })
	public int hostkeywordinsert(@RequestParam("keywordList") List<KeywordVo> keyList,
								  @RequestParam("hostNo") int hostNo) {
		System.out.println("[hostinfoController.hostkeywordinsert()]");
		
		System.out.println(keyList);
		//호스트키워드 insert하기
		
		return hostNo;
	}
	
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
			List<BookingVo> calendurList = hostinfoService.getCalendur(hostNo);
			
			model.addAttribute("hostVo", hostVo);
			model.addAttribute("keyList", keyList);
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("puppypoint", puppypoint);
			model.addAttribute("point", point);
			model.addAttribute("photoList", photoList);
			model.addAttribute("calendurList", calendurList);
			
			return "/han/hostinfo";
			
		} else {//호스트가 없음
			System.out.println("[실패: 없는 호스트 입니다.]");
			return "/han/booking";
		}
	}
	//사진 탭
	@ResponseBody
	@RequestMapping(value = "/getPhoto", method = { RequestMethod.GET, RequestMethod.POST })
	public List<PhotoVo> getPhoto(@ModelAttribute PhotoVo photoVo, Model model) {
		System.out.println("[hostinfoController.getPhoto()]");
		
		if("호스트사진".equals(photoVo.getCategory())) {
			return hostinfoService.getHostPhoto(photoVo.getHostNo());
		} else {
			return hostinfoService.getPhoto(photoVo);
		}
	}
	
	//예약페이지
	@RequestMapping(value = "/booking", method = { RequestMethod.GET, RequestMethod.POST })
	public String bookinginsertForm(@RequestParam("hostNo") int hostNo, Model model) {
		System.out.println("[hostinfoController.bookinginsertForm()]");
		
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
	
	//결제완료 페이지
	@RequestMapping(value = "/payment/{bookingNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String paymentForm(@PathVariable("bookingNo") int bookingNo, Model model) {
		System.out.println("[hostinfoController.paymentForm()]");
		
		//예약정보 가져오기
		BookingVo bookingVo = hostinfoService.getPaymentForm(bookingNo);
		HostVo hostVo = hostinfoService.getHost(bookingVo.getHostNo());
		
		model.addAttribute("bookingVo", bookingVo);
		model.addAttribute("hostVo", hostVo);
		
		return "/han/payment";
	}
	
	//결제
	@ResponseBody
	@RequestMapping(value = "/payment", method = { RequestMethod.GET, RequestMethod.POST })
	public int payment(@ModelAttribute BookingVo bookingVo) {
		System.out.println("[hostinfoController.payment()]");
		
		int count = hostinfoService.setPayment(bookingVo);
		
		return count;
	}
}