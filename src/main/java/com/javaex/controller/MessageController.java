package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.MessageService;
import com.javaex.vo.MessageVo;

@Controller
public class MessageController {
	
	@Autowired
	MessageService messageService;
	
	@RequestMapping(value="/message", method = {RequestMethod.GET, RequestMethod.POST})
	public String message( @RequestParam int usersNo,
						   	Model model) {
		
		//메세지 주인 가져오기
		MessageVo messageVo = messageService.getUser(usersNo);
		
		model.addAttribute("messageVo", messageVo);
		System.out.println(messageVo+"컨트롤러");
		
		//map으로 리스트와 정보 가져오기
		Map<String, Object> map = messageService.getMap(usersNo);
		System.out.println(map+"맵 컨트롤러");
		model.addAttribute("map", map);
		 
		return "kang/message";
		
	}
	
	//메세지 가져오기
	@RequestMapping(value="/message/getm", method = {RequestMethod.GET, RequestMethod.POST})
	public String getM( @ModelAttribute MessageVo messageVo,
							@RequestParam int usersNo,
							@RequestParam int roomNo,
						   	Model model){
		
		List<MessageVo> mList = messageService.getMessage(roomNo);
		model.addAttribute("mList", mList);
		System.out.println(mList +"mList컨트롤러");
		
		return "redirect:/message?usersNo="+usersNo;
	}
	
	
	
	@RequestMapping(value="/message/setm", method = {RequestMethod.GET, RequestMethod.POST})
	public String setM( @ModelAttribute MessageVo messageVo,
							@RequestParam int usersNo,
							@RequestParam int roomNo,
						   	Model model,
						   	HttpSession session) {
		
		//메세지 작성
		System.out.println(messageVo);
		messageService.sentM(messageVo);
		System.out.println("인서트 컨트롤러");
		
		
		return "redirect:/message?usersNo="+usersNo;
	}
	
	//맨처음 대화 시작하기
//	@RequestMapping(value="/message/setm", method = {RequestMethod.GET, RequestMethod.POST})
//	public String startM( @ModelAttribute MessageVo messageVo,
//							@RequestParam int usersNo,
//						   	Model model,
//						   	HttpSession session) {
//		
//		
//	}
	
	
	//메세지 읽기
//	@RequestMapping(value="/message/read", method = {RequestMethod.GET, RequestMethod.POST})
//	public String read( @RequestParam int usersTo,
//						   	Model model) {
//		
//		MessageVo rVo = messageService.getUser(usersTo);
//		
//		model.addAttribute("messageVo", rVo);
//		System.out.println(rVo+"컨트롤러");
//		
//		
//		return "kang/message";
//		
//	}
	
	//한번 해보는겨
//	public int once(int usersFrom) {
//		
//		MessageVo nVo = messageService.getN(usersFrom); 
//		System.out.println(nVo+"nVo컨트롤러");
//		
//		return usersFrom;
//		
//	}
	
	
}
