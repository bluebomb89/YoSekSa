<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	String keyword=request.getParameter("keyword");
	String bld=request.getParameter("bld");
	String date=request.getParameter("date");		
		/* out.println("<font color=white>팝업검색 야호</font>"); */
%>

<font color=white>

keyword : <%=keyword %><br>
bld : <%=bld %><br>
date : <%=date %>


</font>

</body>
</html>