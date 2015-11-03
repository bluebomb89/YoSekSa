package com.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.memberdao.MemberDAO;
import com.memberdao.MemberDTO;

import jdk.nashorn.internal.ir.annotations.Reference;

@Controller("join")
public class Join {
	@RequestMapping("member_login.sek")
	public String member_login(HttpServletRequest req) throws IOException{
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
	@RequestMapping("member_logout.sek")
	public String member_logout(HttpServletRequest req) throws IOException{
		HttpSession session=req.getSession();
		session.invalidate();
		return "yoseksa.sek";
	}
	@RequestMapping("join.sek")
	public String join(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../member/join.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}














