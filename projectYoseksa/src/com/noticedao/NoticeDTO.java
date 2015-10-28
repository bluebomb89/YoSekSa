package com.noticedao;

import java.util.Date;

public class NoticeDTO {
	private int notice_no;
	private String notice_sub;
	private String notice_content;
	private Date notice_date;
	private int notice_hit;
	
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_sub() {
		return notice_sub;
	}
	public void setNotice_sub(String notice_sub) {
		this.notice_sub = notice_sub;
	}
	public String getNotive_content() {
		return notice_content;
	}
	public void setNotive_content(String notive_content) {
		this.notice_content = notive_content;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public int getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}
	
	
}