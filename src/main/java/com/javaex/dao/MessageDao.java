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
	
	public MessageVo getUser(int usersNo) {
		
		MessageVo messageVo = sqlsession.selectOne("message.getUser", usersNo);
		
		System.out.println(usersNo+"다오");
		
		return messageVo;
	}
	
	public List<MessageVo> messageList (int usersNo) {
		
		List<MessageVo> mList = sqlsession.selectList("message.getList", usersNo);
		System.out.println(mList);
		
		return mList;
		
	} 
	
	
	 public MessageVo getmUser(int usersNo) {
	 
	 MessageVo getMInfo = sqlsession.selectOne("message.getMInfo", usersNo);
	  
	 System.out.println(getMInfo+"meVo다오");
	 
	 return getMInfo; 
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
