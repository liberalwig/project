package com.javaex.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.HostService;
import com.javaex.vo.KeywordVo;

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private HostService hostService;

	// 호스트_1> 호스트+키워드 조인 폼 불러오기
	@RequestMapping("/hostJoinForm")
	public String hostJoinForm(Model model) {
		System.out.println("HostController > hostJoinForm()");
		
		List<KeywordVo> keyList = hostService.keywordSelect();			
		model.addAttribute("keyList", keyList);
		System.out.println("HostController > hostJoinForm() > keyList()");
		
		return "choe/hostJoinForm";
	}
	
	/*
	@ResponseBody
	@RequestMapping("/textArea")
	public void textArea(@RequestParam HashMap<String, Object> param) {
		System.out.println("HostController > hostJoin()");
		
		
		System.out.println(param.get("input-intro"));
		System.out.println(param.get("input-asking"));

		
	}

	*/



	/*
	// 호스트_2> 호스트+키워드 조인
	@RequestMapping("/hostJoin")
	public String hostJoin(@ModelAttribute HostVo hostVo,
																					KeywordVo keywordVo, 
																					HttpSession session) {
		System.out.println("HostController > hostJoin");

		hostService.hostInsert(hostVo);
	
		return "redirect:/";
	}
	
	*/
	
	/*
	@RequestMapping("/keyword")
	public static void main(String[] args) { 
		int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
			for(int i : array) { 
				System.out.print(" " + i); 
			} 
	} 
	
	*/
	
	/*
	//  키워드: 리스트로 받기
	@RequestMapping("/keyword")
	public Map<String, Object> jsonList(@RequestParam Map<String, Object> parameters){
		String json = parameters.get("list").toString();
		ObjectMapper mapper = new ObjectMapper();
		
  
		return null;
		}
	*/
	
	
	//totalHostVo
	
	
	
	
	
	
	
	
	
	
	
	// 호스트_3> 호스트 수정 폼
	@RequestMapping("/hostModifyForm")
	public String hostModifyForm() {
		System.out.println("HostController > hostModifyForm()");

		return "choe/hostModifyForm";
	}
	
	
	// 호스트_4> 호스트 수정
	
}	