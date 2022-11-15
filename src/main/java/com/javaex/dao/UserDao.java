package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	final	SqlSession sqlSession;

	public UserDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// 유저_1> 유저 정보 수정폼
	public UserVo selectUser(int usersNo) {
		System.out.println("userDao > selectUserByNo()");

		return sqlSession.selectOne("user.selectUserByNo", usersNo);
	}
	
	// 유저_2> 유저 수정
	public int updateUser(UserVo userVo) {
		System.out.println("UserDao > updateUser()");
		System.out.println(userVo);
		int count = sqlSession.update("user.updateUser", userVo);
		System.out.println(count + "건의 회원정보가 수정되었습니다.");
		
		return count;
	}
	
	// 유저_3> 유저 정보수정 시 프로필사진 업데이트
	public void updateProfile(UserVo userVo) {
		System.out.println("UserDao >updateProfile()");
		sqlSession.update("user.updateProfile", userVo);
	}
}