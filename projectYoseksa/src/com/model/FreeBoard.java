package com.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("freeboard")
public class FreeBoard {
	@RequestMapping("freeboard.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../freeboard/list.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}
