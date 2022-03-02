package com.javaex.vo;

public class hostVo {	
	//필드
	private int hostNo;
	private int usersNo;
	private int zipcode;
	private String adress1;
	private String adress2;
	private String adress3;
	private int x;
	private int y;
	private String intro;
	private String asking;
	private int cost;
	private int view;

	
	//생성자
	public hostVo() {
		
	}
	public hostVo(int hostNo, int usersNo, int zipcode, String adress1, String adress2, String adress3, int x, int y,
			String intro, String asking, int cost, int view) {
		this.hostNo = hostNo;
		this.usersNo = usersNo;
		this.zipcode = zipcode;
		this.adress1 = adress1;
		this.adress2 = adress2;
		this.adress3 = adress3;
		this.x = x;
		this.y = y;
		this.intro = intro;
		this.asking = asking;
		this.cost = cost;
		this.view = view;
	}
	
	//메소드 g-s
	public int getHostNo() {
		return hostNo;
	}
	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}
	public int getUsersNo() {
		return usersNo;
	}
	public void setUsersNo(int usersNo) {
		this.usersNo = usersNo;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getAdress1() {
		return adress1;
	}
	public void setAdress1(String adress1) {
		this.adress1 = adress1;
	}
	public String getAdress2() {
		return adress2;
	}
	public void setAdress2(String adress2) {
		this.adress2 = adress2;
	}
	public String getAdress3() {
		return adress3;
	}
	public void setAdress3(String adress3) {
		this.adress3 = adress3;
	}
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getAsking() {
		return asking;
	}
	public void setAsking(String asking) {
		this.asking = asking;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}

	//메소드 일반
	@Override
	public String toString() {
		return "hostVo [hostNo=" + hostNo + ", usersNo=" + usersNo + ", zipcode=" + zipcode + ", adress1=" + adress1
				+ ", adress2=" + adress2 + ", adress3=" + adress3 + ", x=" + x + ", y=" + y + ", intro=" + intro
				+ ", asking=" + asking + ", cost=" + cost + ", view=" + view + "]";
	}
}
