package com.javaex.vo;

public class ReviewVo {

	//필드
	private int bookingNo;
	private int usersNo;
	private String name;
	private String review;
	private String reviewDate;
	private int clean;
	private int food;
	private int play;
	private int work;
	private int communication;

	//생성자
	public ReviewVo() {
	}
	public ReviewVo(int bookingNo, int usersNo, String name, String review, String reviewDate, int clean, int food,
			int play, int work, int communication) {
		this.bookingNo = bookingNo;
		this.usersNo = usersNo;
		this.name = name;
		this.review = review;
		this.reviewDate = reviewDate;
		this.clean = clean;
		this.food = food;
		this.play = play;
		this.work = work;
		this.communication = communication;
	}
	
	//메소드 g/s
	public int getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
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
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getClean() {
		return clean;
	}
	public void setClean(int clean) {
		this.clean = clean;
	}
	public int getFood() {
		return food;
	}
	public void setFood(int food) {
		this.food = food;
	}
	public int getPlay() {
		return play;
	}
	public void setPlay(int play) {
		this.play = play;
	}
	public int getWork() {
		return work;
	}
	public void setWork(int work) {
		this.work = work;
	}
	public int getCommunication() {
		return communication;
	}
	public void setCommunication(int communication) {
		this.communication = communication;
	}
	
	//메소드 일반
	@Override
	public String toString() {
		return "ReviewVo [bookingNo=" + bookingNo + ", usersNo=" + usersNo + ", name=" + name + ", review=" + review
				+ ", reviewDate=" + reviewDate + ", clean=" + clean + ", food=" + food + ", play=" + play + ", work="
				+ work + ", communication=" + communication + "]";
	}
	
}
