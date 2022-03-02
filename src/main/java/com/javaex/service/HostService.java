package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.dao.HostDao;

@Service
public class HostService {
	
	@Autowired
	private HostDao hostDao;

	// 호스트_1> 호스트 조인 폼: 없음
	
	// 호스트_2> 호스트 조인
	/*
	public int addHost(HostVo hostVo) {
		System.out.println("[ HostService > addHost() ]");
		
		
		return 1;
	}
	
	*/
}
