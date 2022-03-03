package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;

@Repository
public class HostinfoDao {

	@Autowired
	SqlSession sqlSession;
	
	public int checkNo(int hostNo) {
		System.out.println("[HostinfoDao.checkNo()]");
		
		return sqlSession.selectOne("hostinfo.checkNo", hostNo);
	}
	
	public HostVo getHost(int hostNo) {
		System.out.println("[HostinfoDao.getList()]");
		
		return sqlSession.selectOne("hostinfo.getHost", hostNo);
	}
}
