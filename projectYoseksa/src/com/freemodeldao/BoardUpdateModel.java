package com.freemodeldao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.freedao.*;
public class BoardUpdateModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String strNo=req.getParameter("no");
		String strPage=req.getParameter("page");
		ReplyBoardDTO d=ReplyBoardDAO.boardUpdateData(
				Integer.parseInt(strNo));
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("title", "수정하기");
		req.setAttribute("jsp", "../board/board_update.jsp");
		return "main/main.jsp";
	}

}


