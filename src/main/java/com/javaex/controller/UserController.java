package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/user", method = { RequestMethod.GET, RequestMethod.POST })
public class UserController {
   
   @Autowired
   private UserService userService;
   
   // 유저_1> 유저 수정 폼
   @RequestMapping( "/userModifyForm")
   public String UserModifyForm() {
      System.out.println("[ UserController > userModifyForm() ]");
      
      return "choe/userModifyForm";
   }
   
      
	// 유저_2> 유저 정보수정 시 프로필사진 업데이트
	@ResponseBody
	@RequestMapping("/profileUpdate")
	public String profileUpdate(@PathVariable("usersNo") int usersNo,
			 					@RequestParam("file") MultipartFile file,
							   @ModelAttribute UserVo userVo) {
		System.out.println("UserController > profilieUpdate()");
				
		//유저 사진 update하기
		userVo.setUsersNo(usersNo);
		userService.profileUpdate(file, userVo);
		
		return "song/index";
	}	
   
      
   // 유저_3> 찜
   @RequestMapping(value="/heart")
   public String heart() {
      System.out.println("[ UserController > heart() ]");

      return"choe/heart";
   }
}