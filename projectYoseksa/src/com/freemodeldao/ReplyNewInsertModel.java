package com.freemodeldao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.freedao.ReplyBoardDAO;
import com.freedao.ReplyDTO;
import com.common.YoseksaModel;

public class ReplyNewInsertModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		String msg=req.getParameter("rmsg");
		String bno=req.getParameter("bno");
		String page=req.getParameter("page");
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
		// DB¿¬µ¿
		ReplyDTO d=new ReplyDTO();
		d.setBno(Integer.parseInt(bno));
		d.setId(id);
		d.setName(name);
		d.setMsg(msg);
		ReplyBoardDAO.replyNewInsert(d);
		req.setAttribute("no", bno);
		req.setAttribute("page", page);
		return "yoSeksa/function/freeboard/reply_ok.jsp";
	}

}





