package com.model;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DateToString;
import com.diarydao.DiaryDAO;
import com.diarydao.DiaryDTO;
import com.recipedao.RecipeDTO;
@Controller("diary")
public class diary {
	@RequestMapping("diary.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../calendar/cal_iframe.html");
		return "yoSeksa/function/main/main.jsp";
	}
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
	 
	@RequestMapping("diary_search_ok.sek")
		public String diary_search_ok(HttpServletRequest req) throws IOException{
			
			
			req.setCharacterEncoding("UTF-8");
			
			String reno=req.getParameter("reno");
			String resub=req.getParameter("resub");
			String strDate=req.getParameter("date");
			String bld=req.getParameter("bld");
			
			DateToString dts=new DateToString();
			
			Date date=dts.toDate(strDate);
			
			System.out.println("dateToString : "+date);
			
			
			System.out.println("■■■■■■■■■■■■■■RecipeDiraySearchResultOK.java■■■■■■■■■■■■■■■");
			System.out.println("result_ok board_no: "+ reno);
			System.out.println("result_ok keyword : "+ resub);
			System.out.println("result_ok date : "+ strDate);
			System.out.println("result_ok bld : "+ bld);
			
/*			Map map=new HashMap();
			map.put("reno", reno);
			map.put("date", strDate);
			map.put("bld", bld);*/
			
			DiaryDTO d=new DiaryDTO();
			d.setBoard_no(Integer.parseInt(reno));
			d.setDiary_bld(bld);
			d.setDiary_date(date);
			
			
			DiaryDAO.diaryInsert(d);
			return "yoSeksa/function/calendar/add_recipe_popup_search_result_ok.jsp";
		}	 
}
