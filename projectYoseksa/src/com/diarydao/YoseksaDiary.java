package com.diarydao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaDiary implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../calendar/cal_iframe.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
