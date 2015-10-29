package com.recipedao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class YoseksaRecipeEnroll implements YoseksaModel {
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("jsp", "../recipe/recipe_enroll.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
