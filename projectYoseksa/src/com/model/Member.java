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
}