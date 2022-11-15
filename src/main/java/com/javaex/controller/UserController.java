package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
   
   private final UserService userService;

	public UserController(UserService userService) {
		this.userService = userService;
	}

	// 유저_1> 유저 수정 폼
   @RequestMapping("/userModifyForm")
   public String userModifyForm(@RequestParam("usersNo") int usersNo, Model model){
      System.out.println("UserController > userModifyForm()");
      
      //유저 데이터 적어주기
      UserVo userVo = userService.modifyForm(usersNo);
      
      model.addAttribute("userVo", userVo);
      
      return "user/userModifyForm";
   };
  
   // 유저_2> 유저 수정
   @ResponseBody
   @RequestMapping("/modify")
	public int modify(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("UserController > modify()");

		// userService를 통해 로그인한 사용자 정보 수정
		int count = userService.modify(userVo);

		// 세션에 정보 수정
		//UserVo authUser = (UserVo)session.getAttribute("authUser");
		//authUser.setName(userVo.getName());
		//session.setAttribute("authUser", authUser);
		
		return count;
	};
      
	// 유저_3> 유저 정보수정 시 프로필사진 업데이트
	@ResponseBody
	@RequestMapping("/profileUpdate")
	public int profileUpdate(@RequestParam("images") List<MultipartFile> files,
							    @ModelAttribute UserVo userVo,
							    HttpSession session) {
		System.out.println("UserController > profilieUpdate()");
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		userVo.setUsersNo(authUser.getUsersNo());
		
		//유저 사진 update하기
		for(MultipartFile file: files) {
			System.out.println(files);
			userService.profileUpdate(file, userVo);
		}
		return 1;
	};
}