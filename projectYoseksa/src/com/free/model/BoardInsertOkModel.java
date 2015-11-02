package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.*;
import com.free.dao.*;

public class BoardInsertOkModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String nickname=req.getParameter("nickname");
		String free_content=req.getParameter("free_content");
		String free_pw=req.getParameter("free_pw");
		
		FreeBoardDTO d=new FreeBoardDTO();
		d.setNickname(nickname);
		d.setFree_content(free_content);
		d.setFree_pw(free_pw);
		// DB¿¬µ¿
		FreeBoardDAO.freeboardInsert(d);
		return "board_list.sek";
	}

}
