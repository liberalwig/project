package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SearchListDao;
import com.javaex.vo.HostVo;

@Service
public class SearchListService {
	
	@Autowired
	private SearchListDao searchListDao;
	
	public List<HostVo> searchList() {
			
			System.out.println("searchListService.getSearchList()");
			
			return searchListDao.getSearchList();
		}

}
