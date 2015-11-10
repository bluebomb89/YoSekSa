package com.model;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DateToString;
import com.diarydao.DiaryDAO;
import com.diarydao.DiaryDTO;
import com.recipedao.RecipeDTO;
@Controller("diary")
public class diary {
	@RequestMapping("diary.sek")
	public String diary(HttpServletRequest req) throws IOException{
		
		
/*		String currYear=req.getParameter("currYear");
		String currMonth=req.getParameter("currMonth");		
		String action=req.getParameter("action");

		
		req.setAttribute("year", currYear);
		req.setAttribute("month", currMonth);
		req.setAttribute("action", action);
		*/
		
		System.out.println("■■■■■■■■■■■■■■diary.sek■■■■■■■■■■■■■■■");
		HttpSession session=req.getSession();
		System.out.println("session"+session);
		int member_no=0;
		String nickname="";
		
		String returnVal="../calendar/calendar.jsp";
		
		try{
	        member_no=(int)session.getAttribute("member_no");
	        System.out.println("aaaaa");
	        nickname=(String)session.getAttribute("nickname");
		}catch(Exception ex){
			ex.getMessage();
		}
		if(nickname==""){
			returnVal="../calendar/only_member_allow.jsp";
		}

        System.out.println("member : "+member_no);
        System.out.println("nickname"+nickname);
        
		
		req.setAttribute("jsp",	returnVal);
		
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
	@RequestMapping("diary_insert.sek")
	public String diary_insert(HttpServletRequest req) throws IOException{
		
		
		req.setCharacterEncoding("UTF-8");
		
		
		HttpSession session=req.getSession();
        int member_no=(int) session.getAttribute("member_no");
        String nickname=(String)session.getAttribute("nickname");
		
		
		String reno=req.getParameter("reno");//검색한 레시피 고유번호
		String resub=req.getParameter("resub");//레시피 제목
		String strDate=req.getParameter("date");//사용자가 달력에서 클릭한 날짜
		String bld=req.getParameter("bld");//아침 점심 저녁
		
		DateToString dts=new DateToString();//사용자가 클릭한 String형 날짜를 Date 형으로 변환
		
		Date date=dts.toDate(strDate);// ""
		
		System.out.println("dateToString : "+date);	
		
		System.out.println("■■■■■■■■■■■■■■diary_insert.java■■■■■■■■■■■■■■■");
		System.out.println("result_ok board_no: "+ reno);
		System.out.println("result_ok keyword : "+ resub);
		System.out.println("result_ok date : "+ strDate);
		System.out.println("result_ok bld : "+ bld);
		
		DiaryDTO d=new DiaryDTO();
		d.setRecipe_no(Integer.parseInt(reno));
		d.setMember_no(member_no);;
		d.setBoard_no(4);
		d.setDiary_date(date);
		d.setDiary_bld(bld);	
		
		DiaryDAO.diaryInsert(d);
		
		req.setAttribute("jsp", "../calendar/calendar.jsp");
		
		
		
		return "yoSeksa/function/main/main.jsp";
		
	}
	@RequestMapping("diary_loginPlz.sek")
	public String loginPlz(HttpServletRequest req) throws IOException{
		
		
		req.setCharacterEncoding("UTF-8");
		
/*		
		HttpSession session=req.getSession();
        int member_no=(int) session.getAttribute("member_no");
        String nickname=(String)session.getAttribute("nickname");*/
		

		
		req.setAttribute("jsp", "../calendar/only_member_allow.jsp");
		
		
		
		return "yoSeksa/function/main/main.jsp";
		
	}
	

	
}
