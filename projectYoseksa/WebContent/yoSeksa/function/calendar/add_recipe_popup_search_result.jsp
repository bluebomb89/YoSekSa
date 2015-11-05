<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function ok(keyword)
{
	alert("야");
	//페이지 이동하여 DB처리한다
	/* location.replace("http://localhost:8080/projectYoseksa/diary_search_ok.sek?keyword="+keyword+"&bld="+bld+"&date="+date); */
}
</script>
<!-- <script type="text/javascript">
var xkeyword="";
$(function(){
	xkeyword=$('#keyword', parent.document).val();
	alert(xkeyword);
});
</script> -->
</head>
<body>
<font color=white>
	<div id="search_div">	
	총페이지 : ${recipe_search_totalpage }<br>	
	bld : ${bld }<br>
	date : ${date }<br>
			<table>
				<tr>
					<td>번호</td>
					<td>제목</td>
				</tr>
				<c:forEach var="rs" items="${recipe_search_list }">
				<tr>
					<td>${rs.recipe_no }</td>
					<td><a href="diary_search_ok.sek?reno=${rs.recipe_no }&resub=${rs.recipe_sub }&bld=${bld }&date=${date }">${rs.recipe_sub }</a></td>
				</tr>
				</c:forEach>
			</table>			
	</div>
</font>


</body>
</html>