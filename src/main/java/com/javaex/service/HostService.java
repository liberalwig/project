package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostDao;
import com.javaex.vo.HostVo;

@Service
public class HostService {
	
	@Autowired
	private HostDao hostDao;

	
	public HostVo hostModifyForm(int hostNo) {
		System.out.println("HostService > modifyForm()");
		
		return hostDao.selectHost(hostNo);
	}
	
	/*
	public int hostModify(int hostNo) {
		System.out.println("HostService > hostModify()");
		
		
		return hostDao.hostUpdate(hostVo);
	}
	*/
}

