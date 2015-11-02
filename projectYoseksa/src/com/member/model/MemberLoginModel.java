package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.common.YoseksaModel;
import com.member.dao.*;

public class MemberLoginModel  implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String member_id=req.getParameter("member_id");
		String member_pw=req.getParameter("member_pw");
		String result="";
		int count=MemberDAO.memberIdCount(member_id);
		try{
		if(count==0)
		{
			result="NOID";
			req.setAttribute("result", result);
		}
		else
		{
			MemberDTO d=MemberDAO.memberGetInfo(member_id);
			if(member_pw.equals(d.getMember_pw()))
			{
				result="OK";
				HttpSession session=req.getSession();
				session.setAttribute("member_id", member_id);
				// ${sessionScope.id} => session.getAttribute("id")
				session.setAttribute("nickname", d.getNickname());
				//session.setAttribute("admin", d.getAdmin());
				req.setAttribute("result", result);
			}
			else
			{
				result="NOPWD";
				req.setAttribute("result", result);
			}
		}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "yoSeksa/function/member/login.jsp";
	}

}
