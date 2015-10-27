package com.noticedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaNotice implements YoseksaModel{

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return "yoSeksa/function/main/mainhome.jsp";
	}

}
