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
	
	//예약상세(게스트)
	public BookingVo bookingDetailGuest(int bookingNo) {
		
		BookingVo bvo = sqlsession.selectOne("booking.bookingDetailHost", bookingNo);
		
		return bvo;
	}
	
	//예약상세갤러리(게스트)
	public List<PhotoVo> bookingGallery(int bookingNo) {
		
		List<PhotoVo> PhotoList = sqlsession.selectList("booking.photoList", bookingNo);
		
		return PhotoList;
	}
}
