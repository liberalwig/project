package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.KeywordVo;

@Repository
public class HostDao {

	@Autowired
	SqlSession sqlSession;

	// 호스트_1> 호스트+키워드 조인 폼 불러오기
	public List<KeywordVo> keywordSelect() {
		System.out.println("HostDao > keywordSelect()");

		List<KeywordVo> keyList = sqlSession.selectList("host.keywordSelect");
		
		return keyList;
		
	}

	/*
	 * //호스트_2-0> 총호스트 조인 public int hostInsert(HostVo hostVo, KeywordVo keywordVo)
	 * {
	 * 
	 * 
	 * }
	 */
	/*
	 * // 호스트_2-1> 절반호스트 조인 public int halfHostInsert(HostVo hostVo) {
	 * System.out.println("HostDao > halfHostInsert()");
	 * 
	 * int count1 = sqlSession.insert("host.hostInsert", hostVo);
	 * System.out.println(count1 + "명의 펫시터가 추가되었습니다."); return count1; }
	 * 
	 */

	/*
	 * // 호스트_2-2> 키워드 조인 public int keywordInsert(KeywordVo keywordVo,) {
	 * System.out.println("HostDao > keywordInsert()");
	 * 
	 * int count2 = sqlSession.insert("host.keywordInsert", keywordVo); return
	 * count2; } // 호스트_3> 호스트 수정 폼: 없음
	 * 
	 */

	// 호스트_4> 호스트 수정업데이트

}
