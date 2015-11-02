package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.free.dao.*;
import com.common.*;
import com.yoseksa.ReplyDTO;

public class ReplyNewInsertModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		String reply_content=req.getParameter("req_reply_content");
		String board_no=req.getParameter("board_no");
		String page=req.getParameter("page");
		HttpSession session=req.getSession();
		String nickname=(String)session.getAttribute("nickname");
		// DB¿¬µ¿
		ReplyDTO d=new ReplyDTO();
		d.setBoard_no(Integer.parseInt(board_no));
		d.setNickname(nickname);
		d.setReply_content(reply_content);
		FreeBoardDAO.replyNewInsert(d);
		req.setAttribute("no", board_no);
		req.setAttribute("page", page);
		return "yoSeksa/function/freeboard/reply_ok.jsp";
	}

}





