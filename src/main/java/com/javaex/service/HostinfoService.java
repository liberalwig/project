package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostinfoDao;
import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;
import com.javaex.vo.PhotoVo;
import com.javaex.vo.ReviewVo;

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
	
	//리뷰 정보 가져오기
	public List<ReviewVo> getReview(int hostNo) {
		System.out.println("[HostinfoService.getKeyword()]");
		
		return hostinfoDao.getReview(hostNo);
	}
	
	//퍼피력 계산
	public double getPuppyPoint(int hostNo) {
		System.out.println("[HostinfoService.getPuppyPoint()]");
		
		return (hostinfoDao.getSum(hostNo)/5)/hostinfoDao.getReviewCount(hostNo);
	}
	
	//항목점수 계산
	public ReviewVo getPoint(int hostNo) {
		System.out.println("[HostinfoService.getPoint()]");
		ReviewVo point = new ReviewVo();
		point.setClean(hostinfoDao.getClean(hostNo));
		point.setFood(hostinfoDao.getFood(hostNo));
		point.setPlay(hostinfoDao.getPlay(hostNo));
		point.setWalk(hostinfoDao.getWalk(hostNo));
		point.setCommunication(hostinfoDao.getCommunication(hostNo));
		
		return point;
	}
	
	//호스트 사진 가져오기
	public List<PhotoVo> getHostPhoto(int hostNo){
		System.out.println("[HostinfoService.getHostPhoto()]");
		
		List<PhotoVo> photoList = hostinfoDao.getHostPhoto(hostNo);
		
		return photoList;
	}
}
