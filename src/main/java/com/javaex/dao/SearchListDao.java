package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.SearchListVo;

@Repository
public class SearchListDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<SearchListVo> getSearchList(SearchListVo searchListVo) {
		
		System.out.println("SearchListDao");
		
		List<SearchListVo> searchList = sqlSession.selectList("searchList.selectSearchList", searchListVo);

		return searchList;
	}
	
	
}
