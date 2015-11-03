package com.model;

import java.io.IOException;
import java.util.*;


import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.recipedao.RecipeDAO;
import com.recipedao.RecipeDTO;

@Controller("recipe")
public class Recipe {
	@RequestMapping("recipe_content.sek")
	public String recipe_content(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../recipe/recipe_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe.sek")
	public String recipe(HttpServletRequest req) throws IOException{
		String strPage=req.getParameter("page");
	    if(strPage==null)
	    	strPage="1";
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=12;
	    int start=(curpage*rowSize)-(rowSize-1);
	    int end=curpage*rowSize;
	    Map map=new HashMap();
	    map.put("start", start); // #{start} get("start")
	    map.put("end", end);
	    List<RecipeDTO> list=
	    		RecipeDAO.recipeListData(map);
	    int totalpage=RecipeDAO.recipeTotalPage();
	    req.setAttribute("list", list);
	    req.setAttribute("curpage", curpage);
	    req.setAttribute("totalpage", totalpage);
		req.setAttribute("jsp",	"../recipe/gallery.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe_enroll.sek")
	public String recipe_enroll(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp", "../recipe/recipe_enroll.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
