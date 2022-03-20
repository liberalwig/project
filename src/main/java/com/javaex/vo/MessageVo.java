package com.javaex.vo;

public class MessageVo {
   //메세지 테이블
   private int messegeNo;
   private int usersFrom;
   private int usersTo;
   private String sendDate;
   private String text;
   private int roomNo;
   private int target;
   
   //users 테이블
   private int usersNo;
   private String name;
   
   private String usersFromName;

   public MessageVo() {
   }

   public MessageVo(int messegeNo, int usersFrom, int usersTo, String sendDate, String text, int roomNo, int target,
         int usersNo, String name, String usersFromName) {
      super();
      this.messegeNo = messegeNo;
      this.usersFrom = usersFrom;
      this.usersTo = usersTo;
      this.sendDate = sendDate;
      this.text = text;
      this.roomNo = roomNo;
      this.target = target;
      this.usersNo = usersNo;
      this.name = name;
      this.usersFromName = usersFromName;
   }

   public int getMessegeNo() {
      return messegeNo;
   }

   public void setMessegeNo(int messegeNo) {
      this.messegeNo = messegeNo;
   }

   public int getUsersFrom() {
      return usersFrom;
   }

   public void setUsersFrom(int usersFrom) {
      this.usersFrom = usersFrom;
   }

   public int getUsersTo() {
      return usersTo;
   }

   public void setUsersTo(int usersTo) {
      this.usersTo = usersTo;
   }

   public String getSendDate() {
      return sendDate;
   }

   public void setSendDate(String sendDate) {
      this.sendDate = sendDate;
   }

   public String getText() {
      return text;
   }

   public void setText(String text) {
      this.text = text;
   }

   public int getRoomNo() {
      return roomNo;
   }

   public void setRoomNo(int roomNo) {
      this.roomNo = roomNo;
   }

   public int getTarget() {
      return target;
   }

   public void setTarget(int target) {
      this.target = target;
   }

   public int getUsersNo() {
      return usersNo;
   }

   public void setUsersNo(int usersNo) {
      this.usersNo = usersNo;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getUsersFromName() {
      return usersFromName;
   }

   public void setUsersFromName(String usersFromName) {
      this.usersFromName = usersFromName;
   }

   @Override
   public String toString() {
      return "MessageVo [messegeNo=" + messegeNo + ", usersFrom=" + usersFrom + ", usersTo=" + usersTo + ", sendDate="
            + sendDate + ", text=" + text + ", roomNo=" + roomNo + ", target=" + target + ", usersNo=" + usersNo
            + ", name=" + name + ", usersFromName=" + usersFromName + "]";
   }

}