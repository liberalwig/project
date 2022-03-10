package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SearchListDao;
import com.javaex.vo.SearchListVo;

@Service
public class SearchListService {
	
	@Autowired
	private SearchListDao searchListDao;
	//리스트
	public List<SearchListVo> searchList() {
			
			System.out.println("searchListService.getSearchList()");
			
			return searchListDao.getSearchList();
		}
	
	//검색후 리스트
	public Map<String, Object> Search(String keyword){
		
		Map<String, Object> pMap = new HashMap();
		return pMap;
	}
	
}
