package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BookingVo;
import com.javaex.vo.PhotoVo;

@Repository
public class BookingDao {

	@Autowired
	SqlSession sqlsession;
	
	//예약 + 호스트 리스트 가져오기
	public List<BookingVo> bookingBeforeGuest(int usersNo) {
		
		List<BookingVo> BookingList = sqlsession.selectList("booking.bookingHostList", usersNo);
		
		return BookingList;
	}
	
	//예약 + 게스트 리스트 가져오기
	public List<BookingVo> bookingBeforeHost(int hostNo) {
		
		List<BookingVo> bookingList = sqlsession.selectList("booking.bookingGuestList", hostNo);
		
		System.out.println(bookingList);
		
		return bookingList;
	}
	
	//예약 + 날짜 리스트 가져오기
	public List<BookingVo> bookingDateList(BookingVo bookingVo) {
		
		List<BookingVo> bookingList = sqlsession.selectList("booking.bookingDateList", bookingVo);
		
		return bookingList;
	}
	
	//예약상세(게스트)
	public BookingVo bookingDetailGuest(int bookingNo) {
		
		BookingVo bvo = sqlsession.selectOne("booking.bookingDetailHost", bookingNo);
		
		return bvo;
	}
	
	//예약상세(호스트)
	public BookingVo bookingDetailHost(int bookingNo) {
		
		BookingVo bvo = sqlsession.selectOne("booking.bookingDetailGuest", bookingNo);
		
		return bvo;
	}
	
	//예약상세갤러리(게스트)
	public List<PhotoVo> bookingGallery(int bookingNo, int day) {
		
		PhotoVo pvo = new PhotoVo();
		pvo.setBookingNo(bookingNo);
		pvo.setDay(day);
		
		List<PhotoVo> PhotoList = sqlsession.selectList("booking.photoList", pvo);
		
		return PhotoList;
	}
	
	//사진업로드
	public void photoInsert(PhotoVo pvo) {
		
		sqlsession.selectOne("booking.photoInsert", pvo);
	}
	
	//사진상세보기
	public PhotoVo photoView(int photoNo) {
		
		return sqlsession.selectOne("booking.photoView", photoNo);
	}
}
