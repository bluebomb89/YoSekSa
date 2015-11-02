package com.free.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.*;
import com.free.dao.*;

public class BoardInsertModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("title", "±Û¾²±â");
		req.setAttribute("jsp", "../yoSeksa/function/freeboard/board_insert.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
