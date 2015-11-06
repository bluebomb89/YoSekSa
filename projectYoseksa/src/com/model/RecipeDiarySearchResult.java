package com.model;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DiaryDAO;
import com.recipedao.RecipeDTO;
import com.recipedao.*;

@Controller("recipediary")
public class RecipeDiarySearchResult {
	 @RequestMapping("diary_search.sek")
	   public String diary_search(HttpServletRequest req) throws IOException{
		// TODO Auto-generated method stub
		 
		String keyword=req.getParameter("keyword");
		String date=req.getParameter("date");
		String bld=req.getParameter("bld");
		
		System.out.println("■■■■■■■■■■■■■■RecipeDiraySearchResult.java■■■■■■■■■■■■■■■");
		System.out.println("keyword : "+keyword);
		System.out.println("date : "+date);
		System.out.println("bld : "+bld);
		
		String strPage=req.getParameter("page");
		if(strPage==null)
			strPage="1";
		int curpage=Integer.parseInt(strPage);
		int rowsize=10;
		int start=(curpage*rowsize)-(rowsize-1);
		int end=curpage*rowsize;		
		
		Map map=new HashMap();
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		System.out.println("start : "+start);
		System.out.println("end : "+end);
		List<RecipeDTO> list=DiaryDAO.searchListData(map);
		int totalpage=DiaryDAO.searchTotalPage(map);
		System.out.println("================================");
		
		for(RecipeDTO d:list)
		{
			System.out.println("sub : "+d.getRecipe_sub());
			System.out.println("no : "+d.getRecipe_no());
		}
		
		System.out.println("totalpage : "+totalpage);
		System.out.println("★★★★★★★★★★★★★★★★★★★★★★★★★★★★★");
		
		req.setAttribute("recipe_search_list", list);
		req.setAttribute("recipe_search_totalpage", totalpage);
		req.setAttribute("date", date);
		req.setAttribute("bld", bld);
		
		
		
		return "yoSeksa/function/calendar/add_recipe_popup_search_result.jsp";
	}

}
