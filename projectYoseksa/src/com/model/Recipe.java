package com.model;
import com.recipedao.*;
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
	@RequestMapping("recipe_enroll.sek")
	public String recipe_enroll(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp", "../recipe/recipe_enroll.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe_insert.sek")
	public String recipe_insert(HttpServletRequest req) throws IOException{
		String recipe_sub=req.getParameter("cok_title");
		String kind_no=req.getParameter("cok_sq_category_4");
		String situ_no=req.getParameter("cok_sq_category_2");
		String how_no=req.getParameter("cok_sq_category_1");
		String jaeryo_no=req.getParameter("cok_sq_category_3");
		String recipe_img=req.getParameter("메인화면 이미지");
		RecipeDTO d=new RecipeDTO();
		d.setRecipe_sub(recipe_sub);
		d.setKind_no(Integer.parseInt(kind_no));
		d.setSitu_no(Integer.parseInt(situ_no));
		d.setHow_no(Integer.parseInt(how_no));
		d.setJaeryo_no(Integer.parseInt(jaeryo_no));
		d.setRecipe_img("메인화면 이미지");
		d.setBoard_no(2);
		// db연동
		RecipeDAO.recipeInsert(d);
		req.setAttribute("jsp",	"../recipe/gallery.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}












