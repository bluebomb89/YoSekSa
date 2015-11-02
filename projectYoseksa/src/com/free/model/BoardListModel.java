package com.free.model;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.*;
import java.util.*;
import com.free.dao.*;
import java.text.*;

public class BoardListModel implements YoseksaModel{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		// <% %>
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
	    List<FreeBoardDTO> list=
	    		FreeBoardDAO.freeboardListData(map);
	    for(FreeBoardDTO d:list)
	    {
	    	d.setReplyCount(FreeBoardDAO.freeboardReplyCount(d.getFree_no()));
	    }
	    int totalpage=FreeBoardDAO.freeboardTotalPage();
	    req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	    req.setAttribute("list", list);
	    req.setAttribute("curpage", curpage);
	    req.setAttribute("totalpage", totalpage);
		req.setAttribute("title", "자유 게시판");
		req.setAttribute("jsp", "../board/board_list.jsp");
		return "main/main.jsp";
	}

}
