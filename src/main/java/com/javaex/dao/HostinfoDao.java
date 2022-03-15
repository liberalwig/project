package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.AbleVo;
import com.javaex.vo.BookingVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.KeywordVo;
import com.javaex.vo.PhotoVo;
import com.javaex.vo.ReviewVo;

@Repository
public class HostinfoDao {

	@Autowired
	SqlSession sqlSession;
	
	//호스트 넘버가 존재하는지 체크
	public int checkNo(int hostNo) {
		System.out.println("[HostinfoDao.checkNo()]");
		
		int no = sqlSession.selectOne("hostinfo.checkNo", hostNo);
		
		return no;
	}
	
	//호스트 정보
	public HostVo getHost(int hostNo) {
		System.out.println("[HostinfoDao.getHost()]");
		
		return sqlSession.selectOne("hostinfo.getHost", hostNo);
	}
	
	//호스트 키워드
	public List<KeywordVo> getHostKeyword(int hostNo) {
		System.out.println("[HostinfoDao.getHostKeyword()]");
		
		List<KeywordVo> keyList = sqlSession.selectList("hostinfo.getKeywordList", hostNo);
		
		return keyList;
	}
	
	//호스트 리뷰
	public List<ReviewVo> getReview(int hostNo){
		System.out.println("[HostinfoDao.getReview()]");
		
		List<ReviewVo> reviewList = sqlSession.selectList("hostinfo.getReview", hostNo);
		
		return reviewList;
	}
	
	//호스트 리뷰 갯수
	public int getReviewCount(int hostNo){
		System.out.println("[HostinfoDao.getReviewCount()]");
		
		return sqlSession.selectOne("hostinfo.getReviewCount", hostNo);
	}
	
	//호스트 점수 합계
	public double getSum(int hostNo){
		System.out.println("[HostinfoDao.getSum()]");
		
		double sum = sqlSession.selectOne("hostinfo.getSum", hostNo);
		
		return sum;
	}
	
	//각각 점수 가져오기
	public double getClean(int hostNo){
		System.out.println("[HostinfoDao.getClean()]");
		
		return sqlSession.selectOne("hostinfo.getClean", hostNo);
	}
	public double getFood(int hostNo){
		System.out.println("[HostinfoDao.getFood()]");
		
		return sqlSession.selectOne("hostinfo.getFood", hostNo);
	}
	public double getPlay(int hostNo){
		System.out.println("[HostinfoDao.getPlay()]");
		
		return sqlSession.selectOne("hostinfo.getPlay", hostNo);
	}
	public double getWalk(int hostNo){
		System.out.println("[HostinfoDao.getWalk()]");
		
		return sqlSession.selectOne("hostinfo.getWalk", hostNo);
	}
	public double getCommunication(int hostNo){
		System.out.println("[HostinfoDao.getCommunication()]");
		
		return sqlSession.selectOne("hostinfo.getCommunication", hostNo);
	}
	
	//호스트 사진 가져오기
	public List<PhotoVo> getHostPhoto(int hostNo) {
		System.out.println("[HostinfoDao.HostPhoto()]");
		
		List<PhotoVo> photoList = sqlSession.selectList("hostinfo.getHostPhotoList", hostNo);
		
		return photoList;
	}
	
	//결제내역
	public List<BookingVo> getCalendur(int bookingNo) {
		System.out.println("[HostinfoDao.getCalendur()]");
		
		List<BookingVo> CalendurList = sqlSession.selectList("hostinfo.getCalendur", bookingNo);
		
		return CalendurList;
	}
	
	//사진
	public List<PhotoVo> getPhoto(PhotoVo photoVo) {
		System.out.println("[HostinfoDao.getPhoto()]");
		
		List<PhotoVo> photoList = sqlSession.selectList("hostinfo.getPhoto", photoVo);
		
		return photoList;
	}
	
	//결제내역
	public BookingVo getPayment(int bookingNo) {
		System.out.println("[HostinfoDao.getBooking()]");
		
		BookingVo bookingVo = sqlSession.selectOne("hostinfo.getPayment", bookingNo);
		
		return bookingVo;
	}
	
	//예약하기
	public void bookinginsert(BookingVo bookingVo) {
		System.out.println("[HostinfoDao.bookinginsert()]");
		
		sqlSession.insert("hostinfo.bookinginsert", bookingVo);
	}
	
	//상태값 변경
	public int setStatus(BookingVo bookingVo) {
		System.out.println("[HostinfoDao.setStatus()]");
		
		int count = sqlSession.update("hostinfo.setStatus", bookingVo);
		
		System.out.println("["+count+"건이 업데이트 되었습니다.(hostinfoDao)]");
		
		return count;
	}
	
	//키워드 리스트 가져오기
	public List<KeywordVo> getKeywordList() {
		System.out.println("[HostinfoDao.getKeywordList()]");
		
		return sqlSession.selectList("hostinfo.getKeywordList2");
	}
	
	
	//호스트 등록
	public void hostinsert(HostVo hostVo) {
		System.out.println("[HostinfoDao.hostinsert()]");
		
		sqlSession.insert("hostinfo.hostinsert", hostVo);
	}
	
	//유저타입 변경(유저->호스트)
	public void typeUpdate(int usersNo) {
		System.out.println("[HostinfoService.typeUpdate()]");
		
		sqlSession.update("hostinfo.typeUpdate", usersNo);
	}
	
	//사진 넣기
	public void setHostPhoto(PhotoVo photoVo) {
		System.out.println("[HostinfoService.setHostPhoto()]");
		
		sqlSession.insert("hostinfo.setHostPhoto", photoVo);
	}
	
	//키워드 넣기
	public void setKeyword(KeywordVo keywordVo) {
		System.out.println("[HostinfoService.setKeyword()]");
		
		sqlSession.insert("hostinfo.setKeyword", keywordVo);
	}
	
	//가능 날짜 가져오기
	public List<String> getAbleDate(int hostNo){
		System.out.println("[HostinfoService.getAbleDate()]");
		
		return sqlSession.selectList("hostinfo.getAbleDate", hostNo);
	}
}
