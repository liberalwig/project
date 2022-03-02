package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;

@Controller
@RequestMapping(value = "/user", method = { RequestMethod.GET, RequestMethod.POST })
public class UserController {
   
   @Autowired
   private UserService userService;
   
   // 유저_1> 유저 수정 폼
   @RequestMapping( "/userModifyForm")
   public String UserModifyForm() {
      System.out.println("[ UserController > userModifyForm() ]");
      
      return "/choe/guestModifyForm";
   }
   
   // 유저_2> 찜
   @RequestMapping(value="/heart")
   public String heart() {
      System.out.println("[ UserController > heart() ]");

      return"choe/heart";
   }
}