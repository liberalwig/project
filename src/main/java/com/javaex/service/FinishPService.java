package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.dao.FinishPDao;
import com.javaex.vo.FinishPVo;

@Service
public class FinishPService {
	
	@Autowired
	private FinishPDao finishPDao;
	
	public FinishPVo getBills (FinishPVo finishPVo) {
		System.out.println("여기는 서비스");
		
		return finishPDao.selectPay(finishPVo);
	}
	
}
