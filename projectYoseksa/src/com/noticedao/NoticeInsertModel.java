package com.noticedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class NoticeInsertModel implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");
		NoticeDTO d=new NoticeDTO();
		d.setName(name);
		d.setSubject(subject);
		d.setContent(content);
		d.setPwd(pwd);
		// DB¿¬µ¿
		ReplyBoardDAO.boardInsert(d);
		return "board_list.do";
		return "yoSeksa/function/main/mainhome.jsp";
	}

}