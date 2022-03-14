package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	SqlSession sqlSession;
	
	
	// 유저_2> 유저 정보수정 시 프로필사진 업데이트
		public void profileUpdate(UserVo userVo) {
			System.out.println("UserDao > profileUpdate()");
			
			sqlSession.update("user.profileUpdate", userVo);
		}
	
}
