package com.javaex.vo;

public class HeartVo {

	// 필드
	public int heartNo;
	public int usersNo;
	public int hostNo;
	
	
	// 생성자
	public HeartVo( ) {
		
	}
	
	public HeartVo(int heartNo, int usersNo, int hostNo) {
		super();
		this.heartNo = heartNo;
		this.usersNo = usersNo;
		this.hostNo = hostNo;
	}
	
	// 일반 gs
	public int getHeartNo() {
		return heartNo;
	}
	public void setHeartNo(int heartNo) {
		this.heartNo = heartNo;
	}
	public int getUsersNo() {
		return usersNo;
	}
	public void setUsersNo(int usersNo) {
		this.usersNo = usersNo;
	}
	public int getHostNo() {
		return hostNo;
	}
	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}

	
	// 일반
	@Override
	public String toString() {
		return "HeartVo [heartNo=" + heartNo + ", usersNo=" + usersNo + ", hostNo=" + hostNo + "]";
	}
	
	
	
}
