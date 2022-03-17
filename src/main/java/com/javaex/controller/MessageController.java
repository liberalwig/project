package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		//리스트 불러오기
		List<MessageVo> mList = messageService.messageList(usersNo);
		model.addAttribute("mList", mList);
		System.out.println(mList + "컨트롤러");
		
		//메세지 정보 가져오기
		
		 MessageVo getMInfo = messageService.getmUser(usersNo);
		 model.addAttribute("getMInfo", getMInfo);
		 
		
		return "kang/message";
		
	}
	
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
