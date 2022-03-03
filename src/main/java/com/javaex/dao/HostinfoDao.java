package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;

@Repository
public class HostinfoDao {

	@Autowired
	SqlSession sqlSession;
	
	//호스트 넘버가 존재하는지 체크
	public int checkNo(int hostNo) {
		System.out.println("[HostinfoDao.checkNo()]");
		
		int no = sqlSession.selectOne("hostinfo.checkNo", hostNo);
		System.out.println(no);
		return no;
	}
	
	public HostVo getHost(int hostNo) {
		System.out.println("[HostinfoDao.getList()]");
		
		return sqlSession.selectOne("hostinfo.getHost", hostNo);
	}
}
