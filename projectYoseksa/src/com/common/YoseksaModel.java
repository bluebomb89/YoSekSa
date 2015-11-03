package com.common;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface YoseksaModel {
	public String handlerRequest(HttpServletRequest req,HttpServletResponse res)
			throws Exception;
}

