package com.noticedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class NoticeInsertModel implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
/*		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");*/
		
		String notice_sub=req.getParameter("notice_sub");
		String notice_content=req.getParameter("notice_content");
		NoticeDTO d=new NoticeDTO();
		d.setNotice_sub(notice_sub);
		d.setNotice_content(notice_content);
		// DB¿¬µ¿
		NoticeDAO.noticeInsert(d);
		return "recipe.sek";
	}

}