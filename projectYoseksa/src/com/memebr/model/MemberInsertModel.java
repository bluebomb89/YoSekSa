package com.memebr.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class MemberInsertModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("title", "회원가입");
		req.setAttribute("member_insert", "../function/member/join.jsp");
		return "main/main.jsp";
	}

}
