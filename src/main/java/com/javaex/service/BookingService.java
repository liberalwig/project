package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BookingDao;
import com.javaex.vo.BookingVo;
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
	public List<PhotoVo> bookingGallery(int bookingNo) {
		
		return bookingDao.bookingGallery(bookingNo);
	}
}
