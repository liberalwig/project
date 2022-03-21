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
   
   //유저타입
   public MessageVo getType(int usersNo) {
      MessageVo getType = messageDao.getType(usersNo);
      
      return getType;
   }
   
   //map으로 리스트와 정보 가져오기
   public List<MessageVo> getList(int usersNo) {
   
      //리스트 가져오기
      List<MessageVo> getList = messageDao.messageList(usersNo);
      System.out.println(getList+"리스트 서비스");
      
      return getList;
   }
   //메세지 가져오기
   public List<MessageVo> getMessage(MessageVo messageVo) {
      List<MessageVo> mList = messageDao.getMessage(messageVo);
      System.out.println(mList +"mList서비스");
      return mList;
   }
   
   //상대방 이름 가져오기
   public MessageVo getName(int target) {
	   
	   return messageDao.getName(target);
   }
   
   //메세지 인서트
   public void sentM (MessageVo messageVo) {
      System.out.println("인서트 서비스");
      messageDao.setM(messageVo);
      
   }
   
   
   //리스트 불러오기
//   public MessageVo messageList (int usersNo) {
//      
//      MessageVo getLInfo = messageDao.messageList(usersNo);
//      System.out.println(getLInfo +"메세지 정보 리스트서비스");
//      System.out.println(getLInfo.getRoomNo()+"getMInfo+RoomNo() 서비스");
//
//      return messageDao.messageList(getLInfo.getRoomNo());
//   }
//   
//   
//   //메세지 정보 가져오기
//    public MessageVo getmUser(int usersNo) {
//    
//    MessageVo getMInfo = messageDao.getmUser(usersNo);
//    System.out.println(getMInfo+"getMInfo서비스"); 
//    return messageDao.getmUser(usersNo); 
//    }
    
//    public MessageVo getN(int usersFrom) {
//       
//       MessageVo getN = messageDao.getmUser(usersFrom);
//       System.out.println(getN+"getN서비스"); 
//       return messageDao.getmUser(usersFrom); 
//       }
    

}