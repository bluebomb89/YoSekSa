package com.diarydao;

import java.util.Date;

public class DiaryDTO {
	private int mgr_no;
	private int recipe_no;
	private int member_no;
	private int board_no;
	private Date diary_date;
	private Date diary_regdate;
	private String diary_bld;
	private String recipe_sub;
	private String recipe_img;
	
	public String getRecipe_img() {
		return recipe_img;
	}
	public void setRecipe_img(String recipe_img) {
		this.recipe_img = recipe_img;
	}
	public int getMgr_no() {
		return mgr_no;
	}
	public void setMgr_no(int mgr_no) {
		this.mgr_no = mgr_no;
	}
	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
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
	public Date getDiary_regdate() {
		return diary_regdate;
	}
	public void setDiary_regdate(Date diary_regdate) {
		this.diary_regdate = diary_regdate;
	}
	public String getDiary_bld() {
		return diary_bld;
	}
	public void setDiary_bld(String diary_bld) {
		this.diary_bld = diary_bld;
	}
	public String getRecipe_sub() {
		return recipe_sub;
	}
	public void setRecipe_sub(String recipe_sub) {
		this.recipe_sub = recipe_sub;
	}

	
	
}
