package com.diarydao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaDiary implements YoseksaModel{

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../calendar/cal_iframe.html");
		return "yoSeksa/function/main/main.jsp";
	}

}