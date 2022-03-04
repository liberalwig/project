package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;

@Repository
public class SearchListDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HostVo> getSearchList() {
		
		List<HostVo> searchList = sqlSession.selectList("searchList.selectSearchList");
		
		return searchList;
	}
	
	
}
