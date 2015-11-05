package com.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DiaryDAO;
import com.recipedao.RecipeDTO;

import com.recipedao.*;
@Controller("diary")
public class RecipeDiarySearchResult implements YoseksaModel{
	@RequestMapping("diary_search.sek")

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String keyword=req.getParameter("keyword");		
		
		
		
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
		List<RecipeDTO> list=DiaryDAO.searchListData(map);
		int totalpage=DiaryDAO.searchTotalPage(map);		
		
		req.setAttribute("recipe_search_list", list);
		req.setAttribute("recipe_search_totalpage", totalpage);
		
		
		
		return "yoSeksa/function/calendar/add_recipe_popup_search_result.jsp";
	}

}
