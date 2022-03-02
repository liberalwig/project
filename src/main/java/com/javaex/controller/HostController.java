package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostService;

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private HostService hostService;

	// 호스트_1> 호스트 조인 폼
	@RequestMapping(value = "/hostJoinForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String hostJoinForm() {
		System.out.println("[ HostController > hostJoinForm() ]");

		return "/choe/hostJoinForm";
	}

	// 호스트_2> 호스트 조인
	
	
	// 호스트_3> 호스트 수정 폼
	@RequestMapping("/hostModifyForm")
	public String hostModifyForm() {
		System.out.println("[ HostController > hostModifyForm() ]");

		return "/choe/hostModifyForm";
	}
	
	
	// 호스트_4> 호스트 수정
	
}	