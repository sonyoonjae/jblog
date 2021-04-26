package com.javaex.vo;

public class CateVo {

	private int cateNo;
	private String cateName;
	private String description;
	private String regDate;
	private int userNo;
	private int cnt;

	public CateVo() {
	}

	public CateVo(int cateNo, String cateName, String description, String regDate, int userNo, int cnt) {
		super();
		this.cateNo = cateNo;
		this.cateName = cateName;
		this.description = description;
		this.regDate = regDate;
		this.userNo = userNo;
		this.cnt = cnt;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "CateVo [cateNo=" + cateNo + ", cateName=" + cateName + ", description=" + description + ", regDate="
				+ regDate + ", userNo=" + userNo + ", cnt=" + cnt + "]";
	}
	

}
