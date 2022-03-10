package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BookingDao;
import com.javaex.vo.AbleVo;
import com.javaex.vo.BookingVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.PhotoVo;

@Service
public class BookingService {
	
	@Autowired
	BookingDao bookingDao;
	
	//예약 + 호스트 리스트 가져오기
	public List<BookingVo> bookingBeforeGuest(int usersNo) {
		
		return bookingDao.bookingBeforeGuest(usersNo);
	}
	
	//예약 + 게스트 리스트 가져오기
	public List<BookingVo> bookingBeforeHost(int hostNo) {
		
		return bookingDao.bookingBeforeHost(hostNo);
	}
	
	//예약 + 날짜 리스트 가져오기
	public List<BookingVo> bookingDateList(BookingVo bookingVo) {
		
		return bookingDao.bookingDateList(bookingVo);
	}
	
	//예약상세(게스트)
	public BookingVo bookingDetailGuest(int bookingNo) {
		
		return bookingDao.bookingDetailGuest(bookingNo);
	}
	
	//예약상세(게스트)
	public BookingVo bookingDetailHost(int bookingNo) {
		
		return bookingDao.bookingDetailHost(bookingNo);
	}

	//예약상세갤러리(게스트)
	public List<PhotoVo> bookingGallery(int bookingNo, int day) {
		
		return bookingDao.bookingGallery(bookingNo, day);
	}
	
	//사진업로드
	public void photoInsert(PhotoVo pvo) {
		
		MultipartFile file = pvo.getFile();
		
		System.out.println(file);
		
		String saveDir = "C:\\javaStudy\\photo";
		
		//확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		
		//저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
	
		//파일패쓰 생성
		String filePath = saveDir + "\\" + saveName;
		
		//파일저장(업로드)
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//DB에 저장
		pvo.setPhotoPath(filePath);
		pvo.setSaveName(saveName);
		bookingDao.photoInsert(pvo);
	}
	
	//사진상세보기
	public PhotoVo photoView(int photoNo) {
		
		return bookingDao.photoView(photoNo);
	}
	
	//예약완료리스트(호스트)
	public List<BookingVo> bookingEndHost(int hostNo) {
		
		return bookingDao.bookingEndHost(hostNo);
	}
	
	//가능날짜추가
	public void ableInsert(int hostNo, String date) {
		
		AbleVo avo = new AbleVo();
		avo.setHostNo(hostNo);
		avo.setAbleDate(date);
		
		bookingDao.ableInsert(avo);
	}
	
	//가능날짜리스트
	public List<AbleVo> ableList(int hostNo) {
		
		return bookingDao.ableList(hostNo);
	}
	
	//가능날짜취소
	public void ableDelete(int hostNo, String date) {
		
		AbleVo avo = new AbleVo();
		avo.setHostNo(hostNo);
		avo.setAbleDate(date);
		
		bookingDao.ableDelete(avo);
	}
	
	//가능날짜천제취소
	public void ableDeleteAll(int hostNo) {
		
		bookingDao.ableDeleteAll(hostNo);
	}
	
	//노출여부업데이트
	public void viewAble(int hostNo, int hostview) {
		
		bookingDao.viewAble(hostNo, hostview);
	}
	
	//호스트 정보
	public HostVo selectHost(int hostNo) {
		
		return bookingDao.selectHost(hostNo);
	}
}







