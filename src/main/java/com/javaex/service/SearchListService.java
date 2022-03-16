package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SearchListDao;
import com.javaex.vo.SearchListVo;

@Service
public class SearchListService {
	
	@Autowired
	private SearchListDao searchListDao;
	//리스트
	public List<SearchListVo> searchListD(SearchListVo searchListVo) {
			
			System.out.println("searchListService.getSearchList()");
			System.out.println(searchListVo.getSearchData());
			
			if(searchListVo.getSearchData().equals("")) {
				
				return searchListDao.getSearchListD(searchListVo);
				
			}else {
				String[] array = searchListVo.getSearchData().split(" - ");
				searchListVo.setCheckin(array[0]);
				searchListVo.setCheckout(array[1]);
				
				return searchListDao.getSearchList(searchListVo);
				
			}
			
			 
			
		}
	
		
}
