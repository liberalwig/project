package com.javaex.service;

import java.util.List;

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
	
	@RequestMapping(value="/FinishP", method = {RequestMethod.GET, RequestMethod.POST})
	public List<FinishPVo> getBills (FinishPVo finishPVo) {
		System.out.println("여기는 서비스");
		
		return finishPDao.selectP(finishPVo);
	}
	
	public FinishPVo getPays(FinishPVo finishPVo) {
		System.out.println("여기는 서비스");
		
		FinishPVo authPay = finishPDao.selectPay(finishPVo);
		System.out.println(authPay+"서비스");
		return authPay;
	}

}
