package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostinfoDao;
import com.javaex.vo.HostVo;

@Service
public class HostinfoService {

	@Autowired
	HostinfoDao hostinfoDao;
	
	//hostNo 체크
	public int checkNo(int hostNo) {
		System.out.println("[HostinfoService.checkNo()]");
		
		return hostinfoDao.checkNo(hostNo);
	}
	
	//호스트 데이터 가져오기
	public Map<String, Object> getHost(int hostNo) {
		System.out.println("[HostinfoService.list()]");
		Map<String, Object> hostMap =new HashMap<String, Object>();
		
		//호스트 정보 가져오기
		HostVo hostVo = hostinfoDao.getHost(hostNo);
		
		return hostMap;
	}
}
