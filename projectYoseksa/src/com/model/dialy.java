package com.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
@Controller("dialy")
public class dialy {
	@RequestMapping("diary.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../calendar/cal_iframe.html");
		return "yoSeksa/function/main/main.jsp";
	}
}
