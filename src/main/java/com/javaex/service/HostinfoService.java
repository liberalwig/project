package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostinfoDao;

@Service
public class HostinfoService {

	@Autowired
	HostinfoDao hostinfoDao;
	
	//호스트 데이터 가져오기
	public void list(int hostNo) {
		System.out.println("[HostinfoService.list()]");
		
		//호스트 정보 가져오기
		hostinfoDao.getList(hostNo);

		
	}
}
