package com.yoseksa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaQNA implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../QnA/qna.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}

