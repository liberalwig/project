package com.javaex.vo;

public class PhotoVo {

	//필드
	private int photoNo;
	private int userNo;
	private int hostNo;
	private int bookingNo;
	private String photoDate;
	private String category;
	private String photoTitle;
	private String photoPath;

	//생성자
	public PhotoVo() {
	}
	public PhotoVo(int photoNo, int userNo, int hostNo, int bookingNo, String photoDate, String category,
			String photoTitle, String photoPath) {
		this.photoNo = photoNo;
		this.userNo = userNo;
		this.hostNo = hostNo;
		this.bookingNo = bookingNo;
		this.photoDate = photoDate;
		this.category = category;
		this.photoTitle = photoTitle;
		this.photoPath = photoPath;
	}

	//메소드g/s
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getHostNo() {
		return hostNo;
	}
	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}
	public int getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
	}
	public String getPhotoDate() {
		return photoDate;
	}
	public void setPhotoDate(String photoDate) {
		this.photoDate = photoDate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPhotoTitle() {
		return photoTitle;
	}
	public void setPhotoTitle(String photoTitle) {
		this.photoTitle = photoTitle;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	//메소드 일반
	@Override
	public String toString() {
		return "PhotoVo [photoNo=" + photoNo + ", userNo=" + userNo + ", hostNo=" + hostNo + ", bookingNo=" + bookingNo
				+ ", photoDate=" + photoDate + ", category=" + category + ", photoTitle=" + photoTitle + ", photoPath="
				+ photoPath + "]";
	}
	
}
