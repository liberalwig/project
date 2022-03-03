package com.javaex.vo;

public class UserVo {
	private int usersNo;
	private String id;
	private String password;
	private String name;
	private String hp;
	private String path;
	private String usersType;

	public UserVo() {}
	
	public UserVo(int userNo, String id, String password, String name, String hp, String path, String usersType) {
		this.usersNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.hp = hp;
		this.path = path;
		this.usersType = usersType;
	}

	public int getUsersNo() {
		return usersNo;
	}

	public void setUsersNo(int usersNo) {
		this.usersNo = usersNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getUsersType() {
		return usersType;
	}

	public void setUsersType(String usersType) {
		this.usersType = usersType;
	}

	@Override
	public String toString() {
		return "UserVo [usersNo=" + usersNo + ", id=" + id + ", password=" + password + ", name=" + name + ", hp=" + hp
				+ ", path=" + path + ", usersType=" + usersType + "]";
	}

}
