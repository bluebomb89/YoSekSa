package com.model;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DiaryDTO;
import com.recipedao.RecipeDTO;

import java.util.*;

@Controller("recipediary")
public class RecipeDiarySearchResultOK {	
	
	
	
///////////////////////////////////////////////////date - > Date 형으로 변환	
	public static Date stringToDate(String strDate)
	{
		Date to=null;
		SimpleDateFormat transFormat=new SimpleDateFormat(strDate);
		
		try {
			to=(Date)transFormat.parse(strDate);
		} catch (Exception ex) {
			// TODO: handle exception
			System.out.println(ex.getMessage());
		}
		return to;
	}
///////////////////////////////////////////////////date - > Date 형으로 변환		
	
	@RequestMapping("diary_search_ok.sek")
	public String diary_search_ok(HttpServletRequest req) throws IOException{
		
		
		req.setCharacterEncoding("UTF-8");
		
		String reno=req.getParameter("reno");
		String resub=req.getParameter("resub");
		String strDate=req.getParameter("date");
		String bld=req.getParameter("bld");

		
		
		System.out.println("■■■■■■■■■■■■■■RecipeDiraySearchResultOK.java■■■■■■■■■■■■■■■");
		System.out.println("result_ok recipe_no: "+ reno);
		System.out.println("result_ok keyword : "+ resub);
		System.out.println("result_ok date : "+ strDate);
		System.out.println("result_ok bld : "+ bld);
		
		Map map=new HashMap();
		map.put("reno", reno);
		map.put("date", strDate);
		map.put("bld", bld);
		
		DiaryDTO d=new DiaryDTO();
		d.setDiary_date(stringToDate(strDate));
		d.setBoard_no(Integer.parseInt(reno));
		d.setDiary_bld(bld);
		

		
		
		
		return "yoSeksa/function/calendar/add_recipe_popup_search_result_ok.jsp";
	}

}
