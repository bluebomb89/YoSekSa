package com.noticedao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.noticedao.NoticeDAO;
import com.noticedao.NoticeDTO;
import com.common.YoseksaModel;

public class YoseksaNotice implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
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
/*		for(NoticeDTO d:list)
		{
			d.setReplyCount(ReplyBoardDAO.boardReplyCount(d.getNo()));
		}*/
		//int totalpage=ReplyBoardDAO.boardTotalPage();
		//req.setAttribute("curpage", curpage);
		//req.setAttribute("totalpage", totalpage);
		//req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("list", list);
		//req.setAttribute("title", "자유 게시판");
		req.setAttribute("jsp", "../notice/notice.jsp");
		
		return "yoSeksa/function/main/main.jsp";
	}

}
