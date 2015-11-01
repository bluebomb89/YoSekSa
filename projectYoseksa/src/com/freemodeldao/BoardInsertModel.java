package com.freemodeldao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class BoardInsertModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("title", "±Û¾²±â");
		req.setAttribute("jsp", "../function/freeboard/board_insert.jsp");
		return "yoSeksa/function/main/mainhome.jsp";
	}

}
