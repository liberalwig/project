package com.javaex.vo;

public class HeartVo {

	// 필드
	public int heartNo;
	public int usersNo;
	public int hostNo;
	public String name;
	public String path;
	
	
	// 생성자
	public HeartVo( ) {
		
	}


	public HeartVo(int heartNo, int usersNo, int hostNo, String name, String path) {
		super();
		this.heartNo = heartNo;
		this.usersNo = usersNo;
		this.hostNo = hostNo;
		this.name = name;
		this.path = path;
	}


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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	@Override
	public String toString() {
		return "HeartVo [heartNo=" + heartNo + ", usersNo=" + usersNo + ", hostNo=" + hostNo + ", name=" + name
				+ ", path=" + path + "]";
	}
	
	
}
