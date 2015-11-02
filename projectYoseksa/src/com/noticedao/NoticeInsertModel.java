package com.noticedao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class NoticeInsertModel implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String strPage=req.getParameter("page");
	    if(strPage==null)
	    	strPage="1";
	    if(strPage==""){
	    	strPage="1";
	    }
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=10;
	    int start=(curpage*rowSize)-(rowSize-1);
	    int end=curpage*rowSize;
	    Map map=new HashMap();
	    map.put("start", start); // #{start} get("start")
	    map.put("end", end);
		
		
/*		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");*/
		
		String notice_sub=req.getParameter("notice_sub");
		String notice_content=req.getParameter("notice_content");
		System.out.println(notice_sub);
		System.out.println(notice_content);
		NoticeDTO d=new NoticeDTO();
		d.setNotice_sub(notice_sub);
		d.setNotice_content(notice_content);
		// DB 코딩
		NoticeDAO.noticeInsert(d);
		req.setAttribute("ntpage",	"../notice/notice.jsp");
	    List<NoticeDTO> list=NoticeDAO.noticeListData(map);
	    int totalpage=NoticeDAO.noticeTotalPage();
	    req.setAttribute("notice_today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	    req.setAttribute("notice_list", list);
	    req.setAttribute("notice_curpage", curpage);
	    
	    req.setAttribute("notice_totalpage", totalpage);
		return "yoSeksa/function/notice/notice.jsp";
	}

}