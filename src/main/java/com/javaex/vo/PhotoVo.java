package com.javaex.vo;

public class PhotoVo {

	private int photoNo;
	private int bookingNo;
	private String photoDate;
	private String category;
	private String photoTitle;
	private String photoPath;

	public PhotoVo() {
	}

	public PhotoVo(int photoNo, int bookingNo, String photoDate, String category, String photoTitle, String photoPath) {
		this.photoNo = photoNo;
		this.bookingNo = bookingNo;
		this.photoDate = photoDate;
		this.category = category;
		this.photoTitle = photoTitle;
		this.photoPath = photoPath;
	}

	public int getPhotoNo() {
		return photoNo;
	}

	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
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

	@Override
	public String toString() {
		return "PhotoVo [photoNo=" + photoNo + ", bookingNo=" + bookingNo + ", photoDate=" + photoDate + ", category="
				+ category + ", photoTitle=" + photoTitle + ", photoPath=" + photoPath + "]";
	}

}
