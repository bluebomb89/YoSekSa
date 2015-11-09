package com.Reply;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.w3c.dom.stylesheets.LinkStyle;

public interface Recipe_replyMapper  {
	@SelectKey(before = true, keyProperty = "reply_no", resultType = int.class, statement = {"SELECT NVL(MAX(reply_no)+1,1) as reply_no FROM yoseksa_reply"})
	@Insert("INSERT INTO yoseksa_reply VALUES(#{recipe_no},#{reply_no},"
			+ " #{board_no},#{member_no},#{reply_nickname},#{reply_content},"
			+ " SYSDATE,(SELECT NVL(MAX(group_id)+1,1) FROM yoseksa_reply),"
			+ " 0,0,0,0)")
	public void replyNewInsert(ReplylDTO d);
	@Select("SELECT * FROM yoseksa_reply where recipe_no=#{recipe_no} ORDER BY group_id DESC , group_step ASC")
	public List<ReplylDTO> replyView(int recipe_no);
	@Select("SELECT count(*) from yoseksa_reply where recipe_no=#{recipe_no}")
	public int replyTotal(int recipe_no);
	@Select("SELECT group_id,group_step,group_tab FROM yoseksa_reply WHERE reply_no=#{reply_no}")
	public ReplylDTO replyParentInfo(int reply_no);
	@Update("UPDATE yoseksa_reply SET group_step=group_step+1 WHERE group_id=#{group_id} AND group_step>#{group_step}")
	public void replyStepIncrement(ReplylDTO d);
	@SelectKey(before = true, keyProperty = "reply_no", resultType = int.class, statement = {"SELECT NVL(MAX(reply_no)+1,1) as reply_no FROM yoseksa_reply"})
	@Insert("INSERT INTO yoseksa_reply VALUES(#{recipe_no},#{reply_no},"
			+ " #{board_no},#{member_no},#{reply_nickname},#{reply_content},"
			+ " SYSDATE,#{group_id},#{group_step},#{group_tab},#{root},0)")
	public void replyReInsert(ReplylDTO d);
	@Update("UPDATE yoseksa_reply SET depth=depth+1 WHERE reply_no=#{reply_no}")
	public void replyDepthIncrement(int reply_no);
}
