package com.model;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.freedao.*;

@Controller("freeboard")
public class FreeBoard {
	
	@RequestMapping("freeboard.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp", "../freeboard/list.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	
	@RequestMapping("freeboard_content.sek")
	public String freeboard_content(HttpServletRequest req) throws IOException{
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
		FreeBoardDTO d=FreeBoardDAO.freeboardContentData(Integer.parseInt(strNo),type);
		List<ReplyDTO> temp=FreeBoardDAO.replyListData(Integer.parseInt(strNo));
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
		req.setAttribute("title", "제목");
		req.setAttribute("jsp", "../freeboard/freeboard_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	
	 @RequestMapping("freeboard_delete.sek")
	   public String freeboard_delete(HttpServletRequest req)
	   {
		 String free_no=req.getParameter("free_no");
			String page=req.getParameter("page");
			String free_pw=req.getParameter("free_pw");
			// DB¿¬µ¿ 
			boolean bCheck=false;
			String db_pwd=FreeBoardDAO.freeboardGetPwd(Integer.parseInt(free_no));
			if(db_pwd.equals(free_pw))
			{
				bCheck=true;
				FreeBoardDAO.freeboardDelete(Integer.parseInt(free_no));
			}
			else
			{
				bCheck=false;
			}
			req.setAttribute("bCheck", bCheck);
			req.setAttribute("page", page);
			return "yoSeksa/function/freeboard/freeboard_delete.jsp";
	   }
	 
	 @RequestMapping("freeboard_insert.sek")
	   public String freeboard_insert(HttpServletRequest req)
	   {
		 req.setAttribute("title", "글쓰기");
			req.setAttribute("jsp", "../freeboard/insert.jsp");
			return "yoSeksa/function/main/main.jsp";
	   }
	 
	 @RequestMapping("freeboard_insert_ok.sek")
	   public String board_insert(HttpServletRequest req)throws IOException
	   {
		 	req.setCharacterEncoding("EUC-KR");
			String nickname=req.getParameter("nickname");
			String free_content=req.getParameter("free_content");
			String free_pw=req.getParameter("free_pw");
			
			FreeBoardDTO d=new FreeBoardDTO();
			d.setNickname(nickname);
			d.setFree_content(free_content);
			d.setFree_pw(free_pw);
			// DB¿¬µ¿
			FreeBoardDAO.freeboardInsert(d);
			return "board_list.sek";
	   }
	 
	 @RequestMapping("freeboard_insert.sek")
	   public String freeboard_list(HttpServletRequest req)
	   {
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
		    	d.setReplyCount(FreeBoardDAO.boardReplyCount(d.getFree_no()));
		    }
		    int totalpage=FreeBoardDAO.freeboardTotalPage();
		    req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		    req.setAttribute("list", list);
		    req.setAttribute("curpage", curpage);
		    req.setAttribute("totalpage", totalpage);
			req.setAttribute("title", "게시판 목록");
			req.setAttribute("jsp", "../freeboard/list.jsp");
			return "main/main.jsp";
	   }
	 
	 @RequestMapping("freeboard_update.sek")
	   public String freeboard_update(HttpServletRequest req)
	   {
		 String strNo=req.getParameter("free_no");
			String strPage=req.getParameter("page");
			FreeBoardDTO d=FreeBoardDAO.freeboardUpdateData(
					Integer.parseInt(strNo));
			req.setAttribute("page", strPage);
			req.setAttribute("dto", d);
			req.setAttribute("title", "수정하기");
			req.setAttribute("jsp", "../freeboard/update.jsp");
			return "main/main.jsp";
	   }
	 
	 @RequestMapping("freeboard_update_ok.sek")
	   public String freeboard_update_ok(HttpServletRequest req) throws IOException
	   {
		 	req.setCharacterEncoding("EUC-KR");
			String strPage=req.getParameter("page");
			String strNo=req.getParameter("free_no");
			String nickname=req.getParameter("nickname");
			String free_content=req.getParameter("free_content");
			String free_pw=req.getParameter("free_pw");
			FreeBoardDTO d=new FreeBoardDTO();
			d.setFree_no(Integer.parseInt(strNo));
			d.setNickname(nickname);;
			d.setFree_content(free_content);
			d.setFree_pw(free_pw);
			// DB¿¬µ¿ 
			String db_pwd=FreeBoardDAO.freeboardGetPwd(d.getFree_no());
			boolean bCheck=false;
			if(db_pwd.equals(free_pw))
			{
				bCheck=true;
				FreeBoardDAO.freeboardUpdate(d);
			}
			else
			{
				bCheck=false;
			}
			req.setAttribute("bCheck", bCheck);
			req.setAttribute("no", strNo);
			req.setAttribute("page", strPage);
			return "yoSeksa/function/freeboard/freeboard_update_ok.jsp";
	   }
	 
	 @RequestMapping("reply_delete.sek")
	   public String reply_delete(HttpServletRequest req)
	   {
		 String reply_no=req.getParameter("reply_no");
			String board_no=req.getParameter("board_no");
			String page=req.getParameter("page");
			// DB
			ReplyDTO d=FreeBoardDAO.replyGetDepthRoot(Integer.parseInt(reply_no));
			if(d.getDepth()==0)
			{
				FreeBoardDAO.replyDelete(Integer.parseInt(reply_no));
			}
			else
			{
				FreeBoardDAO.replyMsgUpdate(Integer.parseInt(reply_no));
			}
			FreeBoardDAO.replyDepthDecrement(d.getRoot());
			
			req.setAttribute("no", board_no);
			req.setAttribute("page", page);
			return "yoSeksa/function/freeboard/reply_ok.jsp";
	   }
	 
	 
	 
	 @RequestMapping("reply_new_insert.sek")
	   public String reply_new_insert(HttpServletRequest req)throws IOException
	   {
		 	req.setCharacterEncoding("EUC-KR");
			String reply_content=req.getParameter("req_reply_content");
			String board_no=req.getParameter("board_no");
			String page=req.getParameter("page");
			HttpSession session=req.getSession();
			String nickname=(String)session.getAttribute("nickname");
			// DB¿¬µ¿
			ReplyDTO d=new ReplyDTO();
			d.setBoard_no(Integer.parseInt(board_no));
			d.setNickname(nickname);
			d.setReply_content(reply_content);
			FreeBoardDAO.replyNewInsert(d);
			req.setAttribute("no", board_no);
			req.setAttribute("page", page);
			return "yoSeksa/function/freeboard/reply_ok.jsp";
	   }
	 
	 @RequestMapping("reply_re_insert.sek")
	   public String reply_re_insert(HttpServletRequest req)throws IOException
	   {
		 	req.setCharacterEncoding("EUC-KR");
			String reply_content=req.getParameter("req_reply_content");
			String board_no=req.getParameter("board_no");
			String page=req.getParameter("page");
			String root=req.getParameter("pno");
			HttpSession session=req.getSession();
			/*String id=(String)session.getAttribute("id");*/
			String nickname=(String)session.getAttribute("nickname");
			// DB¿¬µ¿
			ReplyDTO d=new ReplyDTO();
			d.setBoard_no(Integer.parseInt(board_no));
			/*d.setId(id);*/
			d.setNickname(nickname);
			d.setReply_content(reply_content);
			//DB¿¬µ¿
			ReplyDTO prd=FreeBoardDAO.replyParentInfo(Integer.parseInt(root));
			FreeBoardDAO.replyStepIncrement(prd);
			d.setGroup_id(prd.getGroup_id());
			d.setGroup_step(prd.getGroup_step()+1);
			d.setGroup_tab(prd.getGroup_tab()+1);
			
			FreeBoardDAO.replyReInsert(d);
			FreeBoardDAO.replyDepthIncrement(Integer.parseInt(root));
			req.setAttribute("no", board_no);
			req.setAttribute("page", page);
			return "yoSeksa/fucntion/freeboard/reply_ok.jsp";
	   }
	 
	 @RequestMapping("reply_re_update.sek")
	   public String reply_re_update(HttpServletRequest req)throws IOException
	   {
		 	req.setCharacterEncoding("EUC-KR");
			String reply_content=req.getParameter("req_reply_content");
			String board_no=req.getParameter("board_no");
			String page=req.getParameter("page");
			String reply_no=req.getParameter("reply_no");
			// DB¿¬µ¿
			ReplyDTO d=new ReplyDTO();
			d.setReply_no(Integer.parseInt(reply_no));
			d.setReply_content(reply_content);
			//DB¿¬µ¿
			FreeBoardDAO.replyReUpdate(d);
			req.setAttribute("no", board_no);
			req.setAttribute("page", page);
			return "yoSeksa/function/freeboard/reply_ok.jsp";
	   }
	 

}
