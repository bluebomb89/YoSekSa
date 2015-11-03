package com.diarydao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.YoseksaModel;

public class DiarySearchResult implements YoseksaModel {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setAttribute("", "");
		
		
		return "yoSeksa/function/calendar/add_recipe_popup_search_result.jsp";
	}

}
