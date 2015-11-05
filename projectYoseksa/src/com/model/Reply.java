package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Reply.ReplyDAO;
import com.Reply.ReplyDTO;
import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("reply")
public class Reply {
	@RequestMapping("recipe_reply.sek")
	public String recipe_reply(HttpServletRequest req){
		ReplyDAO dao=new ReplyDAO();
		ReplyDTO d=new ReplyDTO();
		String recipe_no=req.getParameter("recipe_no");
		String reply_content=req.getParameter("reply_content");
//		HttpSession session=req.getSession();
//		String id=(String)session.getAttribute("id");
//		String name=(String)session.getAttribute("name");
		String nickname="임의의 이름";
		int member_no=1;
		int board_no=2;
		d.setRecipe_no(Integer.parseInt(recipe_no));
		d.setReply_content(reply_content);
		d.setNickname(nickname);
		d.setMember_no(member_no);
		d.setBoard_no(board_no);
		System.out.println("레시피엔오 : "+recipe_no);
		System.out.println("레시피컨텐트 : "+reply_content);
		System.out.println("회원번호 : "+member_no);
		System.out.println("게시판번호 : "+board_no);
		System.out.println("닉네임 : "+nickname);
		System.out.println("응??");
//		int sequence=dao.replySequnece(Integer.parseInt(recipe_no));
//		System.out.println(sequence);
		dao.replyNewInsert(d);
		
		return "yoSeksa/function/recipe/recipe_reply.jsp";
	}

}
