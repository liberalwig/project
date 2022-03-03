package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;

@Repository
public class HostinfoDao {

	@Autowired
	SqlSession sqlSession;
	
	//호스트 넘버가 존재하는지 체크
	public int checkNo(int hostNo) {
		System.out.println("[HostinfoDao.checkNo()]");
		
		int no = sqlSession.selectOne("hostinfo.checkNo", hostNo);
		
		return no;
	}
	
	//호스트 정보
	public HostVo getHost(int hostNo) {
		System.out.println("[HostinfoDao.getList()]");
		
		return sqlSession.selectOne("hostinfo.getHost", hostNo);
	}
	
	//호스트 키워드
	public List<KeywordVo> getHostKeyword(int hostNo) {
		System.out.println("[HostinfoDao.getHostKeyword()]");
		
		List<KeywordVo> keyList = sqlSession.selectList("hostinfo.getKeywordList", hostNo);
		
		return keyList;
	}
}
