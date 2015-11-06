package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Reply.ReplyDAO;
import com.Reply.ReplylDTO;
import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("reply")
public class Reply {
	ReplyDAO rdao=ReplyDAO.newInstance();
	@RequestMapping("recipe_reply.sek")
	public String recipe_reply(HttpServletRequest req){
		ReplyDAO dao=ReplyDAO.newInstance();
		ReplylDTO d=new ReplylDTO();
		String recipe_no=req.getParameter("recipe_no");
		String reply_content=req.getParameter("reply_content");
//		HttpSession session=req.getSession();
//		String id=(String)session.getAttribute("id");
//		String name=(String)session.getAttribute("name");
		String reply_nickname="임의의 이름";
		int member_no=1;
		int board_no=2;
		d.setRecipe_no(Integer.parseInt(recipe_no));
		d.setReply_content(reply_content);
		d.setReply_nickname(reply_nickname);
		d.setMember_no(member_no);
		d.setBoard_no(board_no);
		dao.replyNewInsert(d);
		// 댓글내용보기
		List<ReplylDTO> rview=rdao.replyView(Integer.parseInt(recipe_no));
		req.setAttribute("rvdto", rview);
		return "yoSeksa/function/recipe/recipe_reply.jsp";
	}

}
