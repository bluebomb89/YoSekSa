package com.Reply;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

public interface Recipe_replyMapper  {
	@SelectKey(before = true, keyProperty = "reply_no", resultType = int.class, statement = {"SELECT NVL(MAX(reply_no)+1,1) as reply_no FROM yoseksa_reply"})
	@Insert("INSERT INTO yoseksa_reply VALUES(#{recipe_no},#{reply_no},"
			+ " #{board_no},#{member_no},#{reply_nickname},#{reply_content},"
			+ " SYSDATE,(SELECT NVL(MAX(group_id)+1,1) FROM yoseksa_reply),"
			+ " 0,0,0,0)")
	public void replyNewInsert(ReplylDTO d);
	@Select("SELECT * FROM yoseksa_reply where recipe_no=#{recipe_no} order by reply_no desc")
	public List<ReplylDTO> replyView(int recipe_no);
	@Select("SELECT count(*) from yoseksa_reply where recipe_no=#{recipe_no}")
	public int replyTotal(int recipe_no);
}
