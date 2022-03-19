package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//map으로 리스트와 정보 가져오기
	public Map<String, Object> getMap(int usersNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		//정보 가져오기
		MessageVo getMInfo = messageDao.getmUser(usersNo);
		System.out.println(getMInfo +"인포 서비스");
		
		//리스트 가져오기
		List<MessageVo> getList = messageDao.messageList(usersNo);
		System.out.println(getList+"리스트 서비스");
		
		map.put("getMInfo", getMInfo);
		map.put("getList", getList);
		return map;
	}
	//메세지 가져오기
	public List<MessageVo> getMessage(int roomNo) {
		List<MessageVo> mList = messageDao.getMessage(roomNo);
		System.out.println(mList +"mList서비스");
		return mList;
	}
	
	//메세지 인서트
	public void sentM (MessageVo messageVo) {
		System.out.println("인서트 서비스");
		messageDao.setM(messageVo);
		
	}
	
	//리스트 불러오기
//	public MessageVo messageList (int usersNo) {
//		
//		MessageVo getLInfo = messageDao.messageList(usersNo);
//		System.out.println(getLInfo +"메세지 정보 리스트서비스");
//		System.out.println(getLInfo.getRoomNo()+"getMInfo+RoomNo() 서비스");
//
//		return messageDao.messageList(getLInfo.getRoomNo());
//	}
//	
//	
//	//메세지 정보 가져오기
//	 public MessageVo getmUser(int usersNo) {
//	 
//	 MessageVo getMInfo = messageDao.getmUser(usersNo);
//	 System.out.println(getMInfo+"getMInfo서비스"); 
//	 return messageDao.getmUser(usersNo); 
//	 }
	 
//	 public MessageVo getN(int usersFrom) {
//		 
//		 MessageVo getN = messageDao.getmUser(usersFrom);
//		 System.out.println(getN+"getN서비스"); 
//		 return messageDao.getmUser(usersFrom); 
//		 }
	 

}
