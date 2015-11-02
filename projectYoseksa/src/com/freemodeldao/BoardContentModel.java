package com.freemodeldao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;
import com.freedao.*;
public class BoardContentModel implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String strNo=req.getParameter("no");
		String strPage=req.getParameter("page");
		ReplyBoardDTO d=ReplyBoardDAO.boardContentData(
				Integer.parseInt(strNo));
		List<ReplyDTO> list=
			ReplyBoardDAO.replyListData(Integer.parseInt(strNo));
		req.setAttribute("rlist", list);
		req.setAttribute("page", strPage);
		req.setAttribute("dto", d);
		req.setAttribute("title", "내용보기");
		req.setAttribute("jsp", "../yoSeksa/function/freeboard/board_content.jsp");
		return "yoSeksa/main/main.jsp";
	}

}
