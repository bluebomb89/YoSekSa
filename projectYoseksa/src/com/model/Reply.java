package com.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Reply.ReplyDAO;
import com.Reply.ReplylDTO;
import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("Reply")
public class Reply {
	ReplyDAO rdao=ReplyDAO.newInstance();
	@RequestMapping("recipe_reply.sek")
	public String recipe_reply(HttpServletRequest req){
		ReplyDAO dao=ReplyDAO.newInstance();
		ReplylDTO d=new ReplylDTO();
		String recipe_no=req.getParameter("recipe_no");
		String reply_content=req.getParameter("reply_content");
		String rPage=req.getParameter("rpage");
		if(rPage==null)
		{
			rPage="1";
		}
		int rcurpage=Integer.parseInt(rPage);
		HttpSession session=req.getSession();
		int member_no=(int) session.getAttribute("member_no");
		String reply_nickname=(String)session.getAttribute("nickname");
		int board_no=2;
		d.setRecipe_no(Integer.parseInt(recipe_no));
		d.setReply_content(reply_content);
		d.setReply_nickname(reply_nickname);
		d.setMember_no(member_no);
		d.setBoard_no(board_no);
		dao.replyNewInsert(d);
		// 댓글내용보기
		List<ReplylDTO> rview=rdao.replyView(Integer.parseInt(recipe_no));
		List<ReplylDTO> temp=new ArrayList<ReplylDTO>();
		int j=0;
		int pagecnt=(rcurpage*5)-5;
		for(int i=0;i<rview.size();i++)
		{
			if(j<5 && i>=pagecnt)
			{
				ReplylDTO dd=rview.get(i);
				temp.add(dd);
				j++;
			}
		}
		// 댓글 총갯수 구하기
		int rtotal=rdao.replyTotal(Integer.parseInt(recipe_no));
		req.setAttribute("rtotal", rtotal);
		req.setAttribute("rvdto", temp);
		req.setAttribute("rcurpage", rcurpage);
		return "yoSeksa/function/recipe/recipe_reply.jsp";
	}
	@RequestMapping("reply_view.sek")
	public String replyview(HttpServletRequest req){
		String recipe_no=req.getParameter("recipe_no");
		String rPage=req.getParameter("rpage");
		if(rPage==null || rPage=="")
		{
			rPage="1";
		}
		int rcurpage=Integer.parseInt(rPage);
		List<ReplylDTO> rview=rdao.replyView(Integer.parseInt(recipe_no));
		List<ReplylDTO> temp=new ArrayList<ReplylDTO>();
		int j=0;
		int pagecnt=(rcurpage*5)-5;
		for(int i=0;i<rview.size();i++)
		{
			if(j<5 && i>=pagecnt)
			{
				ReplylDTO dd=rview.get(i);
				temp.add(dd);
				j++;
			}
		}
		//댓글 총갯수 구하기
		int rtotal=rdao.replyTotal(Integer.parseInt(recipe_no));
		req.setAttribute("rtotal", rtotal);
		req.setAttribute("rvdto", temp);
		req.setAttribute("rcurpage", rcurpage);
		return "yoSeksa/function/recipe/recipe_reply.jsp";
	}
	@RequestMapping("reply_re.sek")
	public String reply_re(HttpServletRequest req){
		String recipe_no=req.getParameter("re_recipe_no");
		String root=req.getParameter("re_reply_no");
		String reply_content=req.getParameter("re_reply_content");
		String rPage=req.getParameter("rpage");
		if(rPage==null || rPage=="")
		{
			rPage="1";
		}
		System.out.println("댓글에 댓글 넘버"+root);
		//DB연동
		ReplylDTO d=new ReplylDTO();
		d.setRecipe_no(Integer.parseInt(recipe_no));
		d.setReply_content(reply_content);
//		HttpSession session=req.getSession();
//		String id=(String)session.getAttribute("id");
//		String name=(String)session.getAttribute("name");
		String reply_nickname="댓글에 댓글 이름";
		int member_no=1;
		int board_no=2;
		d.setReply_nickname(reply_nickname);
		d.setMember_no(member_no);
		d.setBoard_no(board_no);
		// 댓글에댓글 DB
		ReplylDTO rd=rdao.replyParentInfo(Integer.parseInt(root));
		rdao.replyStepIncrement(rd);
		d.setGroup_id(rd.getGroup_id());
		d.setGroup_step(rd.getGroup_step()+1);
		d.setGroup_tab(rd.getGroup_tab()+1);
		rdao.replyReInsert(d);
		rdao.replyDepthIncrement(Integer.parseInt(root));
		return "yoSeksa/function/recipe/recipe_reply.jsp";
	}
}


























