package com.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("recipe")
public class Recipe {
	@RequestMapping("recipe_content.sek")
	public String recipe_content(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../recipe/recipe_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe.sek")
	public String recipe(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../recipe/gallery.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
