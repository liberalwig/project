package com.javaex.vo;

public class MeassageVo {
	private int messageNo;
	private int userNo;
	private int user2No;
	private String sendDate;
	private String text;

	public MeassageVo() {
	}

	public MeassageVo(int messageNo, int userNo, int user2No, String sendDate, String text) {
		this.messageNo = messageNo;
		this.userNo = userNo;
		this.user2No = user2No;
		this.sendDate = sendDate;
		this.text = text;
	}

	public int getMessageNo() {
		return messageNo;
	}

	public void setMessageNo(int messageNo) {
		this.messageNo = messageNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getUser2No() {
		return user2No;
	}

	public void setUser2No(int user2No) {
		this.user2No = user2No;
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

	@Override
	public String toString() {
		return "MeassageVo [messageNo=" + messageNo + ", userNo=" + userNo + ", user2No=" + user2No + ", sendDate="
				+ sendDate + ", text=" + text + "]";
	}

}
