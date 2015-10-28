package com.yoseksa;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.common.YoseksaModel;
public class YoseksaMain implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return "yoSeksa/function/main/main.jsp";
	}

}
