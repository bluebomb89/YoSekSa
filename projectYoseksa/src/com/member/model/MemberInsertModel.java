package com.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class MemberInsertModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		try{
		req.setCharacterEncoding("EUC-KR");
		req.setAttribute("title", "회원가입");
		req.setAttribute("jsp", "../yoSeksa/function/member/join.jsp");
		
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return "yoSeksa.sek";
	}

}
