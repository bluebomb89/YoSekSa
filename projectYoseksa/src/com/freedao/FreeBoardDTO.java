package com.freedao;
import java.util.*;
public class FreeBoardDTO {
	private int board_no;
	private int free_no;
	private int member_no;
	private String nickname;
	private String member_pic;
	private String free_content;
	private Date free_date;
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getFree_no() {
		return free_no;
	}
	public void setFree_no(int free_no) {
		this.free_no = free_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMember_pic() {
		return member_pic;
	}
	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}
	public String getFree_content() {
		return free_content;
	}
	public void setFree_content(String free_content) {
		this.free_content = free_content;
	}
	public Date getFree_date() {
		return free_date;
	}
	public void setFree_date(Date free_date) {
		this.free_date = free_date;
	}

}
