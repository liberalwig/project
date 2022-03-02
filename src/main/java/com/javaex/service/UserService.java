package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	// 유저_1> 유저 수정 폼
	@RequestMapping("/hostModifyForm")
	public String userModifyForm() {
		System.out.println("[ UserController > userModifyForm() ]");

		return "/choe/hostModifyForm";
	}
}