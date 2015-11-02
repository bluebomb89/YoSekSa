package com.free.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.free.dao.*;
import com.yoseksa.*;

public class BoardContentModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String rPage=req.getParameter("rPage");
		int type=1;
		if(rPage==null)
		{
			rPage="1";
			type=1;
		}
		int rcurpage=Integer.parseInt(rPage);
		String strNo=req.getParameter("free_no");
		String strPage=req.getParameter("page");
		FreeBoardDTO d=FreeBoardDAO.freeboardContentData(
				Integer.parseInt(strNo),type);
		List<ReplyDTO> temp=
			FreeBoardDAO.replyListData(Integer.parseInt(strNo));
		int rtotal=FreeBoardDAO.replyPageTotalpage(Integer.parseInt(strNo));
		List<ReplyDTO> list=
				new ArrayList<ReplyDTO>();
		int j=0;
		int pagecnt=(rcurpage*5)-5;
		for(int i=0;i<temp.size();i++)
		{
			if(j<5 && i>=pagecnt)
			{
				ReplyDTO dd=temp.get(i);
				list.add(dd);
				j++;
			}
		}
		req.setAttribute("rtotal", rtotal);
		req.setAttribute("rcurpage", rcurpage);
		req.setAttribute("rlist", list);
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("title", "내용보기");
		req.setAttribute("jsp", "../yoSeksa/function/freeboard/freeboard_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}

}
