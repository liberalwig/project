package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MessageVo;

@Repository
public class MessageDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//메세지 주인 가져오기
	public MessageVo getUser(int usersNo) {
		
		MessageVo messageVo = sqlsession.selectOne("message.getUser", usersNo);
		
		System.out.println(usersNo+"다오");
		
		return messageVo;
	}
	
	//리스트 가져오기
	public List<MessageVo> messageList(int usersNo) {
		List<MessageVo> getList = sqlsession.selectList("message.getList", usersNo);
		System.out.println(getList +"리스트 다오");
		return getList;
	}
	
	//메세지 정보 가져오기
	public MessageVo getmUser(int usersNo) {
		 
		MessageVo getMInfo = sqlsession.selectOne("message.getMInfo", usersNo);
		  
		System.out.println(getMInfo+"메세지 정보 다오");
		 
		return getMInfo; 
	}
	
	//메세지 가져오기
	public List<MessageVo> getMessage(int roomNo) {
		List<MessageVo> mList = sqlsession.selectList("message.getMessage", roomNo);
		System.out.println(mList+"mList다오");
		return mList;
	}
	
	//메세지 인서트
	public int setM(MessageVo messageVo) {
		System.out.println("인서트 다오"+messageVo);
		return sqlsession.insert("message.insertM", messageVo);
	}
	 
//	 public MessageVo getN(int usersNo) {
//		 
//		 MessageVo getN = sqlsession.selectOne("message.getMInfo", usersNo);
//		  
//		 System.out.println(getN+"getN다오");
//		 
//		 return getN; 
//		 }
	 

}
