package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.free.dao.*;
import com.common.*;

public class BoardUpdateOkModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("EUC-KR");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("free_no");
		String nickname=req.getParameter("nickname");
		String free_content=req.getParameter("free_content");
		String free_pw=req.getParameter("free_pw");
		FreeBoardDTO d=new FreeBoardDTO();
		d.setFree_no(Integer.parseInt(strNo));
		d.setNickname(nickname);;
		d.setFree_content(free_content);
		d.setFree_pw(free_pw);
		// DB¿¬µ¿ 
		String db_pwd=FreeBoardDAO.freeboardGetPwd(d.getFree_no());
		boolean bCheck=false;
		if(db_pwd.equals(free_pw))
		{
			bCheck=true;
			FreeBoardDAO.freeboardUpdate(d);
		}
		else
		{
			bCheck=false;
		}
		req.setAttribute("bCheck", bCheck);
		req.setAttribute("no", strNo);
		req.setAttribute("page", strPage);
		return "yoSeksa/function/freeboard/freeboard_update_ok.jsp";
	}

}