package com.yoseksa;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.noticedao.NoticeDAO;
import com.noticedao.NoticeDTO;

public class YoseksaMainhome implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
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
//		공지사항 내용보기 출력
		req.setAttribute("jsp",	"../main/yoseksa.jsp");
		req.setAttribute("ntpage",	"../notice/notice.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}

