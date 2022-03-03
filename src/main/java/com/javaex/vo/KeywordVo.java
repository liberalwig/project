package com.javaex.vo;

public class KeywordVo {

	//필드
	private int hostNo;
	private String keywordName;
	
	//생성자
	public KeywordVo() {
	}
	public KeywordVo(int hostNo, String keywordName) {
		this.hostNo = hostNo;
		this.keywordName = keywordName;
	}

	//메소드 g/s
	public int getHostNo() {
		return hostNo;
	}
	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}
	public String getKeywordName() {
		return keywordName;
	}
	public void setKeywordName(String keywordName) {
		this.keywordName = keywordName;
	}

	//메소드 일반
	@Override
	public String toString() {
		return "KeywordVo [hostNo=" + hostNo + ", keywordName=" + keywordName + "]";
	}
}
