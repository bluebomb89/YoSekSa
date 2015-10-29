package com.freemodeldao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
/*
 *	board_delete.do => 매칭
 *					board_delete (BoardDeleteModel) 
 						=> handlerRequest() <=> DB (mapper:SQL) => DAO
 						=> jsp 출력
 */	
import com.freedao.*;
public class BoardDeleteModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String no=req.getParameter("no");
		String page=req.getParameter("page");
		String pwd=req.getParameter("pwd");
		// DB연동
		boolean bCheck=false;
		String db_pwd=ReplyBoardDAO.
				boardGetPwd(Integer.parseInt(no));
		if(db_pwd.equals(pwd))
		{
			bCheck=true;
			ReplyBoardDAO.boardDelete(Integer.parseInt(no));
		}
		else
		{
			bCheck=false;
		}
		req.setAttribute("bCheck", bCheck);
		req.setAttribute("page", page);
		return "board/delete.jsp";
	}

}
