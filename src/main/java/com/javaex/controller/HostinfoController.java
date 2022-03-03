package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostinfoService;
import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;

@Controller
@RequestMapping(value = "/host2", method = { RequestMethod.GET, RequestMethod.POST })
public class HostinfoController {
	
	@Autowired
	HostinfoService hostinfoService;
	
	@RequestMapping(value = "/info/{hostNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String hostinfo(@PathVariable("hostNo") int hostNo, Model model) {
		System.out.println("[hostinfoController.hostinfo()]");

		int authNo = hostinfoService.checkNo(hostNo);
		
		if(authNo > 0) {//호스트가 있음
			//호스트 정보 리스트 가져오기
			HostVo hostVo = hostinfoService.getHost(hostNo);
			List<KeywordVo> keyList = hostinfoService.getKeyword(hostNo);
			
			model.addAttribute("hostVo", hostVo);
			model.addAttribute("keyList", keyList);
			//리뷰 및 점수 계산해서 가져오기
			
			return "/han/hostinfo";
			
		} else {//호스트가 없음
			System.out.println("[실패: 없는 호스트 입니다.]");
			return "/han/booking";
		}
	}
	
	@RequestMapping(value = "/booking", method = { RequestMethod.GET, RequestMethod.POST })
	public String booking() {
		System.out.println("[hostinfoController.booking()]");
		
		return "/han/booking";
	}
}
