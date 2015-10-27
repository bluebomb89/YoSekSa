package com.recipedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaRecipeContent implements YoseksaModel{

	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp",	"../recipe/recipe_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
