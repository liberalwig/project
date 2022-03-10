package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FinishPVo;


@Repository
public class FinishPDao {
	
	@Autowired
	private SqlSession sqlSession;

	
	public FinishPVo selectPay (FinishPVo finishPVo) {
		System.out.println("여기는 다오");
		
		finishPVo = sqlSession.selectOne("finishP.selectPay", finishPVo);
		System.out.println(finishPVo +"다오");
		return finishPVo;
	}
	
	public FinishPVo selectP(int bookingNo) {
		FinishPVo finishPVo = sqlSession.selectOne("finishP.selectPay",bookingNo);
		return finishPVo; 
	}
	
}
