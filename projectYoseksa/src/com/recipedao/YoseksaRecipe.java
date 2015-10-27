package com.recipedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaRecipe implements YoseksaModel{

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../recipe/gallery.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}