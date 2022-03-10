package com.javaex.vo;

public class FinishPVo {
	private int bookingNo;
	private String name;
	private String hp;
	private String adress1;
	private String adress2;
	private String adress3;
	private String checkin;
	private String checkout;
	private int ea;
	private String note;

	
public FinishPVo() {
}

public FinishPVo(int bookingNo, String name, String hp, String adress1, String adress2, String adress3,
		String checkin, String checkout, int ea, String note) {
	this.bookingNo = bookingNo;
		this.name = name;
		this.hp = hp;
		this.adress1 = adress1;
		this.adress2 = adress2;
		this.adress3 = adress3;
		this.checkin = checkin;
		this.checkout = checkout;
		this.ea = ea;
		this.note = note;
	}

	public int getBookingNo() {
		return bookingNo;
	}

	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
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

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public int getEa() {
		return ea;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "FinishPVo [bookingNo=" + bookingNo + ", name=" + name + ", hp=" + hp + ", adress1=" + adress1
				+ ", adress2=" + adress2 + ", adress3=" + adress3 + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", ea=" + ea + ", note=" + note +  "]";
	}
}
	
