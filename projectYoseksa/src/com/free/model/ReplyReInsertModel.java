package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.free.dao.*;
import com.common.*;
import com.yoseksa.ReplyDTO;

public class ReplyReInsertModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String reply_content=req.getParameter("req_reply_content");
		String board_no=req.getParameter("board_no");
		String page=req.getParameter("page");
		String root=req.getParameter("pno");
		HttpSession session=req.getSession();
		/*String id=(String)session.getAttribute("id");*/
		String nickname=(String)session.getAttribute("nickname");
		// DB연동
		ReplyDTO d=new ReplyDTO();
		d.setBoard_no(Integer.parseInt(board_no));
		/*d.setId(id);*/
		d.setNickname(nickname);
		d.setReply_content(reply_content);
		//DB연동
		ReplyDTO prd=FreeBoardDAO.replyParentInfo(Integer.parseInt(root));
		FreeBoardDAO.replyStepIncrement(prd);
		d.setGroup_id(prd.getGroup_id());
		d.setGroup_step(prd.getGroup_step()+1);
		d.setGroup_tab(prd.getGroup_tab()+1);
		
		FreeBoardDAO.replyReInsert(d);
		FreeBoardDAO.replyDepthIncrement(Integer.parseInt(root));
		req.setAttribute("no", board_no);
		req.setAttribute("page", page);
		return "yoSeksa/fucntion/freeboard/reply_ok.jsp";
	}

}
