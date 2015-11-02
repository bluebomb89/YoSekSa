package com.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("qna")
public class QnA {
	@RequestMapping("qna.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../QnA/qna.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
