package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.free.dao.*;
import com.yoseksa.ReplyDTO;
import com.common.*;

public class ReplyDeleteModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String reply_no=req.getParameter("reply_no");
		String board_no=req.getParameter("board_no");
		String page=req.getParameter("page");
		// DB
		ReplyDTO d=FreeBoardDAO.replyGetDepthRoot(Integer.parseInt(reply_no));
		if(d.getDepth()==0)
		{
			FreeBoardDAO.replyDelete(Integer.parseInt(reply_no));
		}
		else
		{
			FreeBoardDAO.replyMsgUpdate(Integer.parseInt(reply_no));
		}
		FreeBoardDAO.replyDepthDecrement(d.getRoot());
		
		req.setAttribute("no", board_no);
		req.setAttribute("page", page);
		return "yoSeksa/function/freeboard/reply_ok.jsp";
	}

}
