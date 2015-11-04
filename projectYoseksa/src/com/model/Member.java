package com.model;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.memberdao.*;

@Controller("member")
public class Member {
	@RequestMapping("member_insert.sek")
	public String member_insert(HttpServletRequest req) throws IOException{
		try{
			req.setCharacterEncoding("EUC-KR");
			req.setAttribute("title", "회원가입");
			req.setAttribute("jsp", "../yoSeksa/function/member/join.jsp");
			
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}
			return "yoSeksa.sek";
	}
	
	@RequestMapping("member_insert_ok.sek")
	public String member_insert_ok(HttpServletRequest req) throws IOException{
		
		req.setCharacterEncoding("EUC-KR");
		try{
		String member_id=req.getParameter("member_id");
		String nickname=req.getParameter("nickname");
		String email=req.getParameter("email");
		String member_pw=req.getParameter("member_pw");
		
		MemberDTO d=new MemberDTO();
		d.setMember_id(member_id);
		d.setNickname(nickname);
		d.setEmail(email);
		d.setMember_pw(member_pw);
		
		// DB연동
		MemberDAO.memberInsert(d);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
		return "main.sek";
	}
	@RequestMapping("member_login.sek")
	public String member_login(HttpServletRequest req) throws IOException{
		
		String member_id=req.getParameter("member_id");
		String member_pw=req.getParameter("member_pw");
		String result="";
		int count=MemberDAO.memberIdCount(member_id);
		if(count==0)
		{
			result="NOID";
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
			}
			else
			{
				result="NOPWD";
			}
		}
		req.setAttribute("result", result);
		return "yoSeksa/function/member/login_ok.jsp";
	}
	
	@RequestMapping("member_logout.sek")
	public String member_logout(HttpServletRequest req) throws IOException{
		
		HttpSession session=req.getSession();
		session.invalidate();
		return "main.sek";
	}
}