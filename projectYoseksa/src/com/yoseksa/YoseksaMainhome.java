package com.yoseksa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaMainhome implements YoseksaModel{

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../main/yoseksa.jsp");
		req.setAttribute("ntpage",	"../notice/notice.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}

