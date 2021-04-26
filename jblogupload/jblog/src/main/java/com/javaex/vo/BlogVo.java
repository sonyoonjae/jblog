package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class BlogVo {

	private int userNo;
	private String blogTitle;
	private String logoFile;
	private String id;
	private MultipartFile file;

	public BlogVo() {
	}

	public BlogVo(int userNo, String blogTitle, String logoFile, String id, MultipartFile file) {
		this.userNo = userNo;
		this.blogTitle = blogTitle;
		this.logoFile = logoFile;
		this.id = id;
		this.file = file;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getLogoFile() {
		return logoFile;
	}

	public void setLogoFile(String logoFile) {
		this.logoFile = logoFile;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "BlogVo [userNo=" + userNo + ", blogTitle=" + blogTitle + ", logoFile=" + logoFile + ", id=" + id
				+ ", file=" + file + "]";
	}

}
