package com.member.dao;

public class MemberDTO {
	
	private int member_no;
	private String member_id;
	private String member_pw;
	private String nickname;
	private String email;
	private String member_pic;
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMember_pic() {
		return member_pic;
	}
	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}
	
	
}
