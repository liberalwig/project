package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MessageDao;
import com.javaex.vo.MessageVo;

@Service
public class MessageService {
	
	@Autowired
	private MessageDao messageDao;
	
	//메세지 주인 가져오기
	public MessageVo getUser(int usersNo) {
		
		MessageVo messageVo = messageDao.getUser(usersNo);
		System.out.println(usersNo+"서비스");
		return messageDao.getUser(usersNo);
	}
	
	
	public List<MessageVo> messageList (int usersNo) {
		
		return messageDao.messageList(usersNo);
	}
	
	
	//메세지 정보 가져오기
	 public MessageVo getmUser(int usersNo) {
	 
	 MessageVo getMInfo = messageDao.getmUser(usersNo);
	 System.out.println(getMInfo+"meVo서비스"); 
	 return messageDao.getmUser(usersNo); 
	 }
	 
//	 public MessageVo getN(int usersFrom) {
//		 
//		 MessageVo getN = messageDao.getmUser(usersFrom);
//		 System.out.println(getN+"getN서비스"); 
//		 return messageDao.getmUser(usersFrom); 
//		 }
	 

}
