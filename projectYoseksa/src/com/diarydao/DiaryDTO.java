package com.diarydao;

import java.util.Date;

public class DiaryDTO {
	private int mgr_no;
	private int member_no;
	private int board_no;
	private Date diary_date;
	private String diary_bld;
	public int getMgr_no() {
		return mgr_no;
	}
	public void setMgr_no(int mgr_no) {
		this.mgr_no = mgr_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public Date getDiary_date() {
		return diary_date;
	}
	public void setDiary_date(Date diary_date) {
		this.diary_date = diary_date;
	}
	public String getDiary_bld() {
		return diary_bld;
	}
	public void setDiary_bld(String diary_bld) {
		this.diary_bld = diary_bld;
	}
	
	
}
