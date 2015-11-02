package com.model;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.noticedao.NoticeDAO;
import com.noticedao.NoticeDTO;

@Controller("notice")
public class Notice {
	@RequestMapping("notice_insert.sek")
	public String notice_insert(HttpServletRequest req) throws UnsupportedEncodingException{
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
/*		String name=req.getParameter("name");
		String subject=req.getParameter("subject");
		String content=req.getParameter("content");
		String pwd=req.getParameter("pwd");*/
		
		String notice_sub=req.getParameter("notice_sub");
		String notice_content=req.getParameter("notice_content");
		NoticeDTO d=new NoticeDTO();
		d.setNotice_sub(notice_sub);
		d.setNotice_content(notice_content);
		// DB¿¬µ¿
		NoticeDAO.noticeInsert(d);
//		여기까지 DB 인서트
		
//		여기서부터 노티스DB 다시 호출
		/*return "yoseksa.sek";*/
		String strPage=req.getParameter("page");
	    if(strPage==null)
	    	strPage="1";
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=10;
	    int start=(curpage*rowSize)-(rowSize-1);
	    int end=curpage*rowSize;
	    Map map=new HashMap();
	    map.put("start", start); // #{start} get("start")
	    map.put("end", end);
	    List<NoticeDTO> list=NoticeDAO.noticeListData(map);
	    int totalpage=NoticeDAO.noticeTotalPage();
	    req.setAttribute("notice_today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	    req.setAttribute("notice_list", list);
	    req.setAttribute("notice_curpage", curpage);
	    req.setAttribute("notice_totalpage", totalpage);
		return "yoSeksa/function/notice/notice.jsp";
	}
	
}
