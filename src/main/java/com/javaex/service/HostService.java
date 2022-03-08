package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostDao;
import com.javaex.vo.KeywordVo;

@Service
public class HostService {
	
	@Autowired
	private HostDao hostDao;

	// 호스트_1> 호스트+키워드 조인 폼 불러오기: 없음
	
	// 호스트_2> 키워드 조인 폼 불러오기
	public List<KeywordVo> keywordSelect() {
		System.out.println("HostService > keywordSelect()");

		return hostDao.keywordSelect();
	}
		
  	

	// 호스트_2-1> 호스트 조인
	
	// 호스트_2-2> 키워드 조인
	
	
}

/*
public String  hostInsert(HostVo hostVo, )(keywordVo k) {
	
	int  HostNo = 0;
	
	System.out.println("HostService > hostInsert()");
	
	hostDao.hostInsert(hostVo);
	hostDao.keywordInsert(keywordVo);

}
*/
