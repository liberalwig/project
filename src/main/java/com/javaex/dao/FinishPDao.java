package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FinishPVo;


@Repository
public class FinishPDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<FinishPVo> selectP(FinishPVo finishPVo) {
		System.out.println("여기는 다오");
		
		List<FinishPVo> authP = sqlSession.selectList("finishP.getinfoP", finishPVo);
		System.out.println(authP);
		
		return  authP;
	}
	
	public FinishPVo selectPay (FinishPVo finishPVo) {
		System.out.println("여기는 다오");
		
		FinishPVo authPay = sqlSession.selectOne("finishP.getPay", finishPVo);
		return authPay;
	}
	
	
}
