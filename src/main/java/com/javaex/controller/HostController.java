package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.HostService;
import com.javaex.vo.HostVo;

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private HostService hostService;

	//호스트_1> 호스트 수정 폼
	@RequestMapping("/hostModifyForm")
	public String hostModifyForm(@RequestParam("hostNo") int hostNo, Model model) {
		System.out.println("HostController > hostModifyForm()");

		HostVo hostVo = hostService.hostModifyForm(hostNo);
		model.addAttribute("hostVo", hostVo);
		
		return "choe/hostModifyForm";
	}
	
	
	/*
	//호스트_2> 호스트 수정
	@RequestMapping("/hostModify")
	public String hostModify(@ModelAttribute HostVo hostVo, HttpSession session) {
		System.out.println("HostController > hostModify()");
		
		// 세션에서 로그인한 호스트 정보 가져오기
		HostVo authHost = (HostVo) session.getAttribute("authHost");

	
		// 로그인한 호스트 호스트no값 추가
		hostVo.setHostNo(hostNo);

		// hostService를 통해 로그인한 호스트 정보 수정
		hostService.hostModify(hostVo);
		
		return "";
	}
	*/
	
	
}	