package com.javaex.vo;

public class ItemVo {

	//필드
	private int itemNo;
	private int usersNo;
	private int cartNo;
	private int historyNo;
	private int itemphotoNo;
	private String category;
	private String title;
	private String info;
	private int cost;
	private int ea;
	private String path;
	private String status;
	
	//생성자
	public ItemVo() {
	}
	public ItemVo(int itemNo, int usersNo, int cartNo, int historyNo, int itemphotoNo, String category, String title,
			String info, int cost, int ea, String path, String status) {
		this.itemNo = itemNo;
		this.usersNo = usersNo;
		this.cartNo = cartNo;
		this.historyNo = historyNo;
		this.itemphotoNo = itemphotoNo;
		this.category = category;
		this.title = title;
		this.info = info;
		this.cost = cost;
		this.ea = ea;
		this.path = path;
		this.status = status;
	}
	
	//메소드 g/s
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public int getUsersNo() {
		return usersNo;
	}
	public void setUsersNo(int usersNo) {
		this.usersNo = usersNo;
	}
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
	public int getItemphotoNo() {
		return itemphotoNo;
	}
	public void setItemphotoNo(int itemphotoNo) {
		this.itemphotoNo = itemphotoNo;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	//메소드 일반
	@Override
	public String toString() {
		return "ItemVo [itemNo=" + itemNo + ", usersNo=" + usersNo + ", cartNo=" + cartNo + ", historyNo=" + historyNo
				+ ", itemphotoNo=" + itemphotoNo + ", category=" + category + ", title=" + title + ", info=" + info
				+ ", cost=" + cost + ", ea=" + ea + ", path=" + path + ", status=" + status + "]";
	}
	
	
}
