package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.*;
import com.common.YoseksaModel;

public class MemberInsertOkModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
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
		
		// DB¿¬µ¿
		MemberDAO.memberInsert(d);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
		return "main.sek";
	}

}
