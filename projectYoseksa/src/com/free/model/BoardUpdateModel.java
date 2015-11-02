package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.*;
import com.free.dao.*;
public class BoardUpdateModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String strNo=req.getParameter("free_no");
		String strPage=req.getParameter("page");
		FreeBoardDTO d=FreeBoardDAO.freeboardUpdateData(
				Integer.parseInt(strNo));
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("title", "수정하기");
		req.setAttribute("jsp", "../board/board_update.jsp");
		return "main/main.jsp";
	}

}