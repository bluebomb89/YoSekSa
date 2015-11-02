package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.free.dao.*;
import com.common.*;
import com.yoseksa.ReplyDTO;

public class ReplyReUpdateModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		String reply_content=req.getParameter("req_reply_content");
		String board_no=req.getParameter("board_no");
		String page=req.getParameter("page");
		String reply_no=req.getParameter("reply_no");
		// DB연동
		ReplyDTO d=new ReplyDTO();
		d.setReply_no(Integer.parseInt(reply_no));
		d.setReply_content(reply_content);
		//DB연동
		FreeBoardDAO.replyReUpdate(d);
		req.setAttribute("no", board_no);
		req.setAttribute("page", page);
		return "yoSeksa/function/freeboard/reply_ok.jsp";
	}

}
