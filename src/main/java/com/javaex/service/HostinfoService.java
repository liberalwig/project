package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostinfoDao;
import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;

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
	public HostVo getHost(int hostNo) {
		System.out.println("[HostinfoService.list()]");
		
		//호스트 정보 가져오기
		HostVo hostVo = hostinfoDao.getHost(hostNo);
		
		return hostVo;
	}
	
	//키워드 정보 가져오기
	public List<KeywordVo> getKeyword(int hostNo) {
		System.out.println("[HostinfoService.getKeyword()]");
		
		return hostinfoDao.getHostKeyword(hostNo);
	}
}
