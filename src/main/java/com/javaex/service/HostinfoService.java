package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.HostinfoDao;
import com.javaex.vo.BookingVo;
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
		double sum = (hostinfoDao.getSum(hostNo)/5.0);
		double reviewcount = (double)hostinfoDao.getReviewCount(hostNo);
		if(reviewcount == 0.0) {
			return 0;
		} else {
			double puppypoint = sum / reviewcount;
			
			return puppypoint;
		}
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
	
	//캘린더 정보 가져오기
	public List<BookingVo> getCalendur(int hostNo){
		System.out.println("[HostinfoService.getCalendur()]");
		
		return hostinfoDao.getCalendur(hostNo);
	}
	
	//카테고리 사진 가져오기
	public List<PhotoVo> getPhoto(PhotoVo photoVo){
		System.out.println("[HostinfoService.getPhoto()]");
		
		List<PhotoVo> photoList = hostinfoDao.getPhoto(photoVo);
		
		return photoList;
	}
	
	//일수 계산하기
	public void checkdays(BookingVo bookingVo) {
		System.out.println("[HostinfoService.checkdays()]");
		
		//일수 계산하기
		try {
			Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(bookingVo.getCheckout());
		    Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(bookingVo.getCheckin());
		    long diffSec = (format1.getTime() - format2.getTime()) / 1000;
		    long diffDays = (diffSec / (24*60*60)) + 1; //일자수
		    
		    System.out.println(bookingVo.getCheckin());
		    System.out.println(bookingVo.getCheckout());
		    System.out.println(diffDays + "일 차이");
		    
		    bookingVo.setDays((int)diffDays);
		    
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    
	}
	
	//예약하기
	public void bookinginsert(BookingVo bookingVo) {
		System.out.println("[HostinfoService.bookinginsert()]");
		
		//예약테이블 인서트
		hostinfoDao.bookinginsert(bookingVo);
	}
	
	//결제정보
	public BookingVo getPaymentForm(int bookingNo) {
		System.out.println("[HostinfoService.bookinginsert()]");
		
		//결제정보 가져오기
		BookingVo bookingVo = hostinfoDao.getPayment(bookingNo);
		bookingVo.setTotalCost((bookingVo.getBookingDate() * bookingVo.getDays() * bookingVo.getEa()));
		
		return bookingVo;
	}
	
	//결제이후 상태 변경
	public int setPayment(BookingVo bookingVo) {
		System.out.println("[HostinfoService.setPayment()]");
		
		bookingVo.setStatus("예약완료");
		int count = hostinfoDao.setStatus(bookingVo);
		
		return count;
	}
	//키워드 리스트 가져오기
	public List<KeywordVo> getKeywordList() {
		System.out.println("[HostinfoService.getKeywordList()]");
		
		return hostinfoDao.getKeywordList();
	}
	
	//호스트 등록
	public void hostinsert(HostVo hostVo) {
		System.out.println("[HostinfoService.hostinsert()]");
		
		hostinfoDao.hostinsert(hostVo);
	}
	
	//유저타입 변경(유저->호스트)
	public void typeUpdate(int usersNo) {
		System.out.println("[HostinfoService.typeUpdate()]");
		
		hostinfoDao.typeUpdate(usersNo);
	}
	
	//사진 업로드
	public void fileupload(MultipartFile file, int hostNo) {
		System.out.println("[HostinfoService.fileupload()]");
		
		//맥 저장경로
		String saveDir = "/Users/hs/JavaStudy/workspace_project/project/webapp/assets/upload/";
		//윈도우 저장경로
		//String saveDir = "C:\\javaStudy\\photo\\";
		
		// 원본파일이름
		String orgName = file.getOriginalFilename();
		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		// 파일패스 생성
		String filePath = saveDir + saveName;
		// 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);// 어떤 경로에 파일을 저장할건지?
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//DB에 넣기
		PhotoVo photoVo = new PhotoVo();
		photoVo.setHostNo(hostNo);
		photoVo.setPhotoPath(saveName);
		hostinfoDao.setHostPhoto(photoVo);
	}
	
	//키워드 등록
	public void setKeyword(List<Integer> keyList, int hostNo) {
		System.out.println("[HostinfoService.setKeyword()]");
		
		List<KeywordVo> keywordList = new ArrayList<KeywordVo>();
		
		for(int KeywordNo:keyList) {
			KeywordVo keywordVo = new KeywordVo();
			keywordVo.setHostNo(hostNo);
			keywordVo.setKeywordNo(KeywordNo);
			keywordList.add(keywordVo);
		}
		for (KeywordVo keywordVo:keywordList) {
			hostinfoDao.setKeyword(keywordVo);
		}
	}
	
}
