package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostinfoDao;
import com.javaex.vo.HostVo;

@Service
public class HostinfoService {

	@Autowired
	HostinfoDao hostinfoDao;
	
	//hostNo 체크
	public int checkNo(int no) {
		System.out.println("[HostinfoService.checkNo()]");
		
		return hostinfoDao.checkNo(no);
	}
	
	//호스트 데이터 가져오기
	public HostVo getHost(int no) {
		System.out.println("[HostinfoService.list()]");
		
		//호스트 정보 가져오기
		HostVo hostVo = hostinfoDao.getHost(no);
		
		return hostVo;
	}
}
