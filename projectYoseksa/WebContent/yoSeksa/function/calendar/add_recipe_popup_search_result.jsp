<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function ok()
{
	//페이지 이동하여 DB처리한다
	location.replace("../../function/calendar/add_recipe_popup_search_result_ok.jsp");
}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String keyword=request.getParameter("keyword");
	String bld=request.getParameter("bld");
	String date=request.getParameter("date");
%>

<font color=white>

keyword :<a href="#" onclick="ok()"> <%=keyword %></a><br>
bld : <%=bld %><br>
date : <%=date %>


</font>

</body>
</html>