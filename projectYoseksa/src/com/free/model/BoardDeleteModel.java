package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *   board_delete.do => 매칭 
 *                  board_delete (BoardDeleteModel) XML
 *                   => handlerRequest() <=> DB (mapper:SQL)=>DAO
 *                   => jsp출력
 */
import com.free.dao.*;
import com.common.*;

public class BoardDeleteModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String free_no=req.getParameter("free_no");
		String page=req.getParameter("page");
		String free_pw=req.getParameter("free_pw");
		// DB연동 
		boolean bCheck=false;
		String db_pwd=FreeBoardDAO.freeboardGetPwd(Integer.parseInt(free_no));
		if(db_pwd.equals(free_pw))
		{
			bCheck=true;
			FreeBoardDAO.freeboardDelete(Integer.parseInt(free_no));
		}
		else
		{
			bCheck=false;
		}
		req.setAttribute("bCheck", bCheck);
		req.setAttribute("page", page);
		return "yoSeksa/function/freeboard/delete.jsp";
	}

}



