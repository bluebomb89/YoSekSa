<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table bgcolor="white" style="color:black">
		<tr>
			<td>recipe_no</td>
			<td>요리명</td>
		</tr>
			<c:forEach var="rdto" items="${recipe_search_list }">
		<tr>
			<td>${rdto.recipe_no }</td>
			<td>${rdto.recipe_sub }</td>
		</tr>
			</c:forEach>
	</table>
</body>
</html>